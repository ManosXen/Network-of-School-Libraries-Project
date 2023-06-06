<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$username = 'root';
$password = '';
$database = 'school_libraries';

$conn = new mysqli($host, $username, $password, $database);

$tables = array();
$sql = "SHOW TABLES";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}
$sqlScript = "";
foreach ($tables as $table) {
    // Check if the table is not a view
    $query = "SELECT TABLE_TYPE FROM information_schema.TABLES WHERE TABLE_NAME = '$table' AND TABLE_SCHEMA = '$database'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    if ($row['TABLE_TYPE'] !== 'VIEW') {
        $query = "SHOW CREATE TABLE $table";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        $sqlScript .= "\n\n" . $row[1] . ";\n\n";
        $query = "SELECT * FROM $table";
        $result = mysqli_query($conn, $query);
        $columnCount = mysqli_num_fields($result);
        for ($i = 0; $i < $columnCount; $i++) {
            while ($row = mysqli_fetch_row($result)) {
                $sqlScript .= "INSERT INTO $table VALUES(";
                for ($j = 0; $j < $columnCount; $j++) {
                    $row[$j] = $row[$j];
                    if (isset($row[$j])) {
                        $sqlScript .= '"' . mysqli_real_escape_string($conn, $row[$j]) . '"';
                    } else {
                        $sqlScript .= '""';
                    }
                    if ($j < ($columnCount - 1)) {
                        $sqlScript .= ',';
                    }
                }
                $sqlScript .= ");\n";
            }
        }
        $sqlScript .= "\n";
    }
}


$backupDirectory = '../backups/';

$backupFileName = 'backup_' . date('Y-m-d_His') . '.sql';

$backupFilePath = $backupDirectory . $backupFileName;

$backupFile = fopen($backupFilePath, 'w');
if ($backupFile) {
    fwrite($backupFile, $sqlScript);
    fclose($backupFile);
    echo "Database backup created successfully. Backup file: " . $backupFilePath;
    header('Location: utilities.php?backup=1');
} else {
    echo "Error creating database backup.";
    header('utilities.php?backup=0');
}

$conn->close();

?>
