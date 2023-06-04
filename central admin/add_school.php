<?php
include("header.php");

$errors = array('school_name' => '', 'city' => '', 'street_name' => '', 'zip_code' => '', 'email' => '', 'principal_first_name' => '', 'principal_last_name' => '', 'user_first_name' => '', 'user_last_name' => '', 'bday' => '', 'username' => '', 'password' => '', 'phone_number' => '');
include("../config/db_connection.php");
$conn = OpenCon();
$correct = true;

$school_name = '';
$city = ''; 
$street_name = '';
$zip_code = '';
$email = '';
$principal_first_name = '';
$principal_last_name = '';
$res['user_first_name'] = '';
$res['user_last_name'] = '';
$res['bday']  = '';
$res['username'] = '';
$res['user_password'] = '';
$res['phone_number'] = '';

if (isset($_POST["submit"])) {
    $school_name = $_POST['school_name'];
    $city = $_POST['city']; 
    $street_name = $_POST['street_name'];
    $zip_code = $_POST['zip_code'];
    $email = $_POST['email'];
    $principal_first_name = $_POST['principal_first_name'];
    $principal_last_name = $_POST['principal_last_name'];

    if (strlen($school_name) < 3) {
        $errors['school_name'] = 'School names should be longer than 2 characters';
        $correct = false;
    }else{
        $unique_test = "SELECT school_name from library where school_name='{$school_name}';";
        $unique = mysqli_query($conn, $unique_test);
        if (!$unique) {
            echo mysqli_error($conn);
        }
        if (mysqli_num_rows($unique) != 0) {
            $valid = false;
            $error['school_name'] = 'School name should be unique';
        }
    }

    if (strlen($city) < 3) {
        $errors['city'] = 'City names should be longer than 2 characters';
        $correct = false;
    }

    if (strlen($street_name) < 3) {
        $errors['street_name'] = 'Street names should be longer than 2 characters';
        $correct = false;
    }

    if (strlen($zip_code) !== 5) {
        $errors['zip_code'] = 'Zip codes should be exactly 5 characters';
        $correct = false;
    }

    if (strlen($email) < 6 || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = 'Emails should be longer than 5 characters and should have the right format';
        $correct = false;
    }

    if (strlen($principal_first_name) < 2) {
        $errors['principal_first_name'] = "Principal's first name should be longer than 1 character";
        $correct = false;
    }

    if (strlen($principal_last_name) < 2) {
        $errors['principal_last_name'] = "Principal's last name should be longer than 1 character";
        $correct = false;
    }
    $res['user_first_name'] = $_POST['first_name'];
    $res['user_last_name'] = $_POST['last_name'];
    $res['bday'] = $_POST['bday'];
    $res['username'] = $_POST['username'];
    $res['user_password'] = $_POST['password'];
    $res['phone_number'] = $_POST['phone_number'];
    if (strlen($res['username']) < 6) {
        $correct = false;
        $errors['username'] = 'Username should be longer than 5 characters';
    }
    if (strlen($res['user_first_name']) < 2) {
        $correct = false;
        $errors['user_first_name'] = 'User first name should be longer that 2 characters';
    }

    if (strlen($res['user_last_name'] < 2)) {
        $correct = false;
        $errors['user_last_name'] = 'User last name should be longer that 2 characters';
    }

    if ($res['bday'] > date("Y") - 25) {
        $correct = false;
        $errors['bday'] = 'The central admin should be at least 25 years old';
    }
    if (strlen($res['user_password']) < 6) {
        $correct = false;
        $errors['password'] = 'The password should be longer that 5 characters';
    }
    if(strlen($res['phone_number'])!=0 && strlen($res['phone_number'])!=10){
            $correct = false;
            $errors['phone_number'] = 'Phone numbers should have exactly 10 characters';
    }
    if ($correct) {
        $sql = "INSERT INTO library (school_name, city, street_name, zip_code, email, principal_first_name, principal_last_name) VALUES ('$school_name', '$city', '$street_name', '$zip_code', '$email', '$principal_first_name', '$principal_last_name');";
        $result = mysqli_query($conn, $sql);
        $sqladmin = "INSERT INTO users(user_first_name, user_last_name,  bday, user_role, username, user_password) VALUES ('{$res['user_first_name']}', '{$res['user_last_name']}', '{$res['bday']}', 'library admin', '{$res['username']}', '{$res['user_password']}');";    
        $resultadmin = mysqli_query($conn, $sqladmin);
        if(strlen($res['phone_number'])!=0){
            $sql_phone = "INSERT user_phone(phone_number, user_id) select '{$res['phone_number']}', user_id from users where user_first_name = '{$res['user_first_name']}' and user_last_name = '{$res['user_last_name']}';";
            $resut_ph = mysqli_query($conn, $sql_phone);
            if(!$resut_ph){
                echo "Query execution failed: " . mysqli_error($conn);
            }
        }
        if ($result && $resultadmin) {
                if (mysqli_affected_rows($conn) > 0) {
                    header('Location: schools.php?ins_suc=true');
                    exit();
                } else {
                    echo "Error inserting into table";
                }
            } else {
                echo "Query execution failed";
            }
        }
}




