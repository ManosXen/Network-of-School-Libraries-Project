
<!DOCTYPE html>
<html>
<head>
	<title>School libraries</title>
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
                <li><a href="my_reviews.php">My reviews</a></li>
                <li><a href="change_password.php">Change password</a></li>
                <li><a href="edit-phone.php">Edit phone</a></li>
                <li><a href="school_loans.php">All loans</a></li>
                <li><a href="all_users.php">All users</a></li>
                <li><a href="create_account.php">Create account</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
		</nav>
	</header>

	<main>

		<section>
			<div class="center-heading">
        		<h2>Book details</h2>
    		</div>
   		 <?php
            session_start();
            if (isset($_SESSION['user_id'])) {
                if (isset($_GET['ISBN'])) {
                    try {
                        $userID = $_SESSION['user_id'];
                        include 'db_connection.php';
                        $conn = OpenCon();
                        $ISBN = $_GET['ISBN'];
                        $query = " SELECT * from all_books_by_genre_keyword where ISBN=$ISBN ";
                        $query1 = "SELECT avail_copies FROM number_of_avail_cop_per_school n join school_user u on u.school_id=n.school_id where u.user_id=$userID and ISBN=$ISBN";
                        $result = mysqli_query($conn, $query);
                        $result1 = mysqli_query($conn, $query1);
                        if (mysqli_num_rows($result) > 0) {
                            $book = mysqli_fetch_assoc($result);
                            $avail = mysqli_fetch_row($result1);
                            ?>
                                <section>
                                <div class="book-details">
                                <?php
                                    $book_cover = $book['cover_image'];
                                    //if (@getimagesize($book_cover) ) {
                                    // $book_cover = 'no_image.png';
                                   // }
                                    ?>
                                    <img src="<?php echo $book_cover; ?>" alt="Book Cover">
                                    <div class="book-info">
                                    <h2><?php echo $book['title']; ?></h2>
                                    <p><strong>ISBN:</strong> <?php echo $book['ISBN']; ?></p>
                                    <p><strong>Publisher:</strong> <?php echo $book['publisher']; ?></p>
                                    <p><strong>Page Number:</strong> <?php echo $book['page_number']; ?></p>
                                    <p><strong>Language:</strong> <?php echo $book['book_language']; ?></p>
                                    <p><strong>authors:</strong> <?php echo $book['all_authors']; ?></p>
                                    <p><strong>genres:</strong> <?php echo $book['genres']; ?></p>
                                    <p><strong>keywords:</strong> <?php echo $book['keywords']; ?></p>
                                    <p><strong>Summary:</strong> <?php echo $book['summary']; ?></p>
                                    <p><strong>Available copies:</strong> <?php echo $avail[0]; ?></p>
                                    <a class="link" href="reserve.php?ISBN=<?php echo $ISBN; ?>">Reserve</a>
                                    <hr>
                                    <a class="link" href="edit_book.php?ISBN=<?php echo $ISBN; ?>">Edit book</a>
                                    <hr>
                                    <a class="link" style="margin-top:10px" href="write_review.php?ISBN=<?php echo $ISBN; ?>">Write a review!</a>
                                    </div>
                                </div>
                                </section>
                            <?php
                         } else {
                            $error = "An error occurred.";
                            header("Location: student_home.php?error=" . urlencode($error));
                            exit();
                        }
                    } catch (Exception $e) {
                        $error = "Error: " . $e->getMessage();
                        header("Location: student_home.php?error=" . urlencode($error));
                        exit();
                    }
                } else {
                    $error = "ISBN not found.";
                    header("Location: student_home.php?error=" . urlencode($error));
                    exit();
                }
                echo '<br>';
                echo '<br>';  
				if (isset($_SESSION['success_message'])) {
					$success_message = $_SESSION['success_message'];
					echo '<p class="success-message">' . $success_message . '</p>';
					unset($_SESSION['success_message']); // Clear the success message from session
				}   
                $query = "SELECT r.username, r.user_role, r.rating, r.ISBN, r.title, r.review_text, r.review_date,r.review_status,u.school_id,r.review_id FROM user_review_books r join school_user u on r.user_id=u.user_id where ISBN=$ISBN ";
                $result = mysqli_query($conn, $query);
    
                if (mysqli_num_rows($result) == 0) {
                    echo '<h1 class="error-message">No reviews found!</h1>';
                } else {
                    $school="SELECT school_id from school_user where user_id=$userID";
					$result_school=mysqli_query($conn,$school);
					$schoolid = mysqli_fetch_assoc($result_school);
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
                        if($row[8]==$schoolid['school_id'] ){
                            echo '<div class="link-container">';
                            echo '<a href="cancel_review.php?review=' . $row[9] . '"" class="next-link">' .  'delete review'  . '</a>' ;
                            if($row[7]!='declined'){
                                echo '<a href="decline_review.php?review=' . $row[9] . '"" class="next-link">' .  'decline review'  . '</a>' ;
                            }
                            if($row[7]!='approved'){
                                echo '<a href="approve_review.php?review=' . $row[9] . '"" class="next-link">' .  'approve review'  . '</a>' ;
                            }
                            echo '</div>';
                        }
                        echo '</div>';
                    }
                }



            } else {
            $error="Connection error.";
            }
		?>
		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>