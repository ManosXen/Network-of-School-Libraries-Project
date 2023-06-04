<?php
session_start();
$password='';
$password2='';
$error = '';
$success = '';

if (isset($_POST['submit'])) {
    $password = $_POST["password"];
    $password2 = $_POST["password2"];
    if (!empty($_POST['user_id'])) {
            $userID = $_POST['user_id'];
        if (empty($password2) || empty($password)) {
            $error = "Both fields are required";
        } elseif ($password2 != $password) {
            $error = "Both fields should have the same input";
        }
        elseif(strlen($username)<6){
            $error="Password must be at least 6 charachters";
        }
        else{
            include 'db_connection.php';
            $conn = OpenCon();
        
            try {
                $query = "UPDATE users SET user_password='$password' WHERE user_id=$userID";
            
                if (mysqli_query($conn, $query)) {
                    $_SESSION['success_message'] = 'User password was updated succesfully';  
                    $_SESSION['current_user']=$userID;
                } else {
                    $error = "Invalid password";
                }
            } catch (Exception $e) {
                $error= "Password must be at least 6 charachters" ;
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
    <div class="login-box">
        <div class="form">
		<?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <?php if (isset($_SESSION['success_message'])) {
                    echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
                    unset($_SESSION['success_message']);
               }
            ?>
            <h1>Change Password</h1>
            <form class="login-form" method="POST">
                <input type="password" name="password" placeholder="New Password" required/>
                <input type="password" name="password2" placeholder="Re-type New Password" required/>
                <input type="hidden" name="user_id" value="<?php echo $userID; ?>">
                <button name="submit" class="login-button">Change Password</button>
            </form>
            <?php
        }
        else{
            $error = "Error in session login again";
            exit();
        }
    ?>
        </div>
    </div>
</body>
</html>
