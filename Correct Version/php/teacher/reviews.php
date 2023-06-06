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
        		<h2>All the reviews</h2>
    		</div>

            <?php 
                include("../config/db_connection.php");
                $conn = OpenCon();
                $reviews="SELECT DISTINCT rating from review order by rating desc";
                $result_rating=mysqli_query($conn,$reviews);
                $authors="SELECT author_id,concat(author_first_name, ' ', author_last_name) AS author_name from author";
                $result_authors=mysqli_query($conn,$authors);
                $titles="SELECT title from book";
                $result_title=mysqli_query($conn,$titles);
                if($_SERVER['REQUEST_METHOD']=='POST'){
					$rating=$_POST['rating'];
                    $title=$_POST['title'];
                    $author=$_POST['author_id'];
					$query = "SELECT username, user_role, rating, ISBN, title, review_text, review_date FROM user_review_books where review_status='approved' AND";
					if(!empty($rating)){
						$query .=" rating=$rating AND";
					}
					if(!empty($title)){
						$query .=" title='$title' AND"; 
					}
                    if(!empty($author)){
						$query .=" author_id=$author AND";
					}
					$query .=" 1=1 order by ISBN";
				}else{
                    $query = "SELECT username, user_role, rating, ISBN, title, review_text, review_date FROM user_review_books where review_status='approved' ORDER BY ISBN";
				}
				$result = mysqli_query($conn, $query);

                echo '<form method="POST" class="filter-form">';
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
				echo '<label for="author">Choose author:</label>';
				echo '<div class="select-wrapper">';
				echo '<select name="author_id" id="author">';
				echo '<option value="">All authors</option>';
				while ($row = mysqli_fetch_assoc($result_authors)) {
					$author = $row['author_name'];
					$authorID = $row['author_id'];
					echo "<option value=$authorID>$author</option>";
				}
                echo '</select>';
				echo '</div>';
				echo '</div>';
				
				echo '<button type="submit" class="filter-button">Filter</button>';
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
						echo '</div>';
					}
				}
            ?>
		</section>
	</main>

	<footer>
		<p>&copy; 2023 School libraries Site. All rights reserved.</p>
	</footer>
</body>
</html>
