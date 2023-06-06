<?php

include('header.php');
include("../config/db_connection.php");
$conn = OpenCon();

$sql_top_3 = "SELECT * from top_genre_pairs; ";
$list_top3 = mysqli_query($conn, $sql_top_3);



?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Book Stats</title>
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
        <h1 style="text-align: center;">Book Stats</h1>
        <h2>Most popular pairs of genres are: </h2>
        <?php
        if(mysqli_num_rows($list_top3) == 0){
            ?><h4>No pairs of genres found. Atleast one book with more than one genre should be lent to see that table.</h4><?php
        }else{
            ?>
            <button onclick="toggleVisibility('top3', 'top3_t')" class="inline-button">Tap the button to show/hide the following table</button>
            <h5 id='top3_t'>If the table has less than 3 rows it means that there not 3 different pairs of genres from the books that have been loaned.</h5>
            <table id='top3'>
                <thead>
                    <th>Genre 1</th>
                    <th>Genre 2</th>
                    <th>Number of Loans</th>
                </thead>
                <tbody>
                    <?php
                    while ($top3 = mysqli_fetch_assoc($list_top3)) {
                        ?>
                        <tr>
                            <td><?php echo $top3['genre1']; ?></td>
                            <td><?php echo $top3['genre2']; ?></td>
                            <td><?php echo $top3['loans']; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        <?php } ?>
    </body>
</html>