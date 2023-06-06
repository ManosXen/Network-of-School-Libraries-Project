<?php
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
    $oldschool=$_SESSION['old_school'];
    if($oldschool!=$schoolID){
        $user_type='teacher';
    }
    if (session_status() !== PHP_SESSION_ACTIVE) {
        session_start();
    }
    $userID = $_SESSION['user_id'];
    if(empty($username)  || empty($first_name) || empty($last_name) || empty($birth_date) || empty($user_type) || empty($schoolID)){
        $error = "everything except phone number is required.";
    }           
     elseif($user_type!='teacher' &&  $user_type!='student' && $user_type!='library admin'){
        $error="Only teachers,students and admins are accepted";
    }
    elseif(strlen($username)<6 || strlen($username)<6){
        $error="Username and password must be at least 6 charachters";
    }
    elseif(strlen($first_name)<2 || strlen($last_name)<2){
        $error="First name and Last name must be at least 2 charachters long";
    }
    else{
        include_once  'db_connection.php';
        $conn = OpenCon();
        try{
            $query1 = "UPDATE users set username='$username', user_first_name='$first_name', user_last_name='$last_name', bday='$birth_date', user_role='$user_type' where user_id=$userID "; 
            if(mysqli_query($conn, $query1)){
                $query3="UPDATE  school_user set  school_id=$schoolID WHERE user_id=$userID;";
                if(!mysqli_query($conn, $query3)){
                    $error="Error in school update";
                }
                if($oldschool!=$schoolID){
                    header('Location: ../teacher/home.php');
                    exit();
                }  
                header("Location: my_credentials.php");
                exit();
            }
            else{
                $error = "Error while creating updating records: <br>" . mysqli_error($conn);
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
    <title>Edit credentials</title>
    <link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
<header>
		<h1>Welcome to School libraries</h1>
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
		<nav class="navbar">
		    <img src="logo.png" alt="Logo" class="logo">
			<ul>
                <li><a href="home.php">Home</a></li>
				<li><a href="my_loans.php">My loans</a></li>
				<li><a href="my_credentials.php">My credentials</a></li>
                <li><a href="reviews.php">Book reviews</a></li>
                <li><a href="my_reviews.php">My reviews</a></li>
                <li><a href="change_password.php">Change password</a></li>
                <li><a href="edit-phone.php">Edit phone</a></li>
                <li><a href="school_loans.php">All loans</a></li>
                <li><a href="all_users.php">All users</a></li>
                <li><a href="create_account.php">Create account</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
		</nav>
	</header>
    <div class="login-box">
        <form class="login-form" action="" method="post">
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <h2>Edit credentials</h2>
        <label for="school">Choose School:</label>
        <?php
            if (session_status() !== PHP_SESSION_ACTIVE) {
                session_start();
            }   
        if (isset($_SESSION['user_id'])) {
            $userID = $_SESSION['user_id'];
            include_once  'db_connection.php';
            $conn = OpenCon();
            $query = "SELECT * FROM users_with_phone_and_school WHERE user_id=$userID";
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                echo "<select name='school' id='school' required>";
                $schools = "SELECT school_id, school_name FROM library";
                $result1 = mysqli_query($conn, $schools);
                while ($row1 = mysqli_fetch_assoc($result1)) {
                    $school = $row1['school_name'];
                    $schoolID = $row1['school_id'];
                    $selected = ($school == $row['school_name']) ? 'selected' : '';
                    if($selected!=''){
                        $_SESSION['old_school']=$schoolID;
                    }
                    echo "<option value=$schoolID $selected>$school</option>";
                }
                echo "</select>";
            } else {
                $error = "User information could not be found";
            }
        } else {  
            $error = "Error in session login again";
        }
        ?>
        <input type="text" id="name" name="first_name" value="<?php echo $row['user_first_name']; ?>" required />
        <input type="text" name="last_name" value="<?php echo $row['user_last_name']; ?>" required/>
        <input type="date" id="birth-date" name="birth-date" value="<?php echo $row['bday']; ?>" required/>
        <input type="text" name="user_type" value="<?php echo $row['user_role']; ?>" required/>
        <input type="text" name="Username" value="<?php echo $row['username']; ?>" required/>
        <button class="login-button" name="submit_creds">change credentials</button>
        </form>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>