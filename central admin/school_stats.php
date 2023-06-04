<?php

include("header.php");
include("../config/db_connection.php");
$conn=OpenCon();

$errors=array("both_empty" => "", "invalid_year" => "");

$display=array("month" => false, "year" => false, "both" => false);

$months = array(
    'January' => 1,
    'February' => 2,
    'March' => 3,
    'April' => 4,
    'May' => 5,
    'June' => 6,
    'July' => 7,
    'August' => 8,
    'September' => 9,
    'October' => 10,
    'November' => 11,
    'December' => 12
);

$year="";

if(isset($_POST['submit'])){
    $year=$_POST['year'];
    $month=$_POST['month'];
    if(empty($year) && empty($month)){
        $errors["both_empty"]="At least one of the fields should be filled";
    }
    if(!empty($year)){
        if($year<=date("Y") && $year>2021){
            $year=(int)$year;
            $display['year']=true;
            $sql= "SELECT lib.school_name, COUNT(l.request_id) as lreq
                   from library lib
                   left join school_user su on lib.school_id = su.school_id
                   LEFT JOIN loan l ON l.user_id = su.user_id
                   WHERE (YEAR(l.loan_date)= '$year' and (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue') or l.request_id is NULL)  
                   GROUP BY lib.school_id;";
            $resy=mysqli_query($conn, $sql);
        }else {
            $c_y=date("Y");
            $errors['invalid_year']="Year should be an integer from 2022 and untill the current year ($c_y)";
        }
    }
    if(!empty($month)){
        $m=$months["$month"];
        $display['month']=true;
        $sqlm= "SELECT lib.school_name, COUNT(l.request_id) as lreq
                   from library lib
                   left join school_user su on lib.school_id = su.school_id
                   LEFT JOIN loan l ON l.user_id = su.user_id
                   WHERE (MONTH(l.loan_date)= '$m' and (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue') or l.request_id is NULL)                    GROUP BY lib.school_id;";
        $resm=mysqli_query($conn, $sqlm);
    }

    if($display['year'] && $display['month']){
        $display['both']=true;
        $sqlb= "SELECT lib.school_name, COUNT(l.request_id) as lreq
               from library lib
               left join school_user su on lib.school_id = su.school_id
               LEFT JOIN loan l ON l.user_id = su.user_id
               WHERE (MONTH(l.loan_date)= '$m' and YEAR(l.loan_date)= '$year' and (l.loan_status='loaned' or l.loan_status='returned' or l.loan_status='overdue')) or l.request_id is NULL  
               GROUP BY lib.school_id;";
        $resb=mysqli_query($conn, $sqlb);
    }
}



?>


<!DOCTYPE html>
<html>
    <head>
        <title>School Statistics</title>
    </head>
    <body>
        <h1 style="text-align: center">Statistics for loan per per month and/or year</h1>
        <div>
            <form action="school_stats.php" method="post" class="form-inline">
                <label for="month">Month</label>
                <select id="month" name="month" class="inline-input">
                    <option value="">Select a month</option>
                    <option value="January">January</option>
                    <option value="February">February</option>
                    <option value="March">March</option>
                    <option value="April">April</option>
                    <option value="May">May</option>
                    <option value="June">June</option>
                    <option value="July">July</option>
                    <option value="August">August</option>
                    <option value="September">September</option>
                    <option value="October">October</option>
                    <option value="November">November</option>
                    <option value="December">December</option>
                </select>
                <label for="year">Year</label>
                <input name="year" id="year" value=<?php echo $year;?>></input>
                <button type="submit" name="submit" value="submit" class="inline-button">Submit </button>
            </form>
        </div>
        <h3 class="err-msg"><?php echo $errors['both_empty'];?></h3>
        <h3 class="err-msg"><?php echo $errors['invalid_year'];?></h3>
        <h2>
            <?php
                if($display['year']) {
                    echo "For the year $year the total loans per school were:";
                    if (mysqli_num_rows($resy) == 0) {
                        ?><h4>No schools in the database.</h4><?php
                    } else {
                        ?>
        </h2>
        <table>
        <thead>
            <th>School</th>
            <th>Number of loans</th>
        </thead>
        <tbody> 
            <?php while($loan=mysqli_fetch_assoc($resy)) {?>
            <tr>
                <td><?php echo $loan['school_name'];?></td>
                <td><?php echo $loan['lreq'];?></td>
            </tr>
            <?php } } ?>
        </tbody>
    </table>
    <?php } ?>
    <h2>
            <?php
                if($display['month']) {
                    echo "For the month $month the total loans per school were:";
                    if (mysqli_num_rows($resm) == 0) {
                        ?><h4>No schools in the database.</h4><?php
                    } else {
                        ?>
        </h2>
        <table>
        <thead>
            <th>School</th>
            <th>Number of loans</th>
        </thead>
        <tbody> 
            <?php while($loanm=mysqli_fetch_assoc($resm)) {?>
            <tr>
                <td><?php echo $loanm['school_name'];?></td>
                <td><?php echo $loanm['lreq'];?></td>
            </tr>
            <?php } } ?>
        </tbody>
    </table>
    <?php } ?>
    <h2>
            <?php
                if($display['both']) {
                    echo "For the month $month and year $year the total loans per school were:";
                    if (mysqli_num_rows($resb) == 0) {
                        ?><h4>No schools in the database.</h4><?php
                    } else {
                        ?>
        </h2>
        <table>
        <thead>
            <th>School</th>
            <th>Number of loans</th>
        </thead>
        <tbody> 
            <?php while($loanb=mysqli_fetch_assoc($resb)) {?>
            <tr>
                <td><?php echo $loanb['school_name'];?></td>
                <td><?php echo $loanb['lreq'];?></td>
            </tr>
            <?php } } ?>
        </tbody>
    </table>
    <?php }?>
    </body>
</html>