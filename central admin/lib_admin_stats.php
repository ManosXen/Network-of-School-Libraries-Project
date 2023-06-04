<?php

include('header.php');
include("../config/db_connection.php");
$conn = OpenCon();

$sql_all_time = "SELECT * from loans_per_admin_all_time; ";
$loans_all_time = mysqli_query($conn, $sql_all_time);

if (!$loans_all_time) {
    die('Error executing query: ' . mysqli_error($conn));
}

$sql_current = "SELECT * from loans_per_current_admin;";
$loans_current = mysqli_query($conn, $sql_current);

$sql_same = "SELECT * from same_loans_per_admin_same_year;";
$loans_same = mysqli_query($conn, $sql_same);

?>

<!DOCTYPE HTML>
<html>
<head>
    <title>Admin Stats</title>
    <script>
        function toggleVisibility(tableId, textId) {
            var table = document.getElementById(tableId);
            var text = document.getElementById(textId);

            if (table.style.display === 'none') {
                table.style.display = 'table';
                text.style.display = 'block';
            } else {
                table.style.display = 'none';
                text.style.display = 'none';
            }
        }
        function toggleTableVisibility(tableId) {
            var table = document.getElementById(tableId);
            if (table.style.display === 'none') {
                table.style.display = 'table';
            } else {
                table.style.display = 'none';
            }
        }
    </script>
</head>
<body>
    <h1 style="text-align: center;">Lib Admininstrator Statistics</h1>
    <h2>The all time top 10 lib admins in loans are:</h2>
    <?php 
    if (mysqli_num_rows($loans_all_time) == 0) {
        ?><h4>There aren't any library administrators currently in the system</h4>
    <?php }
    else { ?>
    <button onclick="toggleVisibility('all_time', 'all_time_t')" class="inline-button">Tap the button to show/hide the following table</button>
    <h5 id='all_time_t'>In case there are fewer than 10 current and former library admins exist in the database, you will see all of them.</h5>
    <table id='all_time'>
        <thead>
            <th>Full Name</th>
            <th>Total Loans</th>
            <th>Current Role</th>
            <th>School</th>
        </thead>
        <tbody>
            <?php
            while ($loan_all_time = mysqli_fetch_assoc($loans_all_time)) {
                ?>
                <tr>
                    <td><?php echo $loan_all_time['admin_full_name']; ?></td>
                    <td><?php echo $loan_all_time['total_loans']; ?></td>
                    <td><?php echo $loan_all_time['school_name']; ?></td>
                    <td><?php echo $loan_all_time['user_role']; ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php } ?>
    <h2>The top 10 current lib admins in loans are:</h2>
    <?php 
    if (mysqli_num_rows($loans_current) == 0) {
        ?><h4>There aren't any library administrators currently in the system</h4>
    <?php }
    else { ?>
    <button onclick="toggleVisibility('current', 'current_t')" class="inline-button">Tap the button to show/hide the following table</button>
    <h5 id='current_t'>In case there are fewer than 10 library admins exist in the database, you will see all of them.</h5>
    <table id='current'>
        <thead>
            <th>Full Name</th>
            <th>Total Loans</th>
            <th>School Name</th>
        </thead>
        <tbody>
            <?php
            while ($loan_current = mysqli_fetch_assoc($loans_current)) {
                ?>
                <tr>
                    <td><?php echo $loan_current['admin_full_name']; ?></td>
                    <td><?php echo $loan_current['total_loans']; ?></td>
                    <td><?php echo $loan_current['school_name']; ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php } ?>
    <h2>Library admins (former and current) that lent the same numbers of books (over 20 total loans) in the same year are:</h2>
    <?php
    if (mysqli_num_rows($loans_same) == 0) {
        ?><h4>There are no admins that lent the same numbers of books in the same year.</h4><?php
    } else {
        ?>
        <button onclick="toggleTableVisibility('same')" class="inline-button">Tap the button to show/hide the following table</button>
        <table id='same'>
            <thead>
                <th>Full Name of the first</th>
                <th>Full Name of the second</th>
                <th>Number of Loans</th>
                <th>Year</th>
                <th>School that the first was library admin</th>
                <th>School that the second was library admin</th>
            </thead>
            <tbody>
                <?php
                while ($loan_same = mysqli_fetch_assoc($loans_same)) {
                    ?>
                    <tr>
                        <td><?php echo $loan_same['admin1_full_name']; ?></td>
                        <td><?php echo $loan_same['admin2_full_name']; ?></td>
                        <td><?php echo $loan_same['total_loans']; ?></td>
                        <td><?php echo $loan_same['y']; ?></td>
                        <td><?php echo $loan_same['school1']; ?></td>
                        <td><?php echo $loan_same['school2']; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    <?php } ?>
</body>
</html>
