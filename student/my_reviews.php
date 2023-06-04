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
                <li><a href="logout.php">Logout</a></li>
			</ul>
		</nav>
	</header>

	<main>
		<section>
			<div class="center-heading">
        		<h2>My reviews</h2>
    		</div>

            <?php 
                session_start();
                if (isset($_SESSION['user_id'])) {
                    $userID = $_SESSION['user_id'];
                    include("../config/db_connection.php");
                    $conn = OpenCon();

                    $query = "SELECT  rating, ISBN, title, review_text,review_status, review_date,review_id FROM user_review_books where  user_id=$userID ORDER BY ISBN";
                    $result = mysqli_query($conn, $query);

                    if (mysqli_num_rows($result) == 0) {
                        echo '<h1 style="margin-top: 5rem;">No reviews found!</h1>';
                    } else {
                        while ($row = mysqli_fetch_row($result)) {
                            echo '<div class="review">';
                            echo '<h3>'.'<a href="book_details.php?ISBN=' . urlencode($row[1]) . '"" class="plain-link">' .  $row[2]  . '</a>' .'</h3>';
                            echo '<div class="review-details">';
                            echo '<div class="rating">';
                            echo '<span class="rating-label">Rating:</span>';
                            $rating = min($row[0], 5); 
                            for ($i = 1; $i <= 5; $i++) {
                                $starClass = ($i <= $rating) ? 'filled-star' : 'star';
                                echo '<span class="' . $starClass . '">&#9733;</span>';
                            }
                            echo '</div>';
                            echo '<p class="review-text">' . $row[3] . '</p>';
                            echo '</div>';
                            echo '<hr>';
                            echo '<p class="review-meta">ISBN: ' . $row[1] . '</p>';
                            echo '<p class="review-meta">review_status: ' . $row[4] . '</p>';
                            echo '<p class="review-meta">review_date: ' . $row[5] . '</p>';
                            echo '<h3>'.'<a href="cancel_review.php?review=' . urlencode($row[6]) . '"" class="left-link">' .  'delete review'  . '</a>' .'</h3>';
                            echo '</div>';
                        }
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
