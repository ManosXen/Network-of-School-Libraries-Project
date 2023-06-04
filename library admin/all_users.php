<!DOCTYPE html>
<html>
<head>
	<title>your credentials</title>
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
                <li><a href="average_rating.php">Average rating</a></li>
                <li><a href="my_reviews.php">My reviews</a></li>
                <li><a href="change_password.php">Change password</a></li>
                <li><a href="edit-phone.php">Edit phone</a></li>
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
        		<h2>User's Account Overview </h2>
                <?php
                session_start();
				if (isset($_SESSION['success_message'])) {
					$success_message = $_SESSION['success_message'];
					echo '<p class="success-message">' . $success_message . '</p>';
					unset($_SESSION['success_message']); 
				}
				?>
    		</div>
   		 <?php
            if (isset($_SESSION['school_id'])) {
                $schoolid = $_SESSION['school_id'];
                include 'db_connection.php';
                $conn = OpenCon();
                $users="SELECT DISTINCT username,user_id from users_with_phone_and_school where $schoolid=school_id order by username desc";
                $banned="SELECT DISTINCT banned from users_with_phone_and_school  ";
                $approved="SELECT DISTINCT approved from users_with_phone_and_school  ";
                $role="SELECT DISTINCT user_role from users_with_phone_and_school where user_role<>'central admin' ";
                $result_users=mysqli_query($conn,$users);
                $result_role=mysqli_query($conn,$role);
                $result_ban=mysqli_query($conn,$banned);
                $result_approve=mysqli_query($conn,$approved);
                if($_SERVER['REQUEST_METHOD']=='POST'){
                        $userID=$_POST['users'];
                        $role=$_POST['role'];
                        $banned=$_POST['banned'];
                        $approved=$_POST['approved'];
                        $query = "SELECT * FROM users_with_phone_and_school u where u.school_id=$schoolid AND";
                        if(!empty($userID)){
                            $query .=" user_id=$userID AND";
                        }
                        if(!empty($banned)){
                            $query .=" banned='$banned' AND"; 
                        }
                        if(!empty($approved)){
                            $query .= " approved='$approved' AND";
                        }
                        if(!empty($role)){
                            $query .= " user_role='$role' AND";
                        }
                        $query .=" 1=1 order by username ;";
                    }else{      
                    $query = "SELECT * FROM users_with_phone_and_school u where u.school_id=$schoolid ";
                    }
                $result = mysqli_query($conn, $query);
                echo '<form method="POST" class="filter-form">';
					echo '<div class="form-group">';
					echo '<label for="users">Choose User:</label>';
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
					echo '<label for="banned">Bans:</label>';
					echo '<select name="banned" id="banned">';
					echo '<option value="">All ban options</option>';
                    while ($row = mysqli_fetch_assoc($result_ban)) {
					    $banned = $row['banned'];
                        echo "<option value=$banned>$banned</option>";
                    }
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="approved">Approved:</label>';
					echo '<select name="approved" id="approved">';
					echo '<option value="">All approved options</option>';
                    while ($row = mysqli_fetch_assoc($result_approve)) {
						$approved = $row['approved'];
						echo "<option value='$approved'>$approved</option>";
                    }
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="role">Choose  Role:</label>';
					echo '<select name="role" id="role">';
					echo '<option value="">All Roles</option>';
                    while ($row = mysqli_fetch_assoc($result_role)) {
						$role = $row['user_role'];
						echo "<option value='$role'>$role</option>";
                    }
					echo '</select>';
					echo '</div>';
					echo '</div>';
					echo '<button type="submit" class="filter-button-user">Filter</button>';
					echo '</form>';
                if (mysqli_num_rows($result) == 0) {
                    echo '<h1 style="margin-top: 5rem;">User information was not found!</h1>';
                } else {

                    echo '<div class="table-responsive">';
                    echo '<table class="loan-table">';
                    echo '<thead>';
                    echo '<tr>';
                    echo '<th>user id</th>';
                    echo '<th>full name</th>';
                    echo '<th>birth date</th>';
                    echo '<th>member since</th>';
                    echo '<th>username</th>';
                    echo '<th>phone numbers</th>';
                    echo '<th>User role</th>';
                    echo '<th>Banned</th>';
                    echo '<th>Approved</th>';
                    echo '<th></th>';
                    echo '<th></th>';
                    echo '<th></th>'; 
                    echo '</tr>';
                    echo '</thead>';
                    echo '<tbody>';
                    while ($row = mysqli_fetch_row($result)) {
                        echo '<tr>';
                        echo '<td>' . $row[0] . '</td>';
                        echo '<td>' . $row[1] ."  ". $row[2] . '</td>';
                        echo '<td>' . $row[3] . '</td>';
                        echo '<td>' . $row[5] . '</td>';
                        echo '<td>' . $row[6] . '</td>';
                        echo '<td>' . ($row[9] ? $row[9] : 'no phone number') . '</td>';
                        echo '<td>' . $row[4] . '</td>';
                        echo '<td>' . $row[8] . '</td>';
                        echo '<td>' . $row[12] . '</td>';
                        echo '<td><a href="edit_user_credentials.php?user_id=' . urlencode($row[0]) . '"><img src="edit.png"  alt="Edit" class=edit-icon></a></td>';
                        if($row[12]=='yes'){
                            if('true'==$row[8]){
                                echo '<td><a class="link" href="update_ban.php?user_id=' . urlencode($row[0]) . '&status=' . 'false'. '">Unban</a></td>';
                            }
                            else{
                                echo '<td><a class="link" href="update_ban.php?user_id=' . urlencode($row[0]) . '&status=' . 'true'. '">Ban</a></td>';
                            }
                        } 
                        else{
                            echo '<td><a class="link" href="update_approval.php?user_id=' . urlencode($row[0]) . '&status=' . 'yes'. '">Approve</a></td>';
                        }
                        echo '<td><a class="link" href="delete_account.php?user_id=' . urlencode($row[0]) . '">Delete</a></td>';
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
		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