?>


<!DOCTYPE html>
<html>
  <head>
    <title>Add a new school below</title>
    <script>
    function addPhoneNumber() {
        var container = document.getElementById("phone-container");
        var phoneCount = container.getElementsByTagName("input").length + 1;

        var newInput = document.createElement("input");
        newInput.type = "text";
        newInput.name = "phone_number_" + phoneCount;
        newInput.required = true;

        container.appendChild(newInput);
    }

    function removePhoneNumber() {
        var container = document.getElementById("phone-container");
        var inputs = container.getElementsByTagName("input");

        if (inputs.length > 1) {
            container.removeChild(inputs[inputs.length - 1]);
        }
    }
    </script>
  </head>
  <body>
    <div class="login-box-school">
        <div class="login-box-school-container">
            <h2>Add Information for the School you want to add below</h2>
            <form class="login-form" action="add_school.php?>" method="POST">
                <label for="school_name">School Name</label>
                <input type="text" id="school_name" name="school_name" value="<?php echo $school_name;?>" required/>
                <div class="err-msg"><?php echo $errors['school_name']?></div>
                <label for="city">City</label>
                <input type="text" id="city" name="city" value="<?php echo $city;?>" required/>
                <div class="err-msg"><?php echo $errors['city']?></div>
                <label for="street">Street and Street Number</label>
                <input type="text" id="street" name="street_name" value="<?php echo $street_name;?>" required/>
                <div class="err-msg"><?php echo $errors['street_name']?></div>
                <label for="zip">Zip Code</label>
                <input type="text" id="zip" name="zip_code" value="<?php echo $zip_code;?>" required/>
                <div class="err-msg"><?php echo $errors['zip_code']?></div>
                <label for="zip">Email</label>
                <input type="text" id="email" name="email" value="<?php echo $email;?>" required/>
                <div class="err-msg"><?php echo $errors['email']?></div>
                <label for="pfn">Principal's First Name</label>
                <input type="text" id="pfn" name="principal_first_name" value="<?php echo $principal_first_name;?>" required/>
                <div class="err-msg"><?php echo $errors['principal_first_name']?></div>
                <label for="principal_last_name">Principal's Last Name</label>
                <input type="text" id="principal_last_name" name="principal_last_name" value="<?php echo $principal_last_name?>" required/>
                <div class="err-msg"><?php echo $errors['principal_last_name']?></div>
                <h2>Add Information for the Library Admin of the school you want to add below</h2>
                <label for="first_name">First Name:</label>
                <input type="text" name="first_name" id="first_name" value="<?php echo  $res['user_first_name'];?>"  required/>
                <div class="err-msg"><?php echo $errors['user_first_name']?></div>
                <label for="last_name">Last Name:</label>
                <input type="text" name="last_name" id="last_name" value="<?php echo  $res['user_last_name'];?>" required/>
                <div class="err-msg"><?php echo $errors['user_last_name']?></div>
                <label for="bday">Birthday:</label>
                <input type="date" name="bday" id="bday" value="<?php echo $res['bday'];?>" required/>
                <div class="err-msg"><?php echo $errors['bday']?></div>
                <label for="username">Username:</label>
                <input type="text" name="username" id="username" value="<?php echo $res['username'];?>" required/>
                <div class="err-msg"><?php echo $errors['username']?></div>
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" value="<?php echo $res['user_password'];?>" required/>
                <div class="err-msg"><?php echo $errors['password']?></div>
                <label for="phone-number">Phone Numbers:</label>
                <input type="text" name="phone_number value="<?php echo $res['phone_number'];?>" required/>
                <div class="err-msg"><?php echo $errors['phone_number']?></div>
                <button type="submit" name="submit" value="submit" class="login-button">Submit </button>
            </form>
        </div>
    </div>
  </body>
</html>
