<?php
include("config.php");

if(!empty($_GET['user_name']) && !empty($_GET['password'])){
	$uname = strtoupper($_GET['user_name']);
	$pword = trim($_GET['password']);
	$info = (string) $_GET['info'];
	
	$query1 = "SELECT user_id FROM users WHERE username = '" . $uname . "' AND password = '" . $pword . "'";
	$result1 = mysqli_query($dbc, $query1);
	
	if(mysqli_num_rows($result1) > 0){
                $data = $result1->fetch_array(MYSQLI_NUM);
		$id = $data[0];
		$query2 = "INSERT INTO saves(save_id, user_id, info) VALUES (NULL, ?, ?)";
		
		$stmt = mysqli_prepare($dbc, $query2);
		mysqli_stmt_bind_param($stmt, "ss", $id, $info);
		
		mysqli_stmt_execute($stmt);
		mysqli_stmt_close($stmt);
		mysqli_close($dbc);
		
		echo 'Information saved';
	} else {
		echo 'Username or password is invalid';
	}
} else {
	echo 'No information passed';
}
?>
