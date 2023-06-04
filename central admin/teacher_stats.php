<?php
include('header.php');
include('../config/db_connection.php');
$conn = OpenCon();

$sqly = "SELECT * from young_teachers_loans";
$resulty = mysqli_query($conn, $sqly);

if (!empty($_POST['submitg'])) {
    $genre = $_POST['genre'];
    $sqlg = "SELECT user_full_name, school_name FROM teacher_genres WHERE gen='$genre';";
    $resultg = mysqli_query($conn, $sqlg);
    if (!$resultg) {
        echo "Error: " . mysqli_error($conn);
    }
}

$sqlgen = "SELECT genre FROM genre order by genre asc;";
$genres_dropdown = mysqli_query($conn, $sqlgen);

?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Teacher Stats</title>
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
        <h1 style="text-align: center">Statistics related to Teachers</h1>
        <h3>Top 10 young teachers (age under 40) with the most loans:</h3>
        <?php
        if (mysqli_num_rows($resulty) == 0) {
            ?><h4>No young teachers in the database yet.</h4><?php
        } else {
            ?>
            <button onclick="toggleVisibility('young_teachers', 'young_teachers_t')" class="inline-button">Tap the button to show/hide the following table</button>
            <h5 id='young_teachers_t'>In case there are fewer than 10 young teachers in the database, you will see all the young teachers.</h5>
            <table id='young_teachers'>
                <thead>
                    <th>Teacher Full Name</th>
                    <th>School</th>
                    <th>Total Loans</th>
                </thead>
                <tbody>
                    <?php
                    while ($teachery = mysqli_fetch_assoc($resulty)) {
                        ?>
                        <tr>
                            <td><?php echo $teachery['user_full_name']; ?></td>
                            <td><?php echo $teachery['school_name']; ?></td>
                            <td><?php echo $teachery['loans']; ?></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        <?php
        }
        ?>
        <h3>Write in the following box the genre that you want to know which teachers have loaned a book from.</h3>
        <div>
            <form action="teacher_stats.php" method="post">
                <label for="genre" class="inline-label">Genre: </label>
                <select name="genre" id="genre" class="inline-input">
                    <option value="">Select a genre</option>
                    <?php
                    while ($genre_dropdown = mysqli_fetch_assoc($genres_dropdown)) {
                        ?>
                        <option value="<?php echo $genre_dropdown['genre']; ?>"><?php echo $genre_dropdown['genre']; ?></option>
                    <?php } ?>
                </select>
                <button type="submit" name="submitg" value="submitg" class="inline-button">Submit</button>
            </form>
        </div>
        <?php
        if (isset($_POST['submitg'])) {
            if (mysqli_num_rows($resultg) == 0) {
                ?>
                <h4><?php echo "No teachers were found that loaned a book from the genre '$genre'"; ?></h4>
            <?php
            } else {
                ?>
                <button onclick="toggleVisibility('teacher_genres', 'teacher_genres1')" class="inline-button">Toggle Table for Teachers and Genres</button>
                <h4 id='teacher_genres1'><?php echo "Authors that have at least one book in genre '$genre':"; ?></h4>
                <table id='teacher_genres'>
                    <thead>
                        <th>Teacher Full Name</th>
                        <th>School</th>
                    </thead>
                    <tbody>
                        <?php
                        while ($teacher = mysqli_fetch_assoc($resultg)) {
                            ?>
                            <tr>
                                <td><?php echo $teacher['user_full_name']; ?></td>
                                <td><?php echo $teacher['school_name']; ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            <?php }
        } ?>
    </body>
</html>
