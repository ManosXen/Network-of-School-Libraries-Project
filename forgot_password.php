
<?php
session_start();
include 'config/db_connection.php';
if(isset($_POST['submit_creds'])){
    if(empty($_POST["first_name"])){
        die("name is required");
    }
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $birth_date = $_POST['birth-date'];
    $user_type = $_POST['user_type'];
    $username = $_POST['Username'];
    $schoolID = $_POST['school'];
    if (session_status() !== PHP_SESSION_ACTIVE) {
        session_start();
    }
            if(empty($username)  || empty($first_name) || empty($last_name) || empty($birth_date) || empty($user_type) || empty($schoolID)){
                $error = "everything except phone number is required.";
            }
            elseif($user_type!='teacher' and  $user_type!='student' and $user_type!='library admin'){
                $error="Only teachers,studends and admins are accepted";
            }
            elseif(strlen($username)<6 || strlen($username)<6){
                $error="Username and password must be at least 6 charachters";
            }
            elseif(strlen($first_name)<2 || strlen($last_name)<2){
                $error="First name and Last name must be at least 2 charachters long";
            }
            else{
                $conn = OpenCon();
                try{
                    $query1 = "SELECT user_id FROM  users_with_phone_and_school WHERE username='$username'and user_first_name='$first_name'and user_last_name='$last_name'and bday='$birth_date'and user_role='$user_type' and school_id=$schoolID  "; 
                    $result=mysqli_query($conn, $query1);
                    if(mysqli_num_rows($result)>0){
                        $userID=mysqli_fetch_row($result);
                        $_SESSION['success_message'] = 'You can now change your password';  
                        $_SESSION['user_id']=$userID[0];
                        header('Location: change_password.php');
                    }
                    else{
                        $_SESSION['error_message'] = 'Your information does not match any user information '; 
                        header('Location: ' . $_SERVER['PHP_SELF']);
                        exit();
                    }
                }   
                catch (Exception $e) {
                if (mysqli_errno($conn) == 1062) {
                    $error = "This username already exists.";
                } else { 
                    $error= "Invalid credentials";
                    echo "Error: " . $e->getMessage();
                 }
                }
            }
}
?>


<!DOCTYPE html>
<html>
<head>
    <title>Forgot password</title>
    <link rel="stylesheet" type="text/css" href="teacher/styling.css">
</head>
<body>
    <div class="login-box">
        <img src="logo.png" class="avatar">
        <h1>Insert your info </h1>
        <?php	if (isset($_SESSION['error_message'])) {
					$error_message = $_SESSION['error_message'];
					echo '<p class="error-message">' . $error_message . '</p>';
					unset($_SESSION['error_message']); 
				} ?>
			<?php
				if (isset($_SESSION['success_message'])) {
					$success_message = $_SESSION['success_message'];
					echo '<p class="success-message">' . $success_message . '</p>';
					unset($_SESSION['success_message']); 
				}
				?>
		<?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <form action="" method="POST" >
        <label for="school">Choose School:</label>
            <select name="school" id="school" required>
            <option value="">Select School</option>
            <?php
                $conn = OpenCon();
                $schools = "SELECT school_id, school_name FROM library";
                $result = mysqli_query($conn, $schools);
                while ($row = mysqli_fetch_assoc($result)) {
                    $school = $row['school_name'];
                    $schoolID=$row['school_id'];
                    echo "<option value=$schoolID>$school</option>";
                }
            ?>
        </select>
        <label for="name">First Name:</label>
        <input type="text" id="name" name="first_name" placeholder="First name" required />

        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name" placeholder="Last name" required/>

        <label for="birth-date">Birth Date:</label>
        <input type="date" id="birth-date" name="birth-date" placeholder="Birth date" required/>

        <label for="user_type">User Type:</label>
        <input type="text" name="user_type" placeholder="User type" required/>

        <label for="Username">Username:</label>
        <input type="text" name="Username" placeholder="Username" required/>

        <button class="login-button" name="submit_creds">Submit credentials</button>

        </form>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>