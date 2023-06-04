<?php
if (isset($_GET['phone_number'])) {
    try {
        $phone_number = $_GET['phone_number'];
        include("../config/db_connection.php");
        $conn = OpenCon();
        $query = "DELETE from user_phone where phone_number='$phone_number'";
    if (mysqli_query($conn, $query)) {
        header("Location: edit-phone.php");
    } 
    else {
        $error = "An error occurred while deleting the phone-number.";
        header("Location: edit-phone.php?error=" . urlencode($error));
        exit();
    }
} catch (Exception $e) {
echo "Error: " . $e->getMessage();
}
}
?>