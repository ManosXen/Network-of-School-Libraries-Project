<?php
include("../config/db_connection.php");
if(isset($_POST['submit'])){
    $flag=0;
    if(empty($_POST["phone_number"])){
        $error = "phone number is required";
    }else{
        $phone_number = $_POST['phone_number'];
        if(!preg_match('/^[0-9]{10}$/', $phone_number)){
            $error="Phone number should be a 10-digit integer";
        }
        else{
            $conn = OpenCon();
            try{
                if (session_status() !== PHP_SESSION_ACTIVE) {
                    session_start();
                }   
                if(isset($_SESSION['user_id'])){
                    $userID = $_SESSION['user_id'];
                    $query = "INSERT IGNORE  INTO user_phone(phone_number,user_id)
                            VALUES ('$phone_number', $userID);"; 
                    if(mysqli_query($conn, $query)){
                        if(mysqli_affected_rows($conn) == 0){
                            $error="Phone number already exists.";
                            $flag=1;
                        }
                        else{
                        header("Location: ".$_SERVER['PHP_SELF']);
                        exit();
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
                            $error="Error in session please login again";
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
				<li><a href="my_loans.php">My loans</a></li>
				<li><a href="my_credentials.php">My credentials</a></li>
                <li><a href="reviews.php">Book reviews</a></li>
                <li><a href="my_reviews.php">My reviews</a></li>
                <li><a href="change_password.php">Change password</a></li>
                <li><a href="edit-phone.php">Edit phone</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
		</nav>
	</header>

	<main>

		<section>
			<div class="center-heading">
        		<h2>Edit phone numbers </h2>
    		</div>
   		 <?php
              if (session_status() !== PHP_SESSION_ACTIVE) {
                session_start();
            }   
            if (isset($_SESSION['user_id'])) {
                $userID = $_SESSION['user_id'];
                $conn = OpenCon();

                $query = "SELECT phone_number from users u join user_phone p on u.user_id=p.user_id where u.user_id=$userID ";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result) == 0) {
                    echo '<h1 style="margin-top: 5rem;">No phone numbers in the database!</h1>';
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
        <input type="text" name="phone_number" placeholder="phone-number" />
            <button type="submit" name="submit" value="phone_number" class="login-button">Add number</button>
        </form>
    </div>

		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
