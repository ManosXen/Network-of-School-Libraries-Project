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
    $password = $_POST['Password'];
    $schoolID = $_POST['school'];
    if(empty($username) || empty($password) || empty($first_name) || empty($last_name) || empty($birth_date) || empty($user_type) || empty($schoolID)){
        $error = "everything except phone number is required.";
    }
    else{
        include 'db_connection.php';
        $conn = OpenCon();
        try{
            $query1 = "INSERT INTO users(user_first_name, user_last_name, bday, user_role, username, user_password)
                       VALUES ('$first_name', '$last_name', '$birth_date', '$user_type', '$username', '$password');"; 
            if(mysqli_query($conn, $query1)){
                if(isset($_POST['phone-number'])){
                    $phone_number = $_POST['phone-number'];
                     $query2 = "INSERT INTO user_phone(phone_number, user_id)
                              SELECT '$phone_number', user_id
                               FROM users
                             WHERE username = '$username';";
                    if(!mysqli_query($conn, $query2)){
                        $error="Error in phone isertion";
                    }     
                }
                $query3="INSERT INTO school_user(school_id,user_id) SELECT '$schoolID', user_id
                                                                    FROM users
                                                                    WHERE username = '$username';";
                if(!mysqli_query($conn, $query3)){
                    $error="Error in school isertion";
                }
                session_start();  
                $_SESSION['success_message'] = 'Account was created successfully.';  
            }
            else{
                $error = "Error while creating record: <br>" . mysqli_error($conn);
            }
        }   
        catch (Exception $e) {
               $error= "Invalid credentials";
            }
    }
}
?>




<!DOCTYPE html>
<html>
<head>
    <title>Create account</title>
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
    <div class="login-box" style="margin-top:10%;">
        <form class="login-form" action="" method="post"   >
            <h2>Create account</h2>
            <?php if (!empty($error)) { ?>
                <div class="error-message">
                <?php echo $error; ?>
            </div>
            <?php } 
            
                if (session_status() !== PHP_SESSION_ACTIVE) {
                    session_start();
               }  
                if (isset($_SESSION['success_message'])) {
                    echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
                    unset($_SESSION['success_message']);
                }
                if (isset($_SESSION['school_id'])) {
                    $schoolID = $_SESSION['school_id'];
                }
                else{
                    $error="error in the creation os the session log out";
                }
            ?>
            <label for="school">Choose School:</label>
            <select name="school" id="school" required>
            <?php
                include_once 'db_connection.php';
                $conn = OpenCon();
                $schools = "SELECT Distinct school_id, school_name FROM users_with_phone_and_school where school_id=$schoolID";
                $result = mysqli_query($conn, $schools);
                while ($row = mysqli_fetch_assoc($result)) {
                    $school = $row['school_name'];
                    $schoolID=$row['school_id'];
                    echo "<option value=$schoolID>$school</option>";
                }
            ?>
            </select>
            <input type="text" id="name" name="first_name" placeholder="first-name" required/>
            <input type="text" name="last_name" placeholder="last-name" required/>
            <input type="date" id="birth-date" name="birth-date" placeholder="birth-date" required/>
            <input type="text" name="user_type" placeholder="user-type" required/>
            <input type="text" name="Username" placeholder="Username" required/>
            <input type="password" name="Password" placeholder="Password" required/>
            <input type="text" name="phone-number" placeholder="phone-number" />
            <button class="login-button" name="submit_creds">create</button>
        </form>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
