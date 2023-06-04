<?php

include('header.php');
include('../config/db_connection.php');
$conn=OpenCon();




if(empty($_GET['school_name'])){
    echo 'You shouldnt be here';
    exit();
}else {
    $school_name=$_GET['school_name'];
}

$sql1="SELECT * from users_and_schools where school_name='$school_name' and user_role = 'teacher';";
$teachers=mysqli_query($conn, $sql1);

$sql2="SELECT * from users_and_schools where school_name='$school_name' and user_role = 'student';";
$students=mysqli_query($conn, $sql2);

$sql3="SELECT * from users_and_schools where school_name='$school_name' and user_role = 'library admin';";
$lib_admin=mysqli_query($conn, $sql3);

if(mysqli_num_rows($lib_admin)==0){
    $admin="There is no library admin in this school. See the request if any teachers of that school has applied.";
}else{
    $admin=mysqli_fetch_assoc($lib_admin);
    $admin=$admin['full_name'];
}



?>

<!DOCTYPE html>
<html>
    <head>
        <title>Teachers and Students of <?php echo $school_name;?></title>
    </head>
    <body>
        <h2 style="text-align:center">Below there are displayed the libray admin, the teachers and the students of the <br ><?php echo $school_name;?></h2>
        <h4>Library Admin: <?php echo $admin;?></h4>
        <h4>Teachers:</h4>
        <?php 
            if(mysqli_num_rows($teachers)==0){
                echo "There arent any teachers currently in this school!";
            }else{ ?>
                <table>
                    <thead>
                        <th>Full Name</th>
                        <th>Birthday</th>
                        <th>Signup day</th>
                        <th>Username</th>
                    </thead>
                    <tbody>
                        <?php while($teacher = mysqli_fetch_assoc($teachers)) {?>
                            <tr>
                            <td><?php echo $teacher['full_name']?></td>
                            <td><?php echo $teacher['bday']?></td>
                            <td><?php echo $teacher['sign_day']?></td>
                            <td><?php echo $teacher['username']?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <?php } ?>
        <h4>Students:</h4>
        <?php 
            if(mysqli_num_rows($students)==0){
                echo "There arent any students currently in this school!";
            }else{ ?>
                <table>
                    <thead>
                        <th>Full Name</th>
                        <th>Birthday</th>
                        <th>Signup day</th>
                        <th>Username</th>
                    </thead>
                    <tbody>
                        <?php while($student = mysqli_fetch_assoc($students)) {?>
                            <tr>
                            <td><?php echo $student['full_name']?></td>
                            <td><?php echo $student['bday']?></td>
                            <td><?php echo $student['sign_day']?></td>
                            <td><?php echo $student['username']?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
        <?php } ?>
        

    </body>
</html>