<?php
if(isset($_POST['submit_creds'])){
    if(empty($_POST["ISBN"])){
        throw new Exception("All fields are required");
    }
    $ISBN = $_POST['ISBN'];
    $copies=$_POST['copies'];
    $title = $_POST['title'];
    $all_authors = $_POST['authors'];
    $publisher = $_POST['publisher'];
    $page_number = $_POST['page_number'];
    $book_language = $_POST['book_language'];
    $summary = $_POST['summary'];
    $genres = $_POST['genres'];
    $keywords = $_POST['keywords'];
    $genreList = array_map('trim', explode(',', $genres));
    $keywordList = array_map('trim', explode(',', $keywords));
    $authorList = array_map('trim', explode(',', $all_authors));
    if (session_status() !== PHP_SESSION_ACTIVE) {
        session_start();
    }
    if (isset($_SESSION['school_id'])) {
        $schoolID = $_SESSION['school_id'];
        if(empty($ISBN) || empty($copies) || empty($title) || empty($all_authors) || empty($publisher) || empty($page_number) || empty($book_language) || empty($summary) || empty($genres) || empty($keywords) ){
            throw new Exception("Everything is required.");
        }
        elseif(strlen($ISBN)!=13){
            throw new Exception('ISBN must be 13 digits');
        }
        elseif($copies<0){
            throw new Exception("The available copies must be a positive integer");
        }
        else{
            include_once  'db_connection.php';
            $conn = OpenCon();
            $selectQuery = "SELECT ISBN FROM book WHERE ISBN = '$ISBN'";
            $result = mysqli_query($conn, $selectQuery);
            if (mysqli_num_rows($result) > 0) {
                throw new Exception("This ISBN already belongs to a book");
            }
            else{
                try{        
                    mysqli_begin_transaction($conn);
                    $query1 = "INSERT INTO  book(ISBN, title, publisher, page_number, book_language, summary, cover_image) VALUES('$ISBN','$title','$publisher','$page_number','$book_language','$summary','https://covers.openlibrary.org/b/isbn/$ISBN-L.jpg') "; 
                    if(!mysqli_query($conn,$query1)){
                        throw new Exception("Error in insertion of book");
                    }
                    $query1="INSERT INTO book_owner(school_id,ISBN,avail_copies) VALUES ($schoolID,'$ISBN',$copies)";
                    if(!mysqli_query($conn,$query1)){
                        throw new Exception("Error in insertion of book");
                    }
                    foreach ($genreList as $genre) {
                        $query = "SELECT genre FROM genre WHERE genre= '$genre'";
                        if(($checkgenre = mysqli_query($conn, $query))){
                            $genreexists = mysqli_num_rows($checkgenre) > 0;
                            if(!$genreexists){
                                $genreInsertQuery = "INSERT INTO genre (genre) VALUES ('$genre')";
                                if(!mysqli_query($conn, $genreInsertQuery)){
                                    throw new Exception("Error while inserting genre: <br>" . mysqli_error($conn));
                                }
                            }
                        }
                        else{
                            throw new Exception("Error while searching for genre: <br>" . mysqli_error($conn));
                        }
                        $query="INSERT INTO book_genre (ISBN, genre_id)
                                SELECT '$ISBN', genre_id FROM genre WHERE genre='$genre'";
                        if(!mysqli_query($conn,$query)){
                            throw new Exception("Error while connecting books and genres, try again");
                        }
                    }
                    foreach ($keywordList as $keyword) {
                        $query = "SELECT keyword FROM keyword WHERE keyword= '$keyword'";
                        if(($checkkeyword = mysqli_query($conn, $query))){
                            $keyqordexists = mysqli_num_rows($checkkeyword) > 0;
                            if(!$keyqordexists){
                                $keywordInsertQuery = "INSERT INTO keyword (keyword) VALUES ('$keyword')";
                                if(!mysqli_query($conn, $keywordInsertQuery)){
                                    throw new Exception("Error while inserting keyword: <br>" . mysqli_error($conn));
                                }
                            }
                        }
                        else{
                            throw new Exception("Error while searching for keyword: <br>" . mysqli_error($conn));
                        }
                        $query="INSERT INTO book_keywords (ISBN, keyword_id)
                                 SELECT '$ISBN', keyword_id FROM keyword WHERE keyword='$keyword'";
                        if(!mysqli_query($conn,$query)){
                            throw new Exception("Error while connecting books and genres, try again");
                        }
                    }
                    foreach ($authorList as $author) {
                        $nameParts = explode(' ', $author);
                        $first_name = trim($nameParts[0]);
                        if (count($nameParts) < 2){
                            throw new Exception("Authors must have a first and a last name");
                        }
                        else{
                            $last_name = implode(' ', array_slice($nameParts, 1));
                            mysqli_begin_transaction($conn);
                            $query = "SELECT author_id FROM author WHERE author_first_name= '$first_name' and author_last_name='$last_name'";
                            if(($checkauthor = mysqli_query($conn, $query))){
                                $authorexists = mysqli_num_rows($checkauthor) > 0;
                                if(!$authorexists){
                                    $authorInsertQuery = "INSERT INTO author (author_first_name,author_last_name) VALUES ('$first_name','$last_name')";
                                    if(!mysqli_query($conn, $authorInsertQuery)){
                                        throw new Exception("Error while inserting author: <br>" . mysqli_error($conn));
                                    }
                                }
                            }
                            else{
                                throw new Exception("Error while searching for author: <br>" . mysqli_error($conn));
                            }

                            $query="INSERT INTO book_author (ISBN, author_id)
                                     SELECT '$ISBN', author_id FROM author WHERE author_first_name='$first_name' and author_last_name='$last_name'";
                            if(!mysqli_query($conn,$query)){
                                throw new Exception("Error while connecting books and genres, try again");
                            }
                            mysqli_commit($conn);
                        }
                    }

                    $_SESSION['success_message'] = 'Book was inserted succesfully';  
                    header('Location: ' . $_SERVER['PHP_SELF']);
                    exit();
                }
                catch(Exception $e){
                    mysqli_rollback($conn);
                    $error=$e->getMessage();
                    $_SESSION['error_message'] = $error;
                    header('Location: ' . $_SERVER['PHP_SELF']);
                    exit();
                }
            }
        }
    }
}
?>


