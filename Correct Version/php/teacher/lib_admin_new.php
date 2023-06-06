<?php

include('../config/db_connection.php');
$conn = OpenCon();

$id = $_GET['id'];
echo $id;

$sql = "SELECT request_status, last_status_update from applications where user_id = $id and (request_status = 'rejected' or request_status = 'canceled' or request_status = 'declined' or request_status = 'pending') ORDER BY last_status_update DESC; ";
$result = mysqli_query($conn, $sql);

if(!$result){
    echo mysqli_error($conn);
}

if(mysqli_num_rows($result)==0){
    $sql = "INSERT INTO applications (user_id, request, request_status) VALUES ($id, 'library admin', 'pending')";
    $result = mysqli_query($conn, $sql);
    header('Location: lib_admin_appl.php?suc=1');
}

$res = mysqli_fetch_assoc($result);

if($res['request_status']=='pending'){
    header('Location: lib_admin_appl.php?suc=2');
}

$resDate = $res['date'];

$currentDate = new DateTime();
$resDateTime = new DateTime($resDate);

$resDateTime->add(new DateInterval('P30D'));

if ($currentDate > $resDateTime) {
    $sql = "INSERT INTO applications (user_id, request, request_status) VALUES ($id, 'library admin', 'pending')";
    $result = mysqli_query($conn, $sql);
    header('Location: lib_admin_appl.php?suc=1');
} else {
    // Less than 30 days have passed
    header('Location: lib_admin_appl.php?suc=0');
}


?>