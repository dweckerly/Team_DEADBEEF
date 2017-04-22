<?php
include("config.php");

if(!empty($_GET['info']) && !empty($_GET['save_id'])){
	$info = (string) $_GET['info'];
	$save_id = (string) $_GET['save_id'];
	
	$query = "UPDATE saves SET info = CONCAT(info, '" . $info . "') WHERE save_id = '" . $save_id . "'";
	
	if($dbc->query($query) == TRUE){
		echo 'Record updated successfully.';
	} else {
		echo 'Error updating record.';
	}
	
} else {
	echo 'No information passed';
}
?>