<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
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
    <?php
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }  
    ?>
    
    <div class="login-box" style="margin-top:250px">
        <form class="login-form" action="" method="post" >
        <?php   
                if (isset($_SESSION['error_message'])) {
                    echo '<div class="error-message">' . $_SESSION['error_message'] . '</div>';
                    unset($_SESSION['error_message']);
               }
        ?>
        <h2>Add Book</h2>
        <?php   
                if (isset($_SESSION['success_message'])) {
                    echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
                    unset($_SESSION['success_message']);
               }
        ?>
        <label for="ISBN">ISBN:</label>
        <input type="text" id="ISBN" name="ISBN" placeholder="ISBN" required />
        <label for="title">title:</label>
        <input type="text" name="title" placeholder="title"  required/>
        <label for="authors">Authors:</label>
        <input type="text" id="authors" name="authors" placeholder="authors" required/>
        <label for="publisher">Publisher:</label>
        <input type="text" name="publisher" placeholder="publisher" required/>
        <label for="page_number">Page number:</label>
        <input type="number" name="page_number" placeholder="page_number" required/>
        <label for="book_language">Language:</label>
        <input type="text" name="book_language" placeholder="book_language" required/>
        <label for="genres">Genres:</label>
        <input type="text" name="genres" placeholder="genres" required/>
        <label for="keywords">Keywords:</label>
        <input type="text" name="keywords" placeholder="keywords" required/>
        <label for="copies">Available copies:</label>
        <input type="number" name="copies" placeholder="available copies" required/>
        <label for="summary">Summary:</label>
        <input type="text" name="summary" placeholder="summary" required/>
        <button class="login-button" name="submit_creds">Submit</button>
        </form>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>