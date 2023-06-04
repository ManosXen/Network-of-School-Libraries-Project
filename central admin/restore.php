<?php

set_time_limit(0); // Disable the time limit
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "school_libraries";
$backupFile = $_POST['backup_file'];

if (file_exists($backupFile)) {
    // Establish a new database connection
    $conn = new mysqli($dbhost, $dbuser, $dbpass, $db);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Disable foreign key checks and set autocommit to off
    $conn->query("SET FOREIGN_KEY_CHECKS = 0");
    $conn->autocommit(false);

    // Drop tables (excluding views)
    $showTablesQuery = "SHOW TABLES";
    $result = $conn->query($showTablesQuery);
    while ($row = $result->fetch_row()) {
        $table = $row[0];
        $tableTypeQuery = "SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_NAME = '$table' AND TABLE_SCHEMA = '$db'";
        $tableTypeResult = $conn->query($tableTypeQuery);
        $tableTypeRow = $tableTypeResult->fetch_assoc();
        if ($tableTypeRow['TABLE_TYPE'] != 'VIEW') {
            $dropTableQuery = "DROP TABLE IF EXISTS $table";
            $conn->query($dropTableQuery);
        }
    }

    // Read the contents of the backup file
    $sqlScript = file_get_contents($backupFile);

    // Execute the SQL script
    if ($conn->multi_query($sqlScript)) {
        while ($conn->next_result()) {
            if (!$conn->more_results()) {
                break;
            }
        }

        // Commit the changes
        $conn->commit();

        // Enable foreign key checks and set autocommit back to on
        $conn->query("SET FOREIGN_KEY_CHECKS = 1");
        $conn->autocommit(true);

        $message = "Database restored successfully";
        header('Location: utilities.php?restore=1');
    } else {
        $message = "Database restore failed: " . $conn->error;
        echo $message;
        // header('Location: utilities.php?restore=0');
    }

    // Close the database connection
    $conn->close();
} else {
    $message = "Uh Oh! No backup file found in the backup directory!";
    echo $message;
}
?>

