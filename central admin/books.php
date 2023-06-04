<?php
include('header.php');
include('../config/db_connection.php');
$conn = OpenCon()
?>


<!DOCTYPE html>
<html>
<head>
	<title>School libraries</title>
</head>
<body>
	<header>
        <title>All books of our Catalog</title>
	</header>

	<main>

		<section>
			<div>
    		</div>
   		 <?php
			$genres = "SELECT DISTINCT genre FROM genre";
			$keywords = "SELECT DISTINCT keyword FROM keyword";
			$result_genre = mysqli_query($conn, $genres);
			$result_keyword = mysqli_query($conn, $keywords);
			$authors = "SELECT author_id, CONCAT(author_first_name, ' ', author_last_name) AS author_name FROM author;";
			$result_authors = mysqli_query($conn, $authors);

			if ($_SERVER['REQUEST_METHOD'] == 'POST') {
				$genre = $_POST['genre'];
				$keyword = $_POST['keyword'];
				$author = $_POST['author_id'];
				$query = "SELECT DISTINCT ISBN, title, all_authors, genres, keywords FROM all_books_by_genre_keyword WHERE";
				if (!empty($genre)) {
					$query .= " genres LIKE '%$genre%' AND";
				}
				if (!empty($keyword)) {
					$query .= " keywords LIKE '%$keyword%' AND";
				}
				if (!empty($author)) {
					$query .= " FIND_IN_SET($author, author_id) AND";
				}
				$query .= " 1=1 ORDER BY title";
			} else {
				$query = "SELECT DISTINCT ISBN, title, all_authors, genres, keywords FROM all_books_by_genre_keyword ORDER BY title;"; 
			}
			$result = mysqli_query($conn, $query);

            echo '<br>';
            echo '<br>';
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
					echo '<td>';
					echo '</td>';
					echo '</tr>';
				}

				echo '</tbody>';
				echo '</table>';
				echo '</div>';
			}
		?>
		</section>

	</main>
</body>
</html>
