<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    session_start();
    if (isset($_SESSION['user_id'])) {
        if (isset($_GET['error'])) {
            $error = $_GET['error'];
            echo '<div class="error-message">' . $error . '</div>';
        }
        $userID = $_SESSION['user_id'];
        require_once 'db_connection.php';
        $conn = OpenCon();
        $text = $_POST["review"];
        $rating = $_POST["rating"];
        if(empty($rating) ){
            $error = "rating is required";
        }
        else{
        $ISBN = $_POST["ISBN"];
        try {
            $query = "INSERT INTO review(review_text, rating, user_id, ISBN) 
            values('$text', $rating, $userID, '$ISBN')";
            if (mysqli_query($conn, $query)) {
                header("Location: my_reviews.php");
                exit();
            } else {
                $error = "Error while creating review: <br>" . mysqli_error($conn);
            }
        } catch (Exception $e) {
            echo "Error: " . $e->getMessage();
        }
    }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Write a review!</title>
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
                <li><a href="school_loans.php">All loans</a></li>
                <li><a href="all_users.php">All users</a></li>
                <li><a href="create_account.php">Create account</a></li>
				<li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>
    </header>

    <div class="review-form">
        <h3>
            <?php
            if (isset($_GET['ISBN'])) {
                try {
                    $ISBN = $_GET['ISBN'];
                    require_once 'db_connection.php';
                    $conn = OpenCon();
                    $query = "SELECT title from book where ISBN = '$ISBN' ";
                    $result = mysqli_query($conn, $query);
                    if ($row = mysqli_fetch_row($result)) {
                        echo "Review for book: $row[0]";
                    } else {
                        $error = "An error occurred while retrieving the book.";
                        header("Location: my_reviews.php?error=" . urlencode($error));
                        exit();
                    }
                } catch (Exception $e) {
                    echo "Error: " . $e->getMessage();
                }
            }
            ?>
        </h3>
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <form action="" method="POST">
        <div class="dropdown">
        <select class="dropdown" name="rating">
            <option value="" >Select a rating </option>
            <option value="5">★★★★★</option>
            <option value="4">★★★★</option>
            <option value="3">★★★</option>
            <option value="2">★★</option>
            <option value="1">★</option>
            </select>
            </div>

            <div class="review-input">
                <label for="review">Review:</label>
                <textarea id="review" name="review" rows="5"></textarea>
                <input type="hidden" name="ISBN" value="<?php echo $_GET['ISBN']; ?>">
            </div>
            <button type="submit" class="submit-button">Submit</button>
        </form>
    </div>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>


