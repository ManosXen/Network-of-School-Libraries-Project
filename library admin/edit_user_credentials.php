
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
    if (session_status() !== PHP_SESSION_ACTIVE) {
        session_start();
    }
    if (!empty($_POST['user_id'])) {
            $userID = $_POST['user_id'];
            if(empty($username)  || empty($first_name) || empty($last_name) || empty($birth_date) || empty($user_type) || empty($schoolID)){
                $error = "everything except phone number is required.";
            }
            elseif($user_type!='teacher' ||  $user_type!='student'){
                $error="Only teachers and students are accepted";
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
                        $_SESSION['success_message'] = 'User information were updated succesfully';  
                        $_SESSION['current_user']=$userID;
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
    else{
        $error = "Error in session go back to your homepage";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit User credentials</title>
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
    <?php
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }  
       if (isset($_SESSION['user_id'])) {
        if (isset($_POST['submit_user'])) {
            $userID = $_POST['other_user_id'];
            $_SESSION['other_user_id']=$userID ;
        } else {
            if(isset($_SESSION['current_user'])){
                $userID=$_SESSION['current_user'];
            }
            else{
                $userID = $_SESSION['user_id'];
            }
        }
        include_once  'db_connection.php';
        $conn = OpenCon();
        $schoolid = $_SESSION['school_id'];
        $query = "SELECT DISTINCT username,user_id FROM users_with_phone_and_school WHERE $schoolid=school_id ORDER BY username DESC";
        $result_users = mysqli_query($conn, $query);
        $query = "SELECT username FROM users WHERE user_id=$userID ORDER BY username desc";
        $result_my_user = mysqli_query($conn, $query);
        $user_username = mysqli_fetch_assoc($result_my_user);
        echo '<div class="form-group" styke="margin-bottom:20px">';
        echo '<label for="other_user_id">Choose User:</label>';
        echo '<form action="' . $_SERVER['PHP_SELF'] . '" method="POST" class="form-inline">';
        echo '<select name="other_user_id" id="other_user_id" class="form-control">';
        while ($row = mysqli_fetch_assoc($result_users)) {
            $optionUserID = $row['user_id'];
            $username = $row['username'];
            $selected = ($optionUserID == $userID) ? 'selected' : '';
            echo "<option value='$optionUserID' $selected>$username</option>";
        }
        echo '</select>';
        echo '<button type="submit_user" class="btn btn-primary ml-2" name="submit_user" value="Submit">Submit</button>';
        echo '</form>';
        echo '</div>';
        echo '<h3 style="margin-top: 5px;text-align:center;margin-bottom:620px; ">current user: ' . $user_username['username'] . ' </h3>';
    ?>
    
    <div class="login-box" style="margin-top:120px">
        <form class="login-form" action="" method="post" >
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <h2>Edit User Credentials</h2>
        <?php
                if (isset($_SESSION['success_message'])) {
                    echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
                    unset($_SESSION['success_message']);
               }
            $query = "SELECT * FROM users_with_phone_and_school WHERE user_id=$userID";
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                echo "<select name='school' id='school' required>";
                $schools = "SELECT school_id, school_name FROM library where school_id=$schoolid";
                $result1 = mysqli_query($conn, $schools);
                while ($row1 = mysqli_fetch_assoc($result1)) {
                    $school = $row1['school_name'];
                    $schoolID = $row1['school_id'];
                    $selected = ($school == $row['school_name']) ? 'selected' : '';
                    echo "<option value=$schoolID $selected>$school</option>";
                }
                echo "</select>";
            } else {
                $error = "User information could not be found";
            }
        ?>
        <label for="name">First Name:</label>
        <input type="text" id="name" name="first_name" value="<?php echo $row['user_first_name']; ?>" required />

        <label for="last_name">Last Name:</label>
        <input type="text" name="last_name" value="<?php echo $row['user_last_name']; ?>" required/>

        <label for="birth-date">Birth Date:</label>
        <input type="date" id="birth-date" name="birth-date" value="<?php echo $row['bday']; ?>" required/>

        <label for="user_type">User Type:</label>
        <input type="text" name="user_type" value="<?php echo $row['user_role']; ?>" required/>

        <label for="Username">Username:</label>
        <input type="text" name="Username" value="<?php echo $row['username']; ?>" required/>

        <input type="hidden" name="user_id" value="<?php echo $userID; ?>">

        <button class="login-button" name="submit_creds">change credentials</button>
        </form>
        <?php
            }
            else{
                $error = "Error in session login again";
                exit();
            }
        ?>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>