<?php

include("header.php");

include("../config/db_connection.php");
$conn=OpenCon();

$id=$_GET["id"];

$errors = array('school_name' => '', 'city' => '', 'street_name' => '', 'zip_code' => '', 'email' => '', 'principal_first_name' => '', 'principal_last_name' => '');

$sql = "SELECT school_name, city, street_name, zip_code, email, principal_first_name, principal_last_name FROM library WHERE school_id=$id;";

$result= mysqli_query($conn, $sql);

$res= mysqli_fetch_assoc($result);

$sql_teachers = "SELECT u.user_id, u.user_first_name, u.user_last_name from users u join school_user su on su.user_id = u.user_id where su.school_id = $id and u.user_role = 'teacher';";
$sql_library_admin = "SELECT u.user_id, u.user_first_name, u.user_last_name from users u join school_user su on su.user_id = u.user_id where su.school_id = $id and u.user_role = 'library admin';";

$resultth=mysqli_query($conn, $sql_teachers);
$resteachers = mysqli_query($conn, $sql_teachers);
$res_lib_admin = mysqli_query($conn, $sql_library_admin);

if(mysqli_num_rows($res_lib_admin) == 0){
    $admin = false;
}else {
    $admin = true;
    $old_admin = mysqli_fetch_assoc($res_lib_admin);
}
$correct=true;

if(isset($_POST["submit"])){
    $school_name = $_POST['school_name'];
    $city = $_POST['city']; 
    $street_name = $_POST['street_name'];
    $zip_code = $_POST['zip_code'];
    $email = $_POST['email'];
    $principal_first_name = $_POST['principal_first_name'];
    $principal_last_name = $_POST['principal_last_name'];
    $new_admin = $_POST['lib_admin'];

    if(strlen($school_name)<3){
        $errors['school_name']= 'School names should be longer that 2 characters';
        $correct=false;
    }

    if(strlen($city)<3){
        $errors['city']= 'City names should be longer that 2 characters';
        $correct=false;
    }

    if(strlen($street_name)<3){
        $errors['street_name']= 'Street names should be longer that 2 characters';
        $correct=false;
    }

    
    if(!strlen($zip_code)==5){
        $errors['street_name']= 'Zip codes should be exacly 5 characters';
        $correct=false;
    }
    

    if(strlen($email)<6 || !filter_var($email, FILTER_VALIDATE_EMAIL)){
        $errors['email']= 'Emails should be longer than 5 characters and should have the right form';
        $correct=false;
    }
    
    if(strlen($principal_first_name)<2){
        $errors['principal_first_name']= "Principal's first name should be longer than 1 character";
        $correct=false;
    }

    if(strlen($principal_last_name)<2){
        $errors['principal_last_name']= "Principal's last name should be longer than 1 character";
        $correct=false;
    }

    if($correct){
        $sql= "UPDATE library set school_name='$school_name', city='$city', street_name='$street_name', zip_code='$zip_code', email='$email', principal_first_name= '$principal_first_name', principal_last_name='$principal_last_name' where school_id=$id;";
        $result=mysqli_query($conn, $sql);
        $changed = false;
        if(mysqli_affected_rows($conn)>0){
            $changed = true;
        }  
        if(mysqli_num_rows($res_lib_admin) == 0){
            $admin_change = "UPDATE users set user_role = 'library admin' where user_id = $new_admin;";
        }else if($old_admin['user_id']!=$new_admin){
            echo $old_admin['user_id']. ' ' . $new_admin;
            $admin_change_new = "UPDATE users set user_role = 'library admin' where user_id = $new_admin;";
            mysqli_query($conn, $admin_change_new);
            $admin_change_old = "UPDATE users set user_role = 'teacher' where user_id = {$old_admin['user_id']};";
            mysqli_query($conn, $admin_change_old);
        }
        if(mysqli_affected_rows($conn)>0){
            $changed = true;
        } 
        if($changed){
            header('Location: schools.php?up-suc=true');
        }else{
            echo "Error updating table or same informations as before" . mysqli_error($conn);
        }
    }

}


?>


<!DOCTYPE html>
<html>
  <head>
    <title>Change the Information of School <?php echo $res['school_name'];?> below</title>
    <style>
</style>
  </head>
  <body>
    <div class="login-box-school" style="margin-top:25%;">
        <h2>Change the Information of School: <br > <?php echo $res['school_name'];?> below</h2>
        <form class="login-form" action="school_edit.php?id=<?php echo $id;?>" method="POST">
            <label for="school_name">School Name</label>
            <input type="text" id="school_name" name="school_name" value="<?php echo $res['school_name'];?>" required/>
            <div class="err-msg"><?php echo $errors['school_name']?></div>
            <label for="city">City</label>
            <input type="text" id="city" name="city" value="<?php echo $res['city'];?>" required/>
            <div class="err-msg"><?php echo $errors['city']?></div>
            <label for="street">Street and Street Number</label>
            <input type="text" id="street" name="street_name" value="<?php echo $res['street_name'];?>" required/>
            <div class="err-msg"><?php echo $errors['street_name']?></div>
            <label for="zip">Zip Code</label>
            <input type="text" id="zip" name="zip_code" value="<?php echo $res['zip_code'];?>" required/>
            <div class="err-msg"><?php echo $errors['zip_code']?></div>
            <label for="zip">Email</label>
            <input type="text" id="email" name="email" value="<?php echo $res['email'];?>" required/>
            <div class="err-msg"><?php echo $errors['email']?></div>
            <label for="pfn">Principal's First Name</label>
            <input type="text" id="pfn" name="principal_first_name" value="<?php echo $res['principal_first_name'];?>" required/>
            <div class="err-msg"><?php echo $errors['principal_first_name']?></div>
            <label for="principal_last_name">Principal's Last Name</label>
            <input type="text" id="principal_last_name" name="principal_last_name" value="<?php echo $res['principal_last_name'];?>" required/>
            <div class="err-msg"><?php echo $errors['principal_last_name']?></div>
            <?php
            if(!$admin){
                ?> <div class="err-msg">No library administrator found</div>
                <br><?php
            }
            ?>
            <label for = 'lib_admin'>Select new library administrator:</label>
            <select name='lib_admin' id='lib_admin'>
                <?php
                if($admin){ ?>
                    <option value="<?php echo $old_admin['user_id'];?>"><?php echo $old_admin['user_first_name'] . ' ' . $old_admin['user_last_name'] . '(Current Library Admin)';?></option>
                    <?php }
                while($teacher = mysqli_fetch_assoc($resteachers)){ ?>
                    <option value="<?php echo $teacher['user_id'];?>"><?php echo $teacher['user_first_name'] . ' ' . $teacher['user_last_name'];?></option>
                 <?php } ?>
            </select>
            <button type="submit" name="submit" value="submit" class="login-button">Submit </button>
        </form>
        <a href="schools.php?cancel_up=true"><button type="submit" value="cancel" class="login-button">Cancel</button></a>
    </div>
  </body>
</html>
