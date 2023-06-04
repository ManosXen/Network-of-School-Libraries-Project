<?php
include("header.php");
include("../config/db_connection.php");
$conn = OpenCon();

$id = $_GET["id"];

$errors = array('user_first_name' => '', 'user_last_name' => '');

$sql = "SELECT user_first_name, user_last_name, bday, username FROM users WHERE user_id=$id";
$result = mysqli_query($conn, $sql);
$res = mysqli_fetch_assoc($result);

$correct = true;

if (isset($_POST["submit"])) {
    $user_first_name = $_POST['user_first_name'];
    $user_last_name = $_POST['user_last_name'];

    if (strlen($user_first_name) < 2) {
        $errors['user_first_name'] = 'First names should be longer than 1 character';
        $correct = false;
    }

    if (strlen($user_last_name) < 3) {
        $errors['user_last_name'] = 'Last names should be longer than 2 characters';
        $correct = false;
    }

    if ($correct) {
        $sql = "UPDATE users SET user_first_name='$user_first_name', user_last_name='$user_last_name' WHERE user_id=$id";
        $result = mysqli_query($conn, $sql);
        if (mysqli_affected_rows($conn) > 0) {
            echo "Table updated successfully";
            header('Location: lib_admin.php?up-suc=true');
            exit();
        } else {
            echo "Error updating table: " . mysqli_error($conn);
        }
    }
}
?>


<!DOCTYPE html>
<html>
<head>
    <title>Change the Information of the Library Admin: <?php echo "{$res['user_last_name']}, {$res['user_first_name']}" ?></title>
    <style>
    </style>
</head>
<body>
<div class="login-box-school">
    <h2>Change the Information of the Library Admin: <br><?php echo "{$res['user_last_name']}, {$res['user_first_name']}" ?> below</h2>
    <form class="login-form" action="lib_admin_edit.php?id=<?php echo $id; ?>" method="POST">
        <label for="user_first_name">First Name</label>
        <input type="text" id="user_first_name" name="user_first_name"
               value="<?php if (!isset($_POST['submit'])) echo $res['user_first_name']; else echo $user_first_name ?>"
               required/>
        <div class="err-msg"><?php echo $errors['user_first_name'] ?></div>
        <label for="user_last_name">Last Name</label>
        <input type="text" id="user_last_name" name="user_last_name"
               value="<?php if (!isset($_POST['submit'])) echo $res['user_last_name']; else echo $user_last_name ?>"
               required/>
        <div class="err-msg"><?php echo $errors['user_last_name'] ?></div>
        <button type="submit" name="submit" value="submit" class="login-button">Submit</button>
    </form>
    <a href="edit_phone.php?user_id=<?php echo $id;?>"><button type="submit" value="cancel" class="login-button">Edit Phone</button></a>
    <br>
    <br>
    <a href="lib_admin.php?cancel_up=true"><button type="submit" value="cancel" class="login-button">Cancel</button></a>
</div>
</body>
</html>
