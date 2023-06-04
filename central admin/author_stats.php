<?php

include('header.php');
include('../config/db_connection.php');
$conn=OpenCon();

if(isset($_POST['submit'])){
    $genre = $_POST['genre'];

    $sql = "SELECT author_name FROM author_genres WHERE gen='$genre';";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        echo "Error: " . mysqli_error($conn);
      }


}

$sqlgen = "SELECT genre FROM genre order by genre asc;";
$genres_dropdown = mysqli_query($conn, $sqlgen);

$sqlua = "SELECT * from unlucky_author;";
$resultua = mysqli_query($conn, $sqlua);

$sqlu5 = "SELECT * FROM five_less;";
$less5 = mysqli_query($conn, $sqlu5);

?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Author Stats</title>
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
        <h1 style="text-align: center">Write a genre to find whitch authors are in our catalog with books that belong to it.</h1>
        <h2>The authors that have written at least 5 less than the author with the most written books are: </h2>
        <?php
        if (mysqli_num_rows($less5) == 0) {
            ?><h4>There are no authors that have written less books that the author with the most written books.</h4><?php
        } else {
            ?>
            <button onclick="toggleTableVisibility('same')" class="inline-button">Tap the button to show/hide the following table</button>
            <table id='same'>
                <thead>
                    <th>Author Full Name</th>
                    <th>Number of Books</th>
                </thead>
                <tbody>
                    <?php
                    while ($author = mysqli_fetch_row($less5)) {
                        ?>
                        <tr>
                            <td><?php echo $author[0]; ?></td>
                            <td><?php echo $author[2]; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        <?php } ?>
        <div>
            <h2>Select a genre to view the authors with at least one book in the selected genre</h2>
            <form action="author_stats.php" method="post">
                <label for="genre" class="inline-label">Genre: </label>
                <select name="genre" id="genre" class="inline-input">
                    <option value="">Select a genre</option>
                    <?php
                    while ($genre_dropdown = mysqli_fetch_assoc($genres_dropdown)) {
                        ?>
                        <option value="<?php echo $genre_dropdown['genre']; ?>"><?php echo $genre_dropdown['genre']; ?></option>
                    <?php } ?>
                </select>
                <button type="submit" name="submit" value="submit" class="inline-button">Submit </button>
            </form>
        </div>
        <?php
            if(isset($_POST['submit'])){
                if(mysqli_num_rows($result)==0){
                    ?>
                    <h4><?php echo "No authors were found for genre '$genre'"; ?></h4>
                    <?php
                }else{
                    ?>
                    <button onclick="toggleVisibility('table1', 'text1')" class="inline-button">Toggle Table for Authors and Genres</button>                    
                    <h4 id='text1'><?php echo "Authors that have at least one book in genre '$genre':"; ?></h4>                  
                    <table id='table1'>
                        <thead>
                            <th>Author Full Name</th>
                        </thead>
                        <tbody>
                            <?php
                                while($author=mysqli_fetch_assoc($result)){
                            ?>
                            <tr><td><?php echo $author['author_name'];?></td></tr>        
                            <?php  }?>
                        </tbody>
                    </table>
            <?php }
        }?>
        <h3>Authors that none of their books have been loaned are: </h3>
        <?php
        if(mysqli_num_rows($resultua)==0){
            ?><h4>There is no author with none of his book being.</h4><?php
        }else{
            ?>
            <button onclick="toggleTableVisibility('unlucky_authors')" class="inline-button">Tap the button to show/hide the following table</button>
            <table id='unlucky_authors'>
                        <thead>
                            <th>Author Full Name</th>
                        </thead>
                        <tbody>
                            <?php
                                while($authorua=mysqli_fetch_assoc($resultua)){
                            ?>
                            <tr>
                                <td><?php echo $authorua['author_full_name'];?></td>   
                            </tr>    
                            <?php  }?>
                        </tbody>
                    </table>
                    <?php
        }
        ?>
    </body>
</html>