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

	<main>
		<section>
			<div class="center-heading">
        		<h2>Overdue Loans</h2>
    		</div>
			<?php
				session_start();
				if (isset($_SESSION['success_message'])) {
					$success_message = $_SESSION['success_message'];
					echo '<p class="success-message">' . $success_message . '</p>';
					unset($_SESSION['success_message']); 
				}
				?>
            <?php 
                include 'db_connection.php';
                $conn = OpenCon();
		 		if (isset($_SESSION['user_id'])) {
					$user = $_SESSION['user_id'];
					$schoolid = $_SESSION['school_id'];
					$users="SELECT DISTINCT username,user_id from users_with_phone_and_school where $schoolid=school_id order by username desc";
					$result_users=mysqli_query($conn,$users);
					$titles="SELECT title,ISBN from book order by title";
					$result_title=mysqli_query($conn,$titles);
                    $date="SELECT distinct date_difference_in_days  from overdue_loans where school_id=$schoolid";
					$result_date=mysqli_query($conn,$date);
					$first="SELECT distinct user_first_name  from users_with_phone_and_school where school_id=$schoolid";
					$result_name=mysqli_query($conn,$first);
					$last="SELECT distinct user_last_name  from users_with_phone_and_school where school_id=$schoolid";
					$result_last=mysqli_query($conn,$last);
					if($_SERVER['REQUEST_METHOD']=='POST'){
						$userID=$_POST['users'];
						$title=$_POST['title'];
						$first_name=$_POST['first_name'];
                        $last_name=$_POST['last_name'];
						$days=$_POST['days'];
						$query = "SELECT request_id ,request_date ,last_status_update ,loan_date ,username , title,user_first_name,user_last_name,user_role FROM books_loaned_to_user  where school_id=$schoolid AND loan_status='overdue' AND";
						if(!empty($userID)){
							$query .=" user_id=$userID AND";
						}
                        if(!empty($first_name)){
							$query .=" user_first_name='$first_name' AND";
						}
                        if(!empty($last_name)){
							$query .=" user_last_name='$last_name' AND";
						}
						if(!empty($title)){
							$query .=" title='$title' AND"; 
						}
						if(!empty($days)){
							$query .= " TIMESTAMPDIFF(DAY,  NOW(),last_status_update)=$days and loan_status='overdue' AND";
						}
						$query .=" 1=1 order by request_id desc;";
					}else{
						$query = "SELECT request_id ,request_date ,last_status_update ,loan_date ,username , title,user_first_name,user_last_name,user_role FROM books_loaned_to_user  where school_id=$schoolid AND loan_status='overdue' order by request_id desc;";
					}
					$result = mysqli_query($conn, $query);

					echo '<form method="POST" class="filter-form">';
					echo '<div class="form-group">';
					echo '<label for="users">Choose Username:</label>';
					echo '<select name="users" id="users">';
					echo '<option value="">All Users</option>';
					while ($row = mysqli_fetch_assoc($result_users)) {
						$userID = $row['user_id'];
						$username = $row['username'];
						echo "<option value='$userID'>$username</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="days">Overdue days:</label>';
					echo '<select name="days" id="days">';
					echo '<option value="">Days</option>';
					while ($row = mysqli_fetch_assoc($result_date)) {
						$day = $row['date_difference_in_days'];
						echo "<option value=$day>$day</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="title">Choose Book Title:</label>';
					echo '<select name="title" id="title">';
					echo '<option value="">All Title</option>';
					while ($row = mysqli_fetch_assoc($result_title)) {
						$title = $row['title'];
						echo "<option value='$title'>$title</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="first_name">Choose  First Name:</label>';
					echo '<select name="first_name" id="first_name">';
					echo '<option value="">All First Names</option>';
					while ($row = mysqli_fetch_assoc($result_name)) {
						$first_name = $row['user_first_name'];
						echo "<option value='$first_name'>$first_name</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="last_name">Choose  Name:</label>';
					echo '<select name="last_name" id="last_name">';
					echo '<option value="">All Last Names</option>';
					while ($row = mysqli_fetch_assoc($result_last)) {
						$last_name = $row['user_last_name'];
						echo "<option value=$last_name>$last_name</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '</div>';
					
					echo '<button type="submit" class="filter-button-review">Filter</button>';
					echo '</form>';

					if (mysqli_num_rows($result) == 0) {
						echo '<h1 class="error-message">No loans found!</h1>';
					} else {
                        echo '<div class="table-responsive">';
                        echo '<table class="loan-table">';
                        echo '<thead>';
                        echo '<tr>';
                        echo '<th>Request id</th>';
                        echo '<th>Request Date</th>';
                        echo '<th>First Name</th>';
                        echo '<th>Last Name</th>';
                        echo '<th>Last Update</th>';
                        echo '<th>Loan date</th>';
                        echo '<th>Username</th>';
                        echo '<th>User Role</th>';
                        echo '<th>Title</th>';
                        if($_SERVER['REQUEST_METHOD']=='POST'){
                            if((!empty($status) and $status=='overdue')or !empty($days)){
                                echo '<th>Overdue days</th>';
                            }
                        }
                        echo '<th></th>';
                        echo '<th></th>';
                        echo '<th></th>'; 
                        echo '</tr>';
                        echo '</thead>';
                        echo '<tbody>';
                        while ($row = mysqli_fetch_row($result)) {
                            echo '<tr>';
                            echo '<td>' . $row[0] . '</td>';
                            echo '<td>' . $row[1] .'</td>';
                            echo '<td>' . $row[6] . '</td>';
                            echo '<td>' . $row[7] . '</td>';
                            echo '<td>' . $row[2]. '</td>';
                            echo '<td>' . $row[3]. '</td>';
                            echo '<td>' . $row[4] . '</td>';
                            echo '<td>' . $row[8] . '</td>';
							echo '<td>' . $row[5] . '</td>';
                            if($_SERVER['REQUEST_METHOD']=='POST'){
                                if((!empty($status) and $status=='overdue') or !empty($days)){
                                    $currentTimestamp = new DateTime();
                                    $lastStatusUpdate = new DateTime($row[3]); 
                                    $interval = $lastStatusUpdate->diff($currentTimestamp);
                                    $daysDifference = $interval->days;
                                    echo '<td>' . $daysDifference . '</th>';
                                }
                            }
                                // if($row[2]=='overdue'){    
                                    echo '<td><a class="link" href="update_loan.php?request_id=' . urlencode($row[0]) . '&status=' . 'returned'. '">Return</a></td>';
                                // }
                            }
                            echo '</tr>';
                        }
                        echo '</tbody>';
                        echo '</table>';
                        echo '</div>';
							echo '</div>';
						}
				else{
					$error="Error in the creation of the session logout and login again";
				}
            ?>
		</section>
	</main>

	<footer>
		<p>&copy; 2023 School libraries Site. All rights reserved.</p>
	</footer>
</body>
</html>
