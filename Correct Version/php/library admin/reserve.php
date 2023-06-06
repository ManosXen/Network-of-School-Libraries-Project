<?php
session_start();
if (isset($_SESSION['user_id'])) {
    if (isset($_GET['ISBN'])) {
        try {
            $userID = $_SESSION['user_id'];
            include 'db_connection.php';
            $conn = OpenCon();
            $ISBN = $_GET['ISBN'];
            $queryadmin="SELECT user_id from users_with_phone_and_school    
                        where user_role='library admin' 
                        and school_id =
                        (select distinct school_id from users_with_phone_and_school where user_id=$userID)";
            $result=mysqli_query($conn,$queryadmin);
            $adminID=mysqli_fetch_row($result);
                $query = "INSERT INTO loan (request_date, loan_status, last_status_update, loan_date, return_date, user_id, ISBN, lib_admin_id)
                      VALUES (NOW(), 'pending', NOW(), NULL, NULL, $userID, '$ISBN',$adminID[0])";
            if (mysqli_query($conn, $query)) {
                header("Location: my_loans.php");
                exit();
            } else {
                $error = "An error occurred.";
                header("Location: my_loans.php?error=" . urlencode($error));
                exit();
            }
        } catch (Exception $e) {
            $error = "Error: " . $e->getMessage();
            header("Location: my_loans.php?error=" . urlencode($error));
            exit();
        }
    } else {
        $error = "ISBN not found.";
        header("Location: my_loans.php?error=" . urlencode($error));
        exit();
    }
} else {
    echo "User ID not found.";
}
?>
