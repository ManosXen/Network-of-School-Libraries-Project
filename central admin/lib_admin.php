<?php

include("header.php");
include('../config/db_connection.php');
$conn=OpenCon();

if(!empty($_GET['up-suc'])){
    $up_suc='The update was successfully!';
}else{
    $up_suc="";
}

?>

<div class="suc-msg"><?php echo $up_suc?></div>

<?php

if(!empty($_GET['ins_suc'])){
    $ins_suc='The insertion was successfully!';
}else{
    $ins_suc="";
}

?>

<div class="suc-msg"><?php echo $ins_suc?></div>


<?php

if(!empty($_GET['cancel_up'])){
    
    $can_up='Update canceled';
}else{
    $can_up="";
}

?>

<div class="err-msg"><?php echo $can_up?></div>

<?php

$sql = "SELECT u.user_id as user_id, CONCAT(u.user_first_name, ' ', u.user_last_name) as user_full_name, u.username, l.school_name as school_name FROM users u join school_user su on su.user_id = u.user_id join library l on l.school_id = su.school_id where user_role = 'library admin';";
$admins = mysqli_query($conn, $sql);

if (!$admins) {
    // An error occurred
    echo "Error: " . mysqli_error($conn);
}

if(mysqli_num_rows($admins) == 0){
    echo "Connection error";
}


?>


<!DOCTYPE html>
<html>
  <head>
  </head>
  <body>
    <h1 style="text-align:center">Library Admins</h1>
    <p>The table below shows all the library admins that are currently in our database. Every school has one library admin at the time. If you want to change the informations of a library admin click on the gear icon. To change the library admin of a school check the pending application from the menu above.</p>
    <?php 
    if(mysqli_num_rows($admins) == 0){
        ?> <h4>No library admins were found. That might be due to the fact that there are no schools added yet or due to a connection error.</h4>
    <?php }else{ ?>
    <table>
        <thead>
            <th>Full name</th>
            <th>School</th>
            <th>Username</th>
            <th>Edit</th>
        </thead>
        <tbody> 
            <?php while($admin = mysqli_fetch_assoc($admins)) {?>
                <tr style='cursor: pointer; cursor: hand;' onclick="window.location='lib_admin_info.php?id=<?php echo $admin['user_id'] ?>';">
                <td  style="width: 20%"><?php echo $admin['user_full_name'];?></td>
                <td><a href='teachers_and_students.php?school_name=<?php echo $admin['school_name'] ?>'><?php echo $admin['school_name'];?></a></td>
                <td><?php echo $admin['username'];?></td>
                <td style="width: 10%"><a href="lib_admin_edit.php?id=<?php echo $admin['user_id']?>"> <img src='../edit.png' class="gear"></a></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php } ?>
</body>
</html>