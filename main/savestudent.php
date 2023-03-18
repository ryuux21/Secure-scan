<?php
session_start();
include('../connect.php');
$a = $_POST['StudID'];
$k = $_POST['Studname'];
$b = $_POST['StudClass'];
$c = $_POST['StudSection'];
$d = $_POST['RFID'];
$e = $_POST['StudStatus'];

// query

  //do your write to the database filename and other details   
$sql = "INSERT INTO Info (StudID,Studname,StudClass,StudSection,RFID,StudStatus) VALUES (:a,:k,:b,:c,:d,:e)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':k'=>$k,':b'=>$b,':c'=>$c,':d'=>$d, ':e'=>$e));
header("location: students.php");
?>
