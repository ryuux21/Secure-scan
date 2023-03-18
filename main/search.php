<?php
   $db = new mysqli('localhost', 'root' ,'', 'project');
	if(!$db) {

		echo 'Could not connect to the database.';
	} else {

		if(isset($_POST['info'])) {
			$queryString = $db->real_escape_string($_POST['info']);

			if(strlen($queryString) >0) {
				$sddsdsd='StudID';
				$query = $db->query("SELECT *  FROM info WHERE  StudID LIKE '$queryString%' LIMIT 10");
				if($query) {
				echo '<ul>';
					while ($result = $query ->fetch_object()) {
                        $json['StudID'] =$result->StudID;

                    echo  '<li>'.$result->StudID.'</li>';

                   }
				echo '</ul>';

				} else {
					echo 'OOPS we had a problem :(';
				}
			} else {
				// do nothing
			}
		}else {
			echo 'There should be no direct access to this script!';
		}
	}
?>