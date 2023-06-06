<?php
if (isset($_GET['review'])) {
    try {
        $review = $_GET['review'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "DELETE FROM review WHERE review_id=$review";
        if (mysqli_query($conn, $query)) {
            session_start();
            $_SESSION['success_message'] = 'Review was deleted succesfully';
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
