<?php

include('../config/db_connection.php');
$conn = OpenCon();

$id = $_GET['id'];

$sql = "UPDATE applications set request_status='canceled' where application_id = $id;";
$result=mysqli_query($conn, $sql);

header('Location: lib_admin_appl.php?suc=3');