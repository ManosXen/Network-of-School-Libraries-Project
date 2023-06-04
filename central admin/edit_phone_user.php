<?php
include('header.php');
include ('../config/db_connection.php');
$conn = OpenCon();
if (session_status() !== PHP_SESSION_ACTIVE) {
    session_start();
}
$userID = $_SESSION['user_id'];  
$queryname = "SELECT user_first_name, user_last_name from users where user_id=$userID ";
$resultname = mysqli_query($conn, $queryname);
$resname = mysqli_fetch_assoc($resultname);
if(isset($_POST['submit'])){
    $flag=0;
    if(empty($_POST["phone_number"])){
        die("phone number is required");
    }
        $phone_number = $_POST['phone_number'];
        if(!preg_match('/^[0-9]{10}$/', $phone_number)){
            $error="Phone number should be a 10-digit integer";
        }
        else{
            
            try{
                if (session_status() !== PHP_SESSION_ACTIVE) {
                    session_start();
                }   
                if(isset($_SESSION['user_id'])){
                    $userID = $_SESSION['user_id'];
                    $query = "INSERT IGNORE  INTO user_phone(phone_number,user_id)
                            VALUES ('$phone_number', $userID);"; 
                    if(mysqli_query($conn, $query)){
                        if(mysqli_affected_rows($conn) == 0){
                            $error="Phone number already exists.";
                            $flag=1;
                        }
                        else{
                        header("Location: ".$_SERVER['PHP_SELF']);
                        exit();
                        }
                    }
                    else{
                        if($flag==0){
                             $error = "Error while creating record: <br>" . mysqli_error($conn);
                        }
                    }
                }
                else{
                    if($flag==0){
                            $error="Error in session please login again";
                    }
                }
            }   
            catch (Exception $e) {
                if($flag==0){
                    echo "Error: " . $e->getMessage();
                }
                }
        }
}
?>



<!DOCTYPE html>
<html>
<head>
	<title>Edit Phone Number</title>
</head>
<body>
	<header>
	</header>

	<main>

		<section>
			<h1 style="text-align:center">Edit Phone number of user <?php echo "{$resname['user_first_name']} {$resname['user_last_name']}";?></h1>
            <p>In the table below there are all the phone numbers of the user <?php echo "{$resname['user_first_name']} {$resname['user_last_name']}";?>. To delete a phone number click on the X icon next to the phone number you wish to delete. If you want to add a phone number write it in the input box below and then click on 'Add phone'.</p>
   		 <?php
 
            if (isset($_SESSION['user_id'])) {
                $query = "SELECT phone_number from users u join user_phone p on u.user_id=p.user_id where u.user_id=$userID ";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result) == 0) {
                    echo '<h1 style="margin-top: 5rem;">No phone numbers in the database!</h1>';
                } 
                else{
                    echo '<div class="table-responsive">';
                    echo '<table class="loan-table">';
                    echo '<thead>';
                    echo '<tr>';
                    echo '<th>phone numbers</th>';
                    echo '<th></th>';
                    echo '</tr>';
                    echo '</thead>';
                    echo '<tbody>';
                    while ($row = mysqli_fetch_row($result)) {
                        echo '<tr>';
                        echo '<td>' . $row[0] . '</td>';
                        echo '<td style="width: 10%"><a class="link" href="delete-phone.php?phone_number=' .$row[0] . '"><alt="Edit" class=edit-icon><img src="../x.png" class="gear"></a></td>'; 
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
        <div class="phone-box">
        <h1>Add phone number</h1>
        <form action="" method="POST" >
        <?php if (!empty($error)) { ?>
            <div class="error-message">
                <?php echo $error; ?>
            </div>
        <?php } ?>
        <input type="text" name="phone_number" placeholder="Add a phone number here" />
            <button type="submit" name="submit" value="phone_number" class="inline-button">Add number</button>
        </form>
    </div>

		</section>

	</main>
</body>
</html>
