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
                <li><a href="logout.php">Logout</a></li>
			</ul>
		</nav>
	</header>

	<main>

		<section>
			<div class="center-heading">
        		<h2>My Book Loans</h2>
    		</div>
   		 <?php
            session_start();
            if (isset($_SESSION['user_id'])) {
                if (isset($_GET['error'])) {
                    $error = $_GET['error'];
                    echo '<div class="error-message">' . $error . '</div>';
                }
                $userID = $_SESSION['user_id'];
                include("../config/db_connection.php");
                $conn = OpenCon();

                $query = "SELECT * FROM loan l where l.user_id=$userID order by l.request_date desc";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result) == 0) {
                    echo '<h1 style="margin-top: 5rem;">No loans found!</h1>';
                } else {

                    echo '<div class="table-responsive">';
                    echo '<table class="loan-table">';
                    echo '<thead>';
                    echo '<tr>';
                    echo '<th>request id</th>';
                    echo '<th>request date</th>';
                    echo '<th>loan status</th>';
                    echo '<th>last status update</th>';
                    echo '<th>loan date</th>';
                    echo '<th>return date</th>';
                    echo '<th>ISBN</th>';
                    echo '<th></th>';
                    echo '<th></th>'; 
                    echo '</tr>';
                    echo '</thead>';
                    echo '<tbody>';
                    while ($row = mysqli_fetch_row($result)) {
                        echo '<tr>';
                        echo '<td>' . $row[0] . '</td>';
                        echo '<td>' . $row[1] . '</td>';
                        echo '<td>' . $row[2] . '</td>';
                        echo '<td>' . $row[3] . '</td>';
                        echo '<td>' . $row[4] . '</td>';
                        echo '<td>' . $row[5] . '</td>';
                        echo '<td>' . $row[7] . '</td>';
                        if($row[2]=='pending' || $row[2]=='approved' || $row[2]=='reserved'  ){
                            echo '<td>';
                            echo '<a class="link" href="cancel.php?loan_id=' . $row[0] . '">cancel</a>';
                            echo '</td>';
                        }
                        echo '</tr>';
                    }
                    echo '</tbody>';
                    echo '</table>';
                    echo '</div>';
                }
            } else {
            echo "User ID not found.";
            }
		?>
		</section>

	</main>

    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
