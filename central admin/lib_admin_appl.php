<?php

include("header.php");
include("../config/db_connection.php");
$conn = OpenCon();

$sql = "SELECT * from lib_admin_appl";
$result = mysqli_query($conn, $sql);

$acc_suc="";
$dec_suc="";

if(!empty($_GET['acc_suc'])){
    $acc = $_GET['acc_suc'];
    if($acc==1) $acc_suc = "Library admin accepted";
    else $acc_suc = "Library admin accept: Failed";
}

if(!empty($_GET['dec_suc'])){
    $del = $_GET['dec_suc'];
    if($del==1) $dec_suc = "Application declined successfully";
    else $dec_suc = "Failed to decline application";
}

?>

<div class="suc-msg"><?php echo $acc_suc?></div>
<div class="err-msg"><?php echo $dec_suc?></div>


<!DOCTYPE html>
<html>

<head>
    <title>Library Admin Applications</title>
    <style>
        [data-tooltip] {
            position: relative;
            cursor: default;
        }

        [data-tooltip]:hover::before {
            position: absolute;
            width: 150px;
            left: calc(50% - 75px);
            content: attr(data-tooltip);
            bottom: 125%;
            text-align: center;
            box-sizing: border-box;
            background-color: #2b2e3d;
            border-radius: 10px;
            padding: 8px;
            font-size: 0.9em;
            font-weight: bold;
            visibility: hidden;
            opacity: 0;
            transform: translateY(10px);
            transition: opacity 0.3s, transform 0.2s;
        }

        [data-tooltip]:hover::before {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }
    </style>
</head>

<body>
  <h1 style="text-align:center">Library Admin Applications</h1>
  <h4>The table below shows all the applications for library administrators.</h4>
  <p>To see an applicant's information hover over their name is displayed. To accept an application, click on the check mark. To decline an application, click on the X. Remember that there can only be one library admin per school at a time. If a library administrator candidate is approved, the current library admin will lose their role and become a regular teacher without any privileges.</p>
  <?php
  if (mysqli_num_rows($result) == 0) {
    ?><h4>No applications yet.</h4><?php
  } else { ?>
  <div class="tooltip">
    <table>
      <thead>
        <tr>
          <th>Applicant's full name</th>
          <th>School</th>
          <th>Current library admin</th>
          <th>Accept</th>
          <th>Reject</th>
        </tr>
      </thead>
      <tbody> 
        <?php while ($res = mysqli_fetch_assoc($result)) {?>
        <tr>
          <td style="width: 20%" data-tooltip="Total loans: <?php echo $res['num_loans']?> Total Reviews: <?php echo $res['num_reviews']?> Member Since: <?php echo $res['sign_day']?>"><?php echo $res['full_name'];?></td>
          <td><a href="teachers_and_students.php?school_name=<?php echo $res['school_name']; ?>"><?php echo $res['school_name'];?></a></td>
          <td><?php echo $res['admin_full_name'];?></td>
          <td style="width: 10%"><a href="lib_admin_appl_answer.php?acc=<?php echo $res['user_id']?>"> <img src="../check.png" class="gear"></a></td>
          <td style="width: 7%"><a href="lib_admin_appl_answer.php?dec=<?php echo $res['user_id']?>"> <img src="../x.png" class="gear"></a></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
  <?php } ?>
</body>
</html>

