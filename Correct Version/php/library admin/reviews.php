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
        		<h2>All the reviews</h2>
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
					$school="SELECT school_id from school_user where user_id=$user";
					$result=mysqli_query($conn,$school);
					$schoolid = mysqli_fetch_assoc($result);
					$reviews="SELECT DISTINCT rating from review order by rating desc";
					$result_rating=mysqli_query($conn,$reviews);
					$authors="SELECT author_id,concat(author_first_name, ' ', author_last_name) AS author_name from author order by author_name";
					$result_authors=mysqli_query($conn,$authors);
					$titles="SELECT title from book order by title";
					$result_title=mysqli_query($conn,$titles);
					$status="SELECT distinct review_status from review";
					$result_status=mysqli_query($conn,$status);
					$school="SELECT distinct school_id,school_name from library";
					$result_school=mysqli_query($conn,$school);
					$role="SELECT distinct user_role  from users where user_role<>'central admin' ";
					$result_role=mysqli_query($conn,$role);
					if($_SERVER['REQUEST_METHOD']=='POST'){
						$rating=$_POST['rating'];
						$title=$_POST['title'];
						$author=$_POST['author_id'];
						$status=$_POST['status'];
						$role=$_POST['role'];
						$school_id=$_POST['school'];
						$query = "SELECT username, user_role, rating, ISBN, title, review_text, review_date,review_status,review_id,school_id FROM user_review_books  WHERE";
						if(!empty($rating)){
							$query .=" rating=$rating AND";
						}
						if(!empty($title)){
							$query .=" title='$title' AND"; 
						}
						if(!empty($author)){
							$query .=" author_id=$author AND";
						}
						if(!empty($status)){
							$query .= " review_status='$status' AND";
						}
						if(!empty($role)){
							$query .= " user_role='$role' AND";
						}
						if(!empty($school_id)){
							$query .= " school_id=$school_id AND";
						}
						$query .=" 1=1 order by ISBN;";
					}else{
						$query = "SELECT username, user_role, rating, ISBN, title, review_text, review_date,review_status,review_id,school_id  FROM user_review_books ORDER BY ISBN;";
					}
					$result = mysqli_query($conn, $query);

					echo '<form method="POST" class="filter-form">';
					echo '<div class="form-group">';
					echo '<label for="school">Choose School:</label>';
					echo '<select name="school" id="school">';
					echo '<option value="">All Schools</option>';
					while ($row = mysqli_fetch_assoc($result_school)) {
						$school_id = $row['school_id'];
						$school = $row['school_name'];
						echo "<option value='$school_id'>$school</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="rating">Choose Rating:</label>';
					echo '<select name="rating" id="rating">';
					echo '<option value="">All Ratings</option>';
					while ($row = mysqli_fetch_assoc($result_rating)) {
						$rating = $row['rating'];
						echo "<option value='$rating'>$rating</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="title">Choose Title:</label>';
					echo '<select name="title" id="title">';
					echo '<option value="">All Title</option>';
					while ($row = mysqli_fetch_assoc($result_title)) {
						$title = $row['title'];
						echo "<option value='$title'>$title</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="role">Choose User Role:</label>';
					echo '<select name="role" id="role">';
					echo '<option value="">All Roles</option>';
					while ($row = mysqli_fetch_assoc($result_role)) {
						$role = $row['user_role'];
						echo "<option value='$role'>$role</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="author">Choose author:</label>';
					echo '<select name="author_id" id="author">';
					echo '<option value="">All authors</option>';
					while ($row = mysqli_fetch_assoc($result_authors)) {
						$author = $row['author_name'];
						$authorID = $row['author_id'];
						echo "<option value=$authorID>$author</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '<div class="form-group">';
					echo '<label for="status">Choose status:</label>';
					echo '<div class="select-wrapper">';
					echo '<select name="status" id="status">';
					echo '<option value="">All status</option>';
					while ($row = mysqli_fetch_assoc($result_status)) {
						$status = $row['review_status'];
						echo "<option value=$status>$status</option>";
					}
					echo '</select>';
					echo '</div>';
					echo '</div>';
					
					echo '<button type="submit" class="filter-button-review">Filter</button>';
					echo '</form>';

					if (mysqli_num_rows($result) == 0) {
						echo '<h1 class="error-message">No Reviews found!</h1>';
					} else {
						while ($row = mysqli_fetch_row($result)) {
							echo '<div class="review">';
							echo '<h3>'.'<a href="book_details.php?ISBN=' . urlencode($row[3]) . '"" class="plain-link">' .  $row[4]  . '</a>' .'</h3>';
							echo '<div class="review-details">';
							echo '<div class="rating">';
							echo '<span class="rating-label">Rating:</span>';
							$rating = min($row[2], 5); 
							for ($i = 1; $i <= 5; $i++) {
								$starClass = ($i <= $rating) ? 'filled-star' : 'star';
								echo '<span class="' . $starClass . '">&#9733;</span>';
							}
							echo '</div>';
							echo '<p class="review-text">' . $row[5] . '</p>';
							echo '</div>';
							echo '<hr>';
							echo '<p class="review-meta">ISBN: ' . $row[3] . '</p>';
							echo '<p class="review-meta">Reviewed by: ' . $row[0] . '</p>';
							echo '<p class="review-meta">User role: ' . $row[1] . '</p>';
							echo '<p class="review-meta">Review date: ' . $row[6] . '</p>';
							echo '<p class="review-meta">Review status: ' . $row[7] . '</p>';
							if($row[9]==$schoolid['school_id'] ){
								echo '<div class="link-container">';
								echo '<a href="cancel_review.php?review=' . urlencode($row[8]) . '"" class="next-link">' .  'delete review'  . '</a>' ;
								if($row[7]!='declined'){
									echo '<a href="decline_review.php?review=' . urlencode($row[8]) . '"" class="next-link">' .  'decline review'  . '</a>' ;
								}
								if($row[7]!='approved'){
									echo '<a href="approve_review.php?review=' . urlencode($row[8]) . '"" class="next-link">' .  'approve review'  . '</a>' ;
								}
								echo '</div>';
							}
							echo '</div>';
						}
					}
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
