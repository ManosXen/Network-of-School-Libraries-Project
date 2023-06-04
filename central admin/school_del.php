<?php

include('../config/db_connection.php');
$conn=OpenCon();
$school=$_GET['id'];

$sql= "DELETE from library where school_id='$school';";
$result = mysqli_query($conn, $sql);

if (!$result) {
    header("Location: schools.php?del-suc=0");
} else header("Location: schools.php?del-suc=1");

?>