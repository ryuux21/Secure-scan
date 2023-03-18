<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['StudID'];
$e = $_POST['StudStatus'];

// query

$sql = "UPDATE Info 
        SET StudStatus=?
        where StudID=?";

$q = $db->prepare($sql);
$q->execute(array($e,$id));
header("location: students.php");
?>
