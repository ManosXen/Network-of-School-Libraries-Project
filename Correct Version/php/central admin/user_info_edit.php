<?php

include('../config/db_connection.php');
include('header.php');

session_start();


if (isset($_POST['cancel'])) {
    header('Location: user_info.php');
}

$conn = OpenCon();
$id = $_SESSION['user_id']; // Store the session variable in a separate variable
$error = array('user_first_name' => '', 'user_last_name' => '', 'bday' => '', 'username' => '', 'password' => '', 'phone_number' => '');

// $test = $_POST['submit'];
if (!isset($_POST['submit'])) {
    $sql = "SELECT u.user_first_name, u.user_last_name, u.bday, u.username, u.user_password FROM users u WHERE u.user_id = {$id};";
    $result = mysqli_query($conn, $sql);
    $res = mysqli_fetch_assoc($result);
} else {
    $valid = true;
    $res['user_first_name'] = $_POST['first_name'];
    $res['user_last_name'] = $_POST['last_name'];
    $res['bday'] = $_POST['bday'];
    $res['username'] = $_POST['username'];
    $res['user_password'] = $_POST['password'];

    if (strlen($res['username']) > 5) {
        $unique_test = "SELECT username from users where username = '{$res['username']}' and user_id <> $id;";
        $unique = mysqli_query($conn, $unique_test);
        if (!$unique) {
            echo mysqli_error($conn);
        }
        if (mysqli_num_rows($unique) != 0) {
            $valid = false;
            $error['username'] = 'Username should be unique';
        }
    } else {
        $valid = false;
        $error['username'] = 'Username should be longer than 5 characters';
    }
    if (strlen($res['user_first_name']) < 2) {
        $valid = false;
        $error['user_first_name'] = 'User first name should be longer that 2 characters';
    }

    if (strlen($res['user_last_name'] < 2)) {
        $valid = false;
        $error['user_last_name'] = 'User last name should be longer that 2 characters';
    }

    if ($res['bday'] > date("Y") - 25) {
        $valid = false;
        $error['bday'] = 'The central admin should be at least 25 years old';
    }
    if (strlen($res['user_password']) < 6) {
        $valid = false;
        $error['password'] = 'The password should be longer that 5 characters';
    }

    if ($valid) {
        $upd_user = "UPDATE users SET user_first_name = '{$res['user_first_name']}', user_last_name = '{$res['user_last_name']}', bday = '{$res['bday']}', username = '{$res['username']}', user_password = '{$res['user_password']}' WHERE user_id = $id;";
        $upd_user_res = mysqli_query($conn, $upd_user);
        if (!$upd_user_res) {
            mysqli_error($conn);
            header('Location: user_info.php?upd=0');
        }
        header('Location: user_info.php?upd=1');
    }
    
    
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Central Admin</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="login-box" style="margin-top:10%;">
        <form class="login-form" action="user_info_edit.php" method="post">
            <h2>Edit</h2>
            <label for="first_name">First Name:</label>
            <input type="text" name="first_name" id="first_name" value="<?php echo  $res['user_first_name'];?>"  required/>
            <div class="err-msg"><?php echo $error['user_first_name']?></div>
            <label for="last_name">Last Name:</label>
            <input type="text" name="last_name" id="last_name" value="<?php echo  $res['user_last_name'];?>" required/>
            <div class="err-msg"><?php echo $error['user_last_name']?></div>
            <label for="bday">Birthday:</label>
            <input type="date" name="bday" id="bday" value="<?php echo $res['bday'];?>" required/>
            <div class="err-msg"><?php echo $error['bday']?></div>
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="<?php echo $res['username'];?>" required/>
            <div class="err-msg"><?php echo $error['username']?></div>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" value="<?php echo $res['user_password'];?>" required/>
            <div class="err-msg"><?php echo $error['password']?></div>
            <div class="err-msg"><?php echo $error['phone_number']?></div>
            <button class="login-button" name="submit">Submit</button>
        </form>
        <a href="edit_phone_user.php"><button type="submit" value="cancel" class="login-button">Edit Phone</button></a>
        <br>
        <br>
        <a href="user_info.php?cancel=1"><button type="submit" value="cancel" class="login-button">Cancel</button></a>
    </div>
</body>
</html>