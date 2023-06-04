<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);
$userID = '';
$ISBN = '';
if(isset($_POST['submit_creds'])){
    $ISBN = $_POST['book'];
    $userID = $_POST['user'];
    if(empty($userID) || empty($ISBN)){
        $error = "Everything is required.";
    } else {
        include 'db_connection.php';
        $conn = OpenCon();
        
        try {
            
            $query1 = "SELECT user_id FROM elegible_for_loan WHERE user_id=$userID"; 
            $result = mysqli_query($conn, $query1);
            
            if(mysqli_num_rows($result) > 0){
                $query2 = "SELECT avail_copies FROM book_owner WHERE ISBN='$ISBN'"; 
                $result = mysqli_query($conn, $query2);
                $copies = mysqli_fetch_assoc($result);
                
                if($copies['avail_copies'] == 0){
                    throw new Exception("Book is not available");
                }
                
                $query3 = "INSERT INTO loan(loan_status, user_id, ISBN) VALUES ('loaned', $userID, '$ISBN')"; 
                $result = mysqli_query($conn, $query3);
                
                $_SESSION['success_message'] = 'Book was loaned successfully';  
                header('Location: ' . $_SERVER['PHP_SELF']);
                exit();
            } else {
                throw new Exception("User is not eligible for a loan");
            }
        } catch (Exception $e) {
            $error = $e->getMessage();
            $_SESSION['error_message'] = $error;
            header('Location: ' . $_SERVER['PHP_SELF']);
            exit();
        }
    }
    $_SESSION['selected_user'] = $userID;
    $_SESSION['selected_book'] = $ISBN;
}
else {
if (isset($_SESSION['selected_user'])) {
    $userID = $_SESSION['selected_user'];
}
if (isset($_SESSION['selected_book'])) {
    $ISBN = $_SESSION['selected_book'];
}
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Loan book</title>
    <link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
<header>
    <h1>Welcome to School libraries</h1>
    <nav class="navbar">
        <img src="logo.png" alt="Logo" class="logo">
        <ul>
        <li><a href="home.php">Home</a></li>
				<li><a href="edit_user_credentials.php">Edit user credentials</a></li>
                <li><a href="edit_user_phone.php">Edit user phone</a></li>
                <li><a href="change_user_password.php">Change user password</a></li>
                <li><a href="edit_book.php">Edit books</a></li>
                <li><a href="add_book.php">Add book</a></li>
                <li><a href="reviews.php">Book reviews</a></li>
                <li><a href="average_rating.php">Average rating</a></li>
                <li><a href="school_loans.php">All loans</a></li>
                <li><a href="overdue.php">Overdue loans</a></li>
                <li><a href="all_users.php">All users</a></li>
                <li><a href="create_account.php">Create account</a></li>
                <li><a href="user_reservation.php">User reservation</a></li>
				<li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>
</header>
<div class="login-box" style="margin-top: 40px;">
    <form class="login-form" action="" method="post">
        <h2>Loan book</h2>
        
        <?php if (isset($_SESSION['error_message'])) { ?>
            <div class="error-message">
                <?php echo $_SESSION['error_message']; ?>
            </div>
            <?php unset($_SESSION['error_message']); ?>
        <?php } ?>
        
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        
        <?php   
        
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }  
        
        if (isset($_SESSION['success_message'])) {
            echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
            unset($_SESSION['success_message']);
        }
        
        if (isset($_SESSION['school_id'])) {
            $schoolID = $_SESSION['school_id'];
        } else {
            $error = "Error in creating the session. Please log out and log in again.";
        }
        ?>
        
        <label for="user">Choose User:</label>
        <select name="user" id="user" required>
            <?php
            include_once 'db_connection.php';
            $conn = OpenCon();
            $usernameQuery = "SELECT username, user_id FROM users_with_phone_and_school WHERE school_id=$schoolID order by username";
            $result = mysqli_query($conn, $usernameQuery);
            
            while ($row = mysqli_fetch_assoc($result)) {
                $username = $row['username'];
                $userIDOption  = $row['user_id'];
                $selected = $userIDOption == $userID ? 'selected' : '';
                echo "<option value='$userIDOption' $selected>$username</option>";
            }
            ?>
        </select>
        
        <label for="book">Choose Book:</label>
        <select name="book" id="book" required>
            <?php
            $bookQuery = "SELECT title, ISBN FROM book order by title";
            $result = mysqli_query($conn, $bookQuery);
            
            while ($row = mysqli_fetch_assoc($result)) {
                $title = $row['title'];
                $ISBNOption = $row['ISBN'];
                $selected = $ISBNOption == $ISBN ? 'selected' : '';
                echo "<option value='$ISBNOption' $selected>$title</option>";
            }
            ?>
        </select>
        
        <button class="login-button" name="submit_creds">Loan</button>
    </form>
</div>
<footer id="site-footer">
    <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
</footer>
</body>
</html>
