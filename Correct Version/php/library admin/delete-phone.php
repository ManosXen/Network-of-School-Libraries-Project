<?php
if (isset($_GET['phone_number'])) {
    try {
        $phone_number = $_GET['phone_number'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "DELETE from user_phone where phone_number='$phone_number'";
    if (mysqli_query($conn, $query)) {
        header("Location:" . $_SERVER['HTTP_REFERER']);
    } 
    else {
        $error = "An error occurred while deleting the phone-number.";
        header("Location:" . $_SERVER['HTTP_REFERER']."?error=" . urlencode($error));
        exit();
    }
} catch (Exception $e) {
echo "Error: " . $e->getMessage();
}
}
?>