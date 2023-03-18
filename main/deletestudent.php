<?php
	include('../connect.php');
	$id=$_GET['StudID'];
	$result = $db->prepare("DELETE FROM info WHERE $id == StudID");
	$result->bindParam(':userid', $id);
	$result->execute();
	
	header ("location: students.php");
?>