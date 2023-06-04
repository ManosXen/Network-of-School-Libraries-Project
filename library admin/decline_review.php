<?php
if (isset($_GET['review'])) {
    try {
        $review = $_GET['review'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "UPDATE  review set review_status='declined' where review_id=$review";
        if (mysqli_query($conn, $query)) {
            session_start();
            $_SESSION['success_message'] = 'Review was declined succesfully';
            header("Location: " . $_SERVER['HTTP_REFERER'] );
            exit();
        } else {
            $error = "An error occurred while updating the review.";
            header("Location: " . $_SERVER['HTTP_REFERER'] . "?error=" . urlencode($error));
            exit();
        }
    } catch (Exception $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
