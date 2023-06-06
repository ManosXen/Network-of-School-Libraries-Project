<?php
if (isset($_GET['user_id'])) {
    try {
        $user_id = $_GET['user_id'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "DELETE FROM users WHERE user_id=$user_id";
        if (mysqli_query($conn, $query)) {
            session_start();
            $_SESSION['success_message'] = 'User was deleted succesfully';
            header("Location: " . $_SERVER['HTTP_REFERER'] );
            exit();
        } else {
            $error = "An error occurred while deleting the review.";
            header("Location: " . $_SERVER['HTTP_REFERER'] . "?error=" . urlencode($error));
            exit();
        }
    } catch (Exception $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
