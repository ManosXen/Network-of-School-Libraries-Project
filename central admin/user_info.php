<?php

include('../config/db_connection.php');
include('header.php');

session_start();

if(isset($_POST['edit'])){
    header('Location: user_info_edit');
}

$conn = OpenCon();
$user_id = $_SESSION['user_id']; // Store the session variable in a separate variable
$sql = "SELECT u.user_first_name, u.user_last_name, u.bday, u.username FROM users u WHERE u.user_id = {$user_id};";
$sqlph = "SELECT phone_number from user_phone where user_id = $user_id";
$result = mysqli_query($conn, $sql);
$resultph=mysqli_query($conn, $sqlph);
$res = mysqli_fetch_assoc($result);

if(!empty($_GET['cancel'])){
    
    $cancel='Edit canceled';
}else{
    $cancel="";
}

?>

<div class="err-msg"><?php echo $cancel?></div>


<!DOCTYPE html>
<html>
    <head>
        <title>User Info</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="login-box">
            <h1>See your profile information below</h1>
            <h3><u>First Name:</u> <span style = "font-weight: normal;"><?php echo  $res['user_first_name'];?></span></h3>
            <h3><u>Last Name:</u> <span style = "font-weight: normal;"><?php echo $res['user_last_name'];?></span></h3>
            <h3><u>Birthday:</u> <span style = "font-weight: normal;"><?php echo $res['bday'];?></span></h3>
            <h3><u>Username:</u> <span style = "font-weight: normal;"><?php echo $res['username'];?></span></h3>            <?php
            $i=1;
            while($resph=mysqli_fetch_assoc($resultph)){
                ?> <h3><u>Phone Number <?php echo $i;?>:</u> <span style = "font-weight: normal;"><?php echo $resph['phone_number'];?></span></h4>
                <?php $i++;
            }
            ?>
            <form action="user_info_edit.php" method="post">
                <button type="submit" name="edit" value="edit" class="login-button">Edit</button>
        </div>
    </body>
</html>
