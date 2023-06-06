<?php

include('header.php');
include('../config//db_connection.php');
$conn = OpenCon();

$backup_directory="../backups/";
$backup_files = array_diff(scandir($backup_directory), array('..', '.')); 

$backup_suc='';
$backup_fail='';

if(!empty($_GET['backup'])){
    $backup_suc= $_GET['backup'];
    if($backup_suc) $backup_suc='Backup created successfully!';
    else $backup_fail='Backup creation failed!';
}

$restore_suc='';
$restore_fail='';

if(!empty($_GET['restore'])){
    $restore_suc= $_GET['restore'];
    if($restore_suc) $restore_suc='Restoration done successfully!';
    else $restore_fail='Restoration failed!';
}

$del_suc='';
$del_fail='';

if(isset($_POST['submit'])){
    $filename = $_POST['delete_backup_file'];

    if (file_exists($filename)) {
        if (unlink($filename)) {
            header('Location:utilities.php?del_suc=1');
        } else {
            header('Location:utilities.php?del_suc=0'); 
        }
    } else {
        header('Location:utilities.php?del_suc=2');
        
    }
}

if(!empty($_GET['del_suc'])){
    $del=$_GET['del_suc'];
    if($del==1) $del_suc="File deleted successfully.";
    else if($del==2) $del_fail = "File does not exist.";
    else $del_fail = "Error deleting the file.";
}

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Utilities</title>
        <script>
            function confirmRestore() {
                var confirmation = confirm("Are you sure you want to restore the database? This will replace the current data.");
                if (confirmation) {
                    return true; // User clicked "Agree"
                } else {
                    return false; // User clicked "Decline" or closed the dialog
                }
            }

            function confirmDelete() {
                var confirmation = confirm("Are you sure you want to delete the backup file?");
                if (confirmation) {
                    return true; // User clicked "Agree"
                } else {
                    return false; // User clicked "Decline" or closed the dialog
                }
            }
        </script>
    </head>
    <body>
        <h1 style="text-align:center;">Utilities</h1>
        <div class="suc-msg"><?php echo $backup_suc?></div>
        <div class="suc-msg"><?php echo $restore_suc?></div>

        <div class="err-msg"><?php echo $backup_fail?></div>
        <div class="err-msg"><?php echo $restore_fail?></div>

        <div class="suc-msg"><?php echo $del_suc?></div>
        <div class="err-msg"><?php echo $del_fail?></div>

        <h2>Backup</h2>
        <p>Click the following button to do a backup for the current state of the database.</p>
        <a href="backup.php"><button type="submit" class="inline-button">Backup</button></a>
        <p>==========================</p>
        <h2>Restore</h2>
        <p>The following dropdown list contains the dates from all the available backup files. Select the one you desire to roll back to.</p>
        <form action="restore.php" method="POST" onsubmit="return confirmRestore();">
            <select id="filepath" name="backup_file">
                <?php
                foreach($backup_files as $backup_file) {
                    $backup_file_path = $backup_directory . $backup_file;
                    $timestamp = DateTime::createFromFormat('Y-m-d_His', substr($backup_file, 7, -4));
                    $backup_timestamp = $timestamp->format('Y-m-d H:i:s');
                    ?>
                    <option value="<?php echo $backup_file_path; ?>"><?php echo $backup_timestamp; ?></option>
                    <?php
                }
                ?> 
            </select>
            <button type="submit" class="inline-button">Restore</button>
        </form>
        <p>==========================</p>
        <h2>Delete Backups</h2>
        <p>The following dropdown list contains the dates from all the available backup files. Select the one you desire to delete. Warning! Deleted backup files cannot be recovered!.</p>
        <form action="utilities.php" method="POST" onsubmit="return confirmDelete();">
            <select id="filepath" name="delete_backup_file">
                <?php
                foreach($backup_files as $backup_file) {
                    $backup_file_path = $backup_directory . $backup_file;
                    $timestamp = DateTime::createFromFormat('Y-m-d_His', substr($backup_file, 7, -4));
                    $backup_timestamp = $timestamp->format('Y-m-d H:i:s');
                    ?>
                    <option value="<?php echo $backup_file_path; ?>"><?php echo $backup_timestamp; ?></option>
                    <?php
                }
                ?> 
            </select>
            <button type="submit" name="submit" class="inline-button">Delete backup file</button>
        </form>
    </body>
</html>
