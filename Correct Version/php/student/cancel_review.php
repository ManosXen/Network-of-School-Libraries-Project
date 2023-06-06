<?php
if (isset($_GET['review'])) {
    try {
        $review = $_GET['review'];
        include("../config/db_connection.php");
        $conn = OpenCon();
        $query = "delete from review where review_id=$review";
    if (mysqli_query($conn, $query)) {
        header("Location: my_reviews.php");
    } 
    else {
        $error = "An error occurred while deleting the review.";
        header("Location: my_reviews.php?error=" . urlencode($error));
        exit();
    }
} catch (Exception $e) {
echo "Error: " . $e->getMessage();
}
}
?>