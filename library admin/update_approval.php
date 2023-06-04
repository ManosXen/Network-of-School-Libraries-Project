<?php
ob_start();
ini_set('display_errors', 1);
error_reporting(E_ALL);
if (isset($_GET['user_id'])) {
  try {
    $user_id = $_GET['user_id'];
    include 'db_connection.php';
    $conn = OpenCon();
    $query = "UPDATE users set approved='yes' where user_id=$user_id";
    if (mysqli_query($conn, $query)) {
      session_start();
      $_SESSION['success_message'] = 'User was approved succesfully';
      header("Location: user_information.php?user_id=$user_id");
    } else {
      $error = "An error occurred while updating the review.";
      header("Location: " . $_SERVER['HTTP_REFERER'] . "?error=" . urlencode($error));
      exit();
    }
  } catch (Exception $e) {
    echo "Error: " . $e->getMessage();
  }
}

ob_end_flush();
?>
