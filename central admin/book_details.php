<?php
include ('../config/db_connection.php');
include('header.php');
$conn = OpenCon();
?>


<!DOCTYPE html>
<html>
<head>
	<title>School libraries</title>
	<link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
	<header>
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
	</header>

	<main>

		<section>
			<div style="text-align:center">
        		<h1>Book details</h1>
    		</div>
   		 <?php
            if (isset($_GET['ISBN'])) {
                try {
                    $ISBN = $_GET['ISBN'];
                    $query = " SELECT * from all_books_by_genre_keyword where ISBN=$ISBN ";
                    $query1 = "SELECT sum(total_num_of_copies) from total_num_of_cop_per_book_per_school where ISBN = '$ISBN' group by ISBN ;";
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
                                <p><strong>Total number of copies in the school network:</strong> <?php echo $avail[0]; ?></p>
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
                    echo '</div>';
                }
                }
		?>
		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>