<!DOCTYPE html>
<html>
<head>
	<title>Average rating</title>
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
        		<h2>Average Rating</h2>
    		</div>
			<?php
				session_start();
                error_reporting(E_ERROR | E_PARSE);
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
					$schoolid = $_SESSION['school_id'];
					$genre="SELECT DISTINCT genre from genre order by genre desc";
                    $result_genres=mysqli_query($conn,$genre);
                    $users="SELECT DISTINCT username,user_id from users_with_phone_and_school where $schoolid=school_id order by username desc";
					$result_users=mysqli_query($conn,$users);
					if($_SERVER['REQUEST_METHOD']=='POST'){
						$userID=$_POST['users'];
						$genre=$_POST['genre'];
						$query_genre = "select genre,AVG(average_rating) as average from avg_review_per_genre_user where ";
                        $query_user = "select username,user_id,AVG(average_rating) as average from avg_review_per_genre_user where ";
						if(!empty($genre)){
							$query_genre .=" genre='$genre' AND";
						}
                        $query_genre .=" 1=1 group by genre order by genre";
                        if(!empty($userID)){
							$query_user .=" user_id=$userID AND";
						}
						$query_user .=" 1=1 group by username  order by username";
					}else{
						$query_genre = "select genre,AVG(average_rating) as average from avg_review_per_genre_user group by genre order by genre ;";
                        $query_user = "select username ,user_id,AVG(average_rating) as average from avg_review_per_genre_user group by username  order by username ;";
					}
					$result_genre = mysqli_query($conn, $query_genre);
                    $result_user = mysqli_query($conn, $query_user);
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
					echo '<button type="submit" class="filter-button">Filter Users</button>';
					echo '</form>';
                    
                    echo '<form method="POST" class="filter-form">';
					echo '<div class="form-group">';
					echo '<label for="genre">Choose Genre:</label>';
					echo '<select name="genre" id="genre">';
					echo '<option value="">All Genres</option>';
					while ($row = mysqli_fetch_assoc($result_genres)) {
						$genre = $row['genre'];
						echo "<option value='$genre'>$genre</option>";
					}
                    echo '</select>'; 
					echo '</div>';
					echo '<button type="submit" class="filter-button">Filter Genres</button>';
					echo '</form>';
					if (mysqli_num_rows($result_genre) == 0) {
						echo '<h1 class="error-message">No ratings found for genre!</h1>';
					} else{
                        echo '<div class="table-container">';
						echo '<div style="float:left; margin-right:10px;width: 50%;">';
                        echo '<table class="table" >';
                        echo '<thead>';
                        echo '<tr><th>Genre</th><th>Average Rating</th></tr>';
                        echo '</thead>';
                        while ($row = mysqli_fetch_assoc($result_genre)) {
                            echo '<tr>';
                            echo '<td>'.$row['genre'].'</td>';
                            echo '<td>'.$row['average'].'</td>';
                            echo '</tr>';
                        }
                        echo '</table>';
						echo '</div>';
                    }
                    if (mysqli_num_rows($result_user) == 0) {
						echo '<h1 class="error-message">No ratings found for user!</h1>';
					} else{
						echo '<div style="float:left;width: 50%;">';
                        echo '<table class="table" ">';
                        echo '<thead>';
                        echo '<tr><th>Username</th><th>Average Rating</th></tr>';
                        echo '</thead>';
                        while ($row = mysqli_fetch_assoc($result_user)) {
                            echo '<tr>';
                            echo '<td>'.$row['username'].'</td>';
                            echo '<td>'.$row['average'].'</td>';
                            echo '</tr>';
                        }
                        echo '</table>';
						echo '</div>';
                        echo '</div>';
                    }
                        mysqli_close($conn);
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
