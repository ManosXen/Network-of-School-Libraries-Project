<!DOCTYPE html>
<html>
<head>
	<title>user credentials</title>
	<link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
	<header>
		<h1>Welcome to School libraries</h1>
        <nav class="navbar">
        <img src="logo.png" alt="Logo" class="logo">
        <ul>
        <li><a href="home.php">Home</a></li>
        </ul>
    </nav>
	</header>

	<main>

		<section>
			<div class="center-heading">
        		<h2>Account Overview </h2>
    		</div>
   		 <?php
            session_start();
            if (isset($_GET['user_id'])) {
                $userID = $_GET['user_id'];
                include 'db_connection.php';
                $conn = OpenCon();

                $query = "SELECT * FROM users_with_phone_and_school u where u.user_id=$userID ";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result) == 0) {
                    echo '<h1 style="margin-top: 5rem;">User information was not found!</h1>';
                } else {

                    echo '<div class="table-responsive">';
                    echo '<table class="loan-table">';
                    echo '<thead>';
                    echo '<tr>';
                    echo '<th>user id</th>';
                    echo '<th>full name</th>';
                    echo '<th>birth date</th>';
                    echo '<th>member since</th>';
                    echo '<th>username</th>';
                    echo '<th>phone numbers</th>';
                    echo '<th>School</th>';
                    echo '<th></th>';
                    echo '<th></th>';
                    echo '<th></th>'; 
                    echo '</tr>';
                    echo '</thead>';
                    echo '<tbody>';
                    while ($row = mysqli_fetch_row($result)) {
                        echo '<tr>';
                        echo '<td>' . $row[0] . '</td>';
                        echo '<td>' . $row[1] ."  ". $row[2] . '</td>';
                        echo '<td>' . $row[3] . '</td>';
                        echo '<td>' . $row[5] . '</td>';
                        echo '<td>' . $row[6] . '</td>';
                        echo '<td>' . ($row[9] ? $row[9] : 'no phone number') . '</td>';
                        echo '<td>' . $row[10] . '</td>';
                        echo '<td><a href="edit_credentials.php"><img src="edit.png"  alt="Edit" class=edit-icon></a></td>'; 
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
