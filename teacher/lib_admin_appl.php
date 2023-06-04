<?php

include('../config/db_connection.php');
$conn = OpenCon();
session_start();
$id = $_SESSION['user_id'];

$cancel=true;

$sql = "SELECT application_id, request_status, last_status_update from applications where user_id = $id ORDER BY last_status_update; ";
$result = mysqli_query($conn, $sql);

$msg='';

if(!empty($_GET['suc'])){
    $suc = $_GET['suc'];

    if($suc==1) $msg= 'Success'; 
    else if($suc==0) $msg =  'Havent passed 30 days since your last application has been canceled or since your last application has been declined';
    else if($suc==2) $msg =  'You already have a pending request';
    else if($suc==3) $msg ='Application has been canceled';
}


?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit credentials</title>
    <link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
<header>
		<h1>Welcome to School libraries</h1>
		<nav class="navbar">
		    <img src="logo.png" alt="Logo" class="logo">
			<ul>
                <li><a href="home.php">Home</a></li>
				<li><a href="my_loans.php">My loans</a></li>
				<li><a href="my_credentials.php">My credentials</a></li>
                <li><a href="reviews.php">Book reviews</a></li>
                <li><a href="my_reviews.php">My reviews</a></li>
                <li><a href="change_password.php">Change password</a></li>
                <li><a href="edit-phone.php">Edit phone</a></li>
				<li><a href="logout.php">Logout</a></li>
			</ul>
		</nav>
	</header>
    <p><?php echo $msg;?></p>
    <h2 style= "text-align:center;">Library Administration Applications</h2>
    <h3>The following table shows your library administator applications (if there are any)</h3>
    <?php 
    if(mysqli_num_rows($result)==0){
        ?><p>You havent made any applications yet.</p>
        <?php
    }else{
        ?>
        <table>
            <thead>
                <th>Application id</th>
                <th>Application Status</th>
                <th>Last Status Update</th>
                <th>Cancel</th>
            </thead>
            <tbody>
            <?php while($app = mysqli_fetch_assoc($result)){ 
                if($app['request_status']!='canceled' || $cancel) {?>
                <tr>
                    <td><?php echo $app['application_id'];?></td>
                    <td><?php echo $app['request_status'];?></td>
                    <td><?php echo $app['last_status_update'];?></td>
                    <td><a href = "lib_admin_cancel.php?id=<?php echo $app['application_id'];?>">Cancel</a></td>
                <?php 
                    $cancel=false;
                } 
                }?>
                </tr>
            </tbody>
        </table>
    
    <?php } ?>
    
    <h3>To apply for Library administator press the following button. Keep in mind that you can not apply if you already have a pending request or you have a declined request in the last month.</h3>
    <a href="lib_admin_new.php?id=<?php echo $id;?>"><button class="inline-button" name="submit_creds">Apply for Library Admin</button><butto</a>    


    <footer id="site-footer">
        <p>&copy; 2023 School Libraries Site. All rights reserved.</p>
    </footer>
</body>
</html>