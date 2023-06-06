<?php
if (isset($_GET['user_id']) and isset($_GET['status'])) {
    try {
        $user_id = $_GET['user_id'];
        $status = $_GET['status'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "UPDATE  users set banned='$status' where user_id=$user_id ";
        if (mysqli_query($conn, $query)) {
            session_start();
            if($status=='true'){
                $status='banned';
            }
            else{
                $status='unbanned';
            }
            $_SESSION['success_message'] = 'User was '. $status .' succesfully';
            header("Location: " . $_SERVER['HTTP_REFERER'] );
            exit();
        } else {
            $error = "An error occurred while updating the loan.";
            header("Location: " . $_SERVER['HTTP_REFERER'] . "?error=" . urlencode($error));
            exit();
        }
    } catch (Exception $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>