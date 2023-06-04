
<?php
if(isset($_POST['submit_creds'])){
    if(empty($_POST["ISBN"])){
        $error="All fields are required";
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
    if (!empty($_POST['old_ISBN'])) {
            $old_ISBN = $_POST['old_ISBN'];
            $_SESSION['current_ISBN']=$old_ISBN;
            if(empty($ISBN) || (empty($copies) AND $copies!=0) || empty($title) || empty($all_authors) || empty($publisher) || empty($page_number) || empty($book_language) || empty($summary) || empty($genres) || empty($keywords) ){
                $error = "everything  is required.";
            }
            elseif(strlen($ISBN)!=13){
                $error='ISBN must be 13 numbers long';
            }
            elseif($copies<0){
                $error="the available copies must be a positive integer";
            }
            elseif($page_number<0){
                $error="Page number must be a positive integer";
            }
            elseif(strlen($publisher)<2 || strlen($title)<2){
                $error="Publisher and Title must be at least 2 charachters long";
            }
            else{
                include_once  'db_connection.php';
                $conn = OpenCon();
                try{
                    mysqli_begin_transaction($conn);
                    $flag = 1;
                    if ($ISBN != $old_ISBN) {
                        $selectQuery = "SELECT ISBN FROM book WHERE ISBN = '$ISBN'";
                        $result = mysqli_query($conn, $selectQuery);
                        if (mysqli_num_rows($result) > 0) {
                            $error = "This ISBN already belongs to a book";
                            $flag = 0;
                            throw new Exception($error);
                        }
                    }
                    if ($flag == 1) {
                        $query1 = "UPDATE book SET ISBN='$ISBN', title='$title', publisher='$publisher', page_number=$page_number, book_language='$book_language', summary='$summary', cover_image='https://covers.openlibrary.org/b/isbn/$ISBN-L.jpg' WHERE ISBN='$old_ISBN' ";
                        if (mysqli_query($conn, $query1)) {
                            $query = "DELETE FROM book_genre WHERE ISBN='$ISBN'";
                            if (!mysqli_query($conn, $query)) {
                                $error = "Error in session, please go to the homepage and retry";
                                throw new Exception($error);
                            }
                            $query = "DELETE FROM book_keywords WHERE ISBN='$ISBN'";
                            if (!mysqli_query($conn, $query)) {
                                $error = "Error in session, please go to the homepage and retry";
                                throw new Exception($error);
                            }
                            $query = "DELETE FROM book_author WHERE ISBN='$ISBN'";
                            if (!mysqli_query($conn, $query)) {
                                $error = "Error in session, please go to the homepage and retry";
                                throw new Exception($error);
                            }
                            foreach ($genreList as $genre) {
                                $query = "SELECT genre FROM genre WHERE genre= '$genre'";
                                if (($checkgenre = mysqli_query($conn, $query))) {
                                    $genreexists = mysqli_num_rows($checkgenre) > 0;
                                    if (!$genreexists) {
                                        $genreInsertQuery = "INSERT INTO genre (genre) VALUES ('$genre')";
                                        if (!mysqli_query($conn, $genreInsertQuery)) {
                                            $error = "Error while inserting genre: <br>" . mysqli_error($conn);
                                            throw new Exception($error);
                                        }
                                    }
                                } else {
                                    $error = "Error while searching for genre: <br>" . mysqli_error($conn);
                                    throw new Exception($error);
                                }
                                $query = "INSERT INTO book_genre (ISBN, genre_id) SELECT '$ISBN', genre_id FROM genre WHERE genre='$genre'";
                                if (!mysqli_query($conn, $query)) {
                                    $error = "Error while connecting books and genres, try again";
                                    throw new Exception($error);
                                }
                            }
                            foreach ($keywordList as $keyword) {
                                $query = "SELECT keyword FROM keyword WHERE keyword= '$keyword'";
                                if (($checkkeyword = mysqli_query($conn, $query))) {
                                    $keyqordexists = mysqli_num_rows($checkkeyword) > 0;
                                    if (!$keyqordexists) {
                                        $keywordInsertQuery = "INSERT INTO keyword (keyword) VALUES ('$keyword')";
                                        if (!mysqli_query($conn, $keywordInsertQuery)) {
                                            $error = "Error while inserting keyword: <br>" . mysqli_error($conn);
                                            throw new Exception($error);
                                        }
                                    }
                                } else {
                                    $error = "Error while searching for keyword: <br>" . mysqli_error($conn);
                                    throw new Exception($error);
                                }
                                $query = "INSERT INTO book_keywords (ISBN, keyword_id) SELECT '$ISBN', keyword_id FROM keyword WHERE keyword='$keyword'";
                                if (!mysqli_query($conn, $query)) {
                                    $error = "Error while connecting books and genres, try again";
                                    throw new Exception($error);
                                }
                            }
                            foreach ($authorList as $author) {
                                $nameParts = explode(' ', $author);
                                $first_name = trim($nameParts[0]);
                                if (count($nameParts) < 2) {
                                    throw new Exception("Authors must have a first and a last name");
                                } else {
                                    $last_name = implode(' ', array_slice($nameParts, 1));
                                    $query = "SELECT author_id FROM author WHERE author_first_name= '$first_name' and author_last_name='$last_name'";
                                    if (($checkauthor = mysqli_query($conn, $query))) {
                                        $authorexists = mysqli_num_rows($checkauthor);
                                        if (!$authorexists) {
                                            $authorInsertQuery = "INSERT INTO author (author_first_name,author_last_name) VALUES ('$first_name','$last_name')";
                                            if (!mysqli_query($conn, $authorInsertQuery)) {
                                                $error = "Error while inserting author: <br>" . mysqli_error($conn);
                                                throw new Exception($error);
                                            }
                                        }
                                    } else {
                                        $error = "Error while searching for author: <br>" . mysqli_error($conn);
                                        throw new Exception($error);
                                    }
                                    $query = "INSERT INTO book_author (ISBN, author_id) SELECT '$ISBN', author_id FROM author WHERE author_first_name='$first_name' and author_last_name='$last_name'";
                                    if (!mysqli_query($conn, $query)) {
                                        $error = "Error while connecting books and genres, try again";
                                        throw new Exception($error);
                                    }
                                    $schoolid = $_SESSION['school_id'];
                                    $query = "UPDATE book_owner SET avail_copies=$copies WHERE ISBN='$ISBN' AND school_id=$schoolid";
                                    if (!mysqli_query($conn, $query)) {
                                        $error = "Error while updating book availability";
                                        throw new Exception($error);
                                    }
                                }
                            }
                            mysqli_commit($conn);
                            $_SESSION['success_message'] = 'Book was updated successfully';
                            $_SESSION['current_ISBN'] = $ISBN;
                            header('Location: ' . $_SERVER['PHP_SELF']);
                            exit();
                        }
                    }
                    
                        
                        else{
                            $error = "Error while  updating book info: <br>" . mysqli_error($conn);
                        }
                }   
                catch (Exception $e) {
                    mysqli_rollback($conn);
                    $error=$e->getMessage();
                    $_SESSION['error_message'] = $error;
                    header('Location: ' . $_SERVER['PHP_SELF']);
                    exit();
                    }
            }
    }
    else{
        $error = "Error in session go back to your homepage";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Book info</title>
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
        $my_flag=1;
        if (session_status() !== PHP_SESSION_ACTIVE) {
            session_start();
        }  
       if (isset($_SESSION['user_id'])) {
        if (isset($_POST['submit_ISBN'])) {
            $ISBN = $_POST['other_ISBN'];
            if (!empty($ISBN)) {
                $_SESSION['other_ISBN'] = $ISBN;
            }
            else{
                $my_flag=0;
            } 
        } else {
            if(isset($_GET['ISBN'])){
                $ISBN=$_GET['ISBN'];
            }
            else{
                if(isset($_SESSION['current_ISBN'])){
                    $ISBN = $_SESSION['current_ISBN'];
                }
                else{
                    $my_flag=0;
                }
            }
        }
        include_once  'db_connection.php';
        $conn = OpenCon();
        $schoolid = $_SESSION['school_id'];
        $query = " SELECT * from book  order by title";
        $result_books = mysqli_query($conn, $query);
        echo '<div class="form-group" style="margin-top:20px">';
        echo '<label for="other_user_id">Choose Book:</label>';
        echo '<form action="' . $_SERVER['PHP_SELF'] . '" method="POST" class="form-inline">';
        echo '<select name="other_ISBN" id="other_ISBN" class="form-control">';
        while ($row = mysqli_fetch_assoc($result_books)) {
            $optionISBN = $row['ISBN'];
            $title = $row['title'];
            if($my_flag==0){
                $ISBN=$optionISBN;
            }
            $selected = ($optionISBN == $ISBN) ? 'selected' : '';
            echo "<option value='$optionISBN' $selected>$title</option>";
        }
        $query = "SELECT avail_copies,ISBN,title FROM number_of_avail_cop_per_school WHERE ISBN='$ISBN' ";
        $result_copies = mysqli_query($conn, $query);
        $chosen_book = mysqli_fetch_assoc($result_copies);
        echo '</select>';
        echo '<button type="submit_ISBN" class="btn btn-primary ml-2" name="submit_ISBN" value="Submit">Submit</button>';
        echo '</form>';
        echo '</div>';
        echo '<h3 style="margin-top: 5px;text-align:center;margin-bottom:1100px; ">current book: ' . $chosen_book['title'] .'  ,  ' . $chosen_book['ISBN'] .' </h3>';
    ?>
    
    <div class="login-box" style="margin-top:350px">
        <form class="login-form" action="" method="post" >
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <h2>Edit Book</h2>
        <?php
                if (isset($_SESSION['error_message'])) {
                    echo '<div class="error-message">' . $_SESSION['error_message'] . '</div>';
                    unset($_SESSION['error_message']);
               }
                if (isset($_SESSION['success_message'])) {
                    echo '<div class="success-message">' . $_SESSION['success_message'] . '</div>';
                    unset($_SESSION['success_message']);
               }
            $query = "SELECT ISBN,title,author_id,all_authors,publisher ,page_number ,book_language ,summary ,genres ,keywords from all_books_by_genre_keyword where ISBN=$ISBN order by title";
            $result = mysqli_query($conn, $query);
            $row = mysqli_fetch_assoc($result);
        ?>
        <label for="ISBN">ISBN:</label>
        <input type="text" id="ISBN" name="ISBN" value="<?php echo $row['ISBN']; ?>" required />

        <label for="title">title:</label>
        <input type="text" name="title" value="<?php echo $row['title']; ?>" required/>

        <label for="authors">Authors:</label>
        <input type="text" id="authors" name="authors" value="<?php echo $row['all_authors']; ?>" required/>

        <label for="publisher">Publisher:</label>
        <input type="text" name="publisher" value="<?php echo $row['publisher']; ?>" required/>

        <label for="page_number">Page number:</label>
        <input type="number" name="page_number" value="<?php echo $row['page_number']; ?>" required/>

        <label for="book_language">Language:</label>
        <input type="text" name="book_language" value="<?php echo $row['book_language']; ?>" required/>

        <label for="genres">Genres:</label>
        <input type="text" name="genres" value="<?php echo $row['genres']; ?>" required/>

        <label for="keywords">Keywords:</label>
        <input type="text" name="keywords" value="<?php echo $row['keywords']; ?>" required/>

        <label for="copies">Available copies:</label>
        <input type="number" name="copies" value="<?php echo $chosen_book['avail_copies'] ; ?>" required/>

        <label for="summary">Summary:</label>
        <input type="text" name="summary" value="<?php echo $row['summary']; ?>" required/>
        
        <input type="hidden" name="old_ISBN" value="<?php echo $ISBN; ?>">

        <button class="login-button" name="submit_creds">Submit</button>
        </form>
        <?php
            }
            else{
                $error = "Error in session login again";
                exit();
            }
        ?>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>