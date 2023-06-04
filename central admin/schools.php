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
$del_suc = $del_fail = "";

if (isset($_GET['del-suc'])) {
    $del = $_GET['del-suc'];
    if ($del == 1) {
        $del_suc = 'The deletion was successful!';
    } else {
        $del_fail = "The deletion failed.";
    }
}


?>

<?php

if(!empty($_GET['cancel_up'])){
    
    $can_up='Update canceled';
}else{
    $can_up="";
}

?>

<div class="err-msg"><?php echo $can_up?></div>

<div class="suc-msg"><?php echo $del_suc?></div>
<div class="err-msg"><?php echo $del_fail?></div>


<?php

$sql = 'SELECT * FROM library';
$schools = mysqli_query($conn, $sql);


?>


<!DOCTYPE html>
<html>
  <head>
  </head>
  <body>
    <h1 style="text-align:center">Table of Schools</h1>
    <p>The table below shows all the schools that are currently in our database. To specific informations about schools such as loans per school, students, teachers and library admin click on it. For changes on schools informations click on the edit icon. To delete a school click on the X icon. Please note that when deleting a school all informations about its students, teachers, library administator, library administrator applications and loans will be deleted.</p>
    <?php 
    if(mysqli_num_rows($schools) == 0){
        ?> <h4>No schools were found. That might be due to the fact that there are no schools added yet or due to a connection error.</h4>
    <?php }else{ ?>
        <table>
        <thead>
            <th>School Name</th>
            <th>City</th>
            <th>Street</th>
            <th>Zip Code</th>
            <th>email</th>
            <th>Principal's Full Name</th>
            <th>Edit</th>
            <th>Delete</th>
        </thead>
        <tbody> 
            <?php foreach($schools as $school) {?>
            <tr style='cursor: pointer; cursor: hand;' onclick="window.location='teachers_and_students.php?school_name=<?php echo $school['school_name'] ?>';">
                <td  style="width: 20%"><?php echo $school['school_name'];?></td>
                <td><?php echo $school['city'];?></td>
                <td><?php echo $school['street_name'];?></td>
                <td><?php echo $school['zip_code'];?></td>
                <td><?php echo $school['email'];?></td>
                <td><?php 
                        $last_name = $school['principal_last_name'];
                        $first_name = $school['principal_first_name'];
                        echo $last_name . " " . $first_name;
                    ?></td>
                <td style="width: 10%"><a href="school_edit.php?id=<?php echo $school['school_id']?>"> <img src='../edit.png' class="gear"></a></td>
                <td style="width: 13%"><a href="school_del.php?id=<?php echo $school['school_id']?>"> <img src='../delete.png' class="gear"></a></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php }?>
</body>
</html>