<?php


include('../config/db_connection.php');
include("header.php");
$conn = OpenCon();
session_start();
$id=$_SESSION['user_id'];

$sql = "SELECT user_first_name, user_last_name from users where user_id=$id;";
$result = mysqli_query($conn, $sql);
$res = mysqli_fetch_assoc($result);


?>


<!DOCTYPE html>
<html>
  <head>
    <style>
      h2 {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
    </style>
  </head>
  <body>
    <h2>Welcome <?php echo $res['user_first_name'] . ' ' . $res['user_last_name']; ?> . Use the menu above tο browse through the site.</h2>
  </body>
</html>
