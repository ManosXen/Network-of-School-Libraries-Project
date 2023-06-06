<?php
include('config/db_connection.php');

if(isset($_POST['submit_creds'])){
    if(empty($_POST["first_name"])){
        die("Name is required");
    }

    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $birth_date = $_POST['birth-date'];
    $user_type = $_POST['user_type'];
    $username = $_POST['Username'];
    $password = $_POST['Password'];
    $schoolID = $_POST['school'];

    if(empty($username) || empty($password) || empty($first_name) || empty($last_name) || empty($birth_date) || empty($user_type) || empty($schoolID)){
        $error = "Everything except phone number is required.";
    } else if($user_type!='student' && $user_type!='teacher'){
        $error="Only options 'teacher' and 'student' are accepted in the user_type field.";
    }else{
        $conn = OpenCon();

        $query1 = "INSERT INTO users(user_first_name, user_last_name, bday, user_role, username, user_password)
                   VALUES ('$first_name', '$last_name', '$birth_date', '$user_type', '$username', '$password')";

        $result = mysqli_query($conn, $query1);
        if($result){
            if(isset($_POST['phone-number'])){
                $phone_number = $_POST['phone-number'];
                $query2 = "INSERT INTO user_phone(phone_number, user_id)
                           SELECT '$phone_number', user_id
                           FROM users
                           WHERE username = '$username'";

                if(!mysqli_query($conn, $query2)){
                    $error = "Error in phone insertion";
                }
            }

            $query3 = "INSERT INTO school_user(school_id, user_id)
                       SELECT '$schoolID', user_id
                       FROM users
                       WHERE username = '$username'";

            if(!mysqli_query($conn, $query3)){
                $error = "Error in school insertion";
            }

            header("Location: login.php");
            exit();
        } else {
            $error = "Invalid credentials";
        }
    }
}
?>




<!DOCTYPE html>
<html>
<head>
    <title>Signup Page</title>
    <link rel="stylesheet" type="text/css" href="teacher/styling.css">
</head>
<body>
    <div class="login-box">
        <form class="login-form" action="" method="post">
        <?php if (!empty($error)) { ?>
                <div class="error-message">
                <?php echo $error; ?>
            </div>
            <?php } ?>
            <h2>Signup</h2>
            <label for="school">Choose School:</label>
            <select name="school" id="school" required>
            <option value="">Select School</option>
            <?php
                $conn = OpenCon();
                $schools = "SELECT school_id, school_name FROM library";
                $result = mysqli_query($conn, $schools);
                while ($row = mysqli_fetch_assoc($result)) {
                    $school = $row['school_name'];
                    $schoolID=$row['school_id'];
                    echo "<option value=$schoolID>$school</option>";
                }
            ?>
            </select>
            <input type="text" id="name" name="first_name" placeholder="first-name" required/>
            <input type="text" name="last_name" placeholder="last-name" required/>
            <input type="date" id="birth-date" name="birth-date" placeholder="birth-date" required/>
            <input type="text" name="user_type" placeholder="user-type" required/>
            <input type="text" name="Username" placeholder="Username" required/>
            <input type="password" name="Password" placeholder="Password" required/>
            <input type="text" name="phone-number" placeholder="phone-number" />
            <button class="login-button" name="submit_creds">create</button>
        </form>
    </div>
    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>
