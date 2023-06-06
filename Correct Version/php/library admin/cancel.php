<?php
if (isset($_GET['loan_id'])) {
    try {
        $loanID = $_GET['loan_id'];
        include 'db_connection.php';
        $conn = OpenCon();
        $query = "delete from loan where request_id=$loanID";
    if (mysqli_query($conn, $query)) {
        header("Location: my_loans.php");
    } 
    else {
        $error = "An error occurred while cancelling the loan.";
        header("Location: my_loans.php?error=" . urlencode($error));
        exit();
    }
} catch (Exception $e) {
echo "Error: " . $e->getMessage();
}
}
?>