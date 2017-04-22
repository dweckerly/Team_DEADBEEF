<?php
include("config.php");

if(!empty($_GET['user_name']) && !empty($_GET['password'])){
	$uname = strtoupper($_GET['user_name']);
	$pword = trim($_GET['password']);
	$query = "INSERT INTO users(user_id, username, password) VALUES (NULL, ?, ?)";
	
	$stmt = mysqli_prepare($dbc, $query);
	mysqli_stmt_bind_param($stmt, "ss", $uname, $pword);
	
	mysqli_stmt_execute($stmt);
	mysqli_stmt_close($stmt);
	mysqli_close($dbc);
	
	echo 'account created';
} else {
	echo 'failed';
}
