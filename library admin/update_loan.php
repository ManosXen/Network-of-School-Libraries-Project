<?php
if (isset($_GET['request_id']) and isset($_GET['status'])) {
    try {
        $requestID = $_GET['request_id'];
        $status = $_GET['status'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "UPDATE  loan set loan_status='$status' where request_id=$requestID ";
        if (mysqli_query($conn, $query)) {
            session_start();
            $_SESSION['success_message'] = 'Loan was '. $status .' succesfully';
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