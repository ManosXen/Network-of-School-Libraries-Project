<?php
if(isset($_POST['submit_phone'])){
    $flag=0;
    if(empty($_POST["phone_number"])){
        $error="phone number is required";
        header("Location: " . $_SERVER['HTTP_REFERER'] );
    }
        $phone_number = $_POST['phone_number'];
        if(!preg_match('/^[0-9]{10}$/', $phone_number)){
            $error="Phone number should be a 10-digit integer";
        }
        else{
            include_once 'db_connection.php';
            $conn = OpenCon();
            try{  
                  if(!empty($_POST['user_id'])){
                    $userID = $_POST['user_id'];
                    $query = "INSERT IGNORE  INTO user_phone(phone_number,user_id)
                            VALUES ('$phone_number', $userID);"; 
                    if(mysqli_query($conn, $query)){
                        if(mysqli_affected_rows($conn) == 0){
                            $error="Phone number already exists.";
                            $flag=1;
                        }
                        else{
                            session_start();
                            $_SESSION['success_message'] = 'User phone number was updated succesfully';  
                            $_SESSION['current_user']=$userID;
                        }
                    }
                    else{
                        if($flag==0){
                             $error = "Error while creating record: <br>" . mysqli_error($conn);
                        }
                    }
                }
                else{
                    if($flag==0){
                            $error="Error in session go back to your homepage";
                    }
                }
            }   
            catch (Exception $e) {
                if($flag==0){
                    echo "Error: " . $e->getMessage();
                }
                }
        }
}
?>



<!DOCTYPE html>
<html>
<head>
	<title>your credentials</title>
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

	<main>

		<section>
			<div class="center-heading">
        		<h2>Edit phone numbers </h2>
                <?php
                if (session_status() !== PHP_SESSION_ACTIVE) {
                    session_start();
               }  
                if (isset($_SESSION['success_message'])) {
                    echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
                    unset($_SESSION['success_message']);
                }
                ?>
    		</div>
   		 <?php
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
            
                include_once 'db_connection.php';
                $conn = OpenCon();
                $schoolid = $_SESSION['school_id'];
            
                $query = "SELECT DISTINCT username,user_id FROM users_with_phone_and_school WHERE $schoolid=school_id ORDER BY username DESC";
                $result_users = mysqli_query($conn, $query);
            
                $query = "SELECT username FROM users WHERE user_id=$userID";
                $result_my_user = mysqli_query($conn, $query);
                $user_username = mysqli_fetch_assoc($result_my_user);
                $query = "SELECT phone_number FROM users u JOIN user_phone p ON u.user_id=p.user_id WHERE u.user_id=$userID";
                $result = mysqli_query($conn, $query);
            
                echo '<div class="form-group">';
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
            
                echo '<h3 style="margin-top: 5rem;text-align:center; ">current user: ' . $user_username['username'] . ' </h3>';
                if (mysqli_num_rows($result) == 0) {
                    $error= '<h1 style="margin-top: 5rem; text-align:center;">No phone numbers in the database!</h1>';
                } 
                else{
                    echo '<div class="table-responsive">';
                    echo '<table class="loan-table">';
                    echo '<thead>';
                    echo '<tr>';
                    echo '<th>phone numbers</th>';
                    echo '<th></th>';
                    echo '</tr>';
                    echo '</thead>';
                    echo '<tbody>';
                    while ($row = mysqli_fetch_row($result)) {
                        echo '<tr>';
                        echo '<td>' . $row[0] . '</td>';
                        echo '<td><a class="link" href="delete-phone.php?phone_number=' .$row[0] . '"><alt="Edit" class=edit-icon>delete</a></td>'; 
                        echo '</tr>';
                    }
                    echo '</tbody>';
                    echo '</table>';
                    echo '</div>';
                }
            } else {
            echo "User ID not found.";
            }
		?>
        <div class="phone-box">
        <h1>Add phone number</h1>
        <form action="" method="POST" >
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <input type="hidden" name="user_id" value="<?php echo $userID; ?>">
        <input type="text" name="phone_number" placeholder="phone-number" />
        <button type="submit" name="submit_phone" value="phone_number" class="login-button">Add number</button>
        </form>
    </div>

		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
