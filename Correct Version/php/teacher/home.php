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
        		<h2>All the books of our libraries</h2>
    		</div>
   		 <?php
		 session_start();
		 if (isset($_SESSION['user_id'])) {
			$userID = $_SESSION['user_id'];
			include("../config/db_connection.php");
			$conn = OpenCon();
			$genres = "SELECT DISTINCT genre FROM genre";
			$keywords = "SELECT DISTINCT keyword FROM keyword";
			$result_genre = mysqli_query($conn, $genres);
			$result_keyword = mysqli_query($conn, $keywords);
			$authors = "SELECT author_id, CONCAT(author_first_name, ' ', author_last_name) AS author_name FROM author";
			$result_authors = mysqli_query($conn, $authors);

			if ($_SERVER['REQUEST_METHOD'] == 'POST') {
				$genre = $_POST['genre'];
				$keyword = $_POST['keyword'];
				$author = $_POST['author_id'];
				$query = "SELECT n.ISBN, n.title, all_authors, genres, keywords, n.avail_copies FROM all_books_by_genre_keyword a JOIN number_of_avail_cop_per_school n JOIN school_user u ON u.school_id = n.school_id ON a.ISBN = n.ISBN WHERE u.user_id = $userID AND";
				if (!empty($genre)) {
					$query .= " genres LIKE '%$genre%' AND";
				}
				if (!empty($keyword)) {
					$query .= " keywords LIKE '%$keyword%' AND";
				}
				if (!empty($author)) {
					$query .= " FIND_IN_SET($author, a.author_id) AND";
				}
				$query .= " 1=1 ORDER BY n.ISBN";
			} else {
				$query = "SELECT n.ISBN, n.title, all_authors, genres, keywords, n.avail_copies FROM all_books_by_genre_keyword a JOIN number_of_avail_cop_per_school n JOIN school_user u ON u.school_id = n.school_id ON a.ISBN = n.ISBN WHERE u.user_id = $userID ORDER BY n.ISBN";
			}
			$result = mysqli_query($conn, $query);

			echo '<form method="POST" class="filter-form">';
			echo '<div class="form-group">';
			echo '<label for="genre">Choose Genre:</label>';
			echo '<select name="genre" id="genre">';
			echo '<option value="">All Genres</option>';
			while ($row = mysqli_fetch_assoc($result_genre)) {
				$genre = $row['genre'];
				echo "<option value='$genre'>$genre</option>";
			}
			echo '</select>';
			echo '</div>';
			
			echo '<div class="form-group">';
			echo '<label for="keyword">Choose Keyword:</label>';
			echo '<select name="keyword" id="keyword">';
			echo '<option value="">All Keywords</option>';
			while ($row = mysqli_fetch_assoc($result_keyword)) {
				$keyword = $row['keyword'];
				echo "<option value='$keyword'>$keyword</option>";
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

			if (mysqli_num_rows($result)==0) {
				echo '<h1 class="error-message">No Books found!</h1>';
			} else {
				echo '<div class="table-responsive">';
				echo '<table class="table">';
				echo '<thead>';
				echo '<tr>';
				echo '<th>Title</th>';
				echo '<th>Author Name</th>';
				echo '<th>Genres</th>';
				echo '<th>Keywords</th>';
				echo '<th>Available copies</th>';
				echo '<th></th>';
				echo '<th></th>';
				echo '</tr>';
				echo '</thead>';
				echo '<tbody>';

				while ($row = mysqli_fetch_row($result)) {
					echo '<tr onclick="window.location.href=\'book_details.php?ISBN=' . urlencode($row[0]) . '\'">';
					echo '<td>' . $row[1] . '</td>';
					echo '<td>' . $row[2] . '</td>';
					echo '<td>' . $row[3] . '</td>';
					echo '<td>' . $row[4] . '</td>';
					echo '<td>' . $row[5] . '</td>';
					echo '<td>';
					echo '<a class="link" href="reserve.php?ISBN=' . urlencode($row[0]) . '">Reserve</a>';
					echo '</td>';
					echo '</tr>';
				}

				echo '</tbody>';
				echo '</table>';
				echo '</div>';
			}
		} else {
			$error = "Error during the creation of session. Please login again.";
		}
		?>
		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
