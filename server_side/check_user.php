<?php
include("config.php");

if(!empty($_GET['user_name'])){
	$uname = strtoupper($_GET['user_name']);
	$found = 0;
	$query = "SELECT username FROM users WHERE username = '" . $uname . "'";
	$result = mysqli_query($dbc, $query);
	
	if(mysqli_num_rows($result) > 0){
		echo 'found';
	} else {
		echo 'not found';
	}
} else {
	echo 'no information passed';
}
?>
