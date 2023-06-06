<?php
session_start();
$username='';
$password='';
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];
	if (empty($username) || empty($password)) {
        $error = "Username and password are required.";
    }
	else{
   		 include 'config/db_connection.php';
   		 $conn = OpenCon();
    
   		 try {
       		 $query = "SELECT * FROM users 
                 	      WHERE username='$username' AND user_password='$password' ;";
       		 $result = mysqli_query($conn, $query);
        
        	if (mysqli_num_rows($result) === 1) {
            	$row = mysqli_fetch_assoc($result);
            
            	if ($row['username'] === $username && $row['user_password'] === $password) {
               		 $_SESSION['user_id'] = $row['user_id'];
                    $role=$row['user_role'];
                    header("Location: $role/home.php");
                }else $error = "Invalid credentials.";
            }else $error = "Invalid credentials.";
    	} catch (Exception $e) {
        echo "Error: " . $e->getMessage();
    	}
	}
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="login-box">
        <img src="logo.png" class="avatar">
        <h1>Login Here</h1>
		<?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <form action="" method="POST" >
            <label>Username</label>
            <input type="text" name="username" placeholder="Enter Username" value = "<?php echo $username; ?>">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter Password" value = "<?php echo $password; ?>">
            <button type="submit" name="submit" value="Login" class="login-button">Login </button>
            <p>Don't have an Account? <a href="create_account.php">Sign up!</a></p>
            <a href="forgot_password.php" class="forgot">Forgot Password</a>
        </form>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>