<?php

include('../config/db_connection.php');
$conn=OpenCon();

if(!empty($_GET['acc'])){
    $acc = $_GET['acc'];
    $sql_acc = "UPDATE applications set request_status = 'accepted' where user_id = $acc;";
    $res_acc = mysqli_query($conn, $sql_acc);
    if($res_acc && mysqli_affected_rows($conn)>0) header("Location: lib_admin_appl.php?acc_suc=1");
    else header("Location: lib_admin_appl.php?acc_suc=0");
}

if(!empty($_GET['dec'])){
    $dec = $_GET['dec'];
    $sql_dec = "UPDATE applications set request_status = 'declined' where user_id = $dec;";
    $res_dec = mysqli_query($conn, $sql_dec);
    if($res_dec && mysqli_affected_rows($conn)>0) header("Location: lib_admin_appl.php?dec_suc=1");
    else header("Location: lib_admin_appl.php?del_suc=0");
}

?>