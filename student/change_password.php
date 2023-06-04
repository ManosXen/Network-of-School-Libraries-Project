<?php
session_start();
$password='';
$password2='';
$error = '';
$success = '';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $password = $_POST["password"];
    $password2 = $_POST["password2"];
    if (empty($password2) || empty($password)) {
        $error = "Both fields are required";
    } elseif ($password2 != $password) {
        $error = "Both fields should have the same input";
    } else {
        $userID = $_SESSION['user_id'];
        include("../config/db_connection.php");
        $conn = OpenCon();
    
        try {
            $query = "UPDATE users SET user_password='$password' WHERE user_id=$userID";
        
            if (mysqli_query($conn, $query)) {
                $success = "Password changed successfully";
            } else {
                $error = "Invalid password";
            }
        } catch (Exception $e) {
            $error= "Password must be at least 6 charachters" ;
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>School libraries</title>
    <link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
    <header>
        <h1>Welcome to School libraries</h1>
        <nav class="navbar">
            <img src="logo.png" alt="Logo" class="logo">
            <ul>
                <li><a href="home.php">Home</a></li>
                <li><a href="my_loans.php">My loans</a></li>
                <li><a href="my_credentials.php">My credentials</a></li>
                <li><a href="reviews.php">Book reviews</a></li>
                <li><a href="my_reviews.php">My reviews</a></li>
                <li><a href="change_password.php">Change password</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>
    </header>
    <div class="login-box">
        <div class="form">
		<?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <?php if (!empty($success)) { ?>
            <div class="success-message">
                <?php echo $success; ?>
            </div>
        <?php } ?>
            <h1>Change Password</h1>
            <form class="login-form" method="POST">
                <input type="password" name="password" placeholder="New Password" required/>
                <input type="password" name="password2" placeholder="Re-type New Password" required/>
                <button name="submit" class="login-button">Change Password</button>
            </form>
        </div>
    </div>
</body>
</html>
