<?php
session_start(); // Start the session

// Check if the user is logged in
if (isset($_SESSION['user_id'])) {
    // Unset all of the session variables
    $_SESSION = array();

    // Destroy the session
    session_destroy();

    // Redirect the user to the desired page
    header("Location: ../login.php");
    exit();
} else {
    // If the user is not logged in, redirect them to the login page
    header("Location: ../login.php");
    exit();
}
?>
