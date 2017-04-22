<?php
include("config.php");

if(!empty($_GET['user_name']) && !empty($_GET['password'])){
	$uname = strtoupper($_GET['user_name']);
	$pword = trim($_GET['password']);
	
	$query1 = "SELECT user_id FROM users WHERE username = '" . $uname . "' AND password = '" . $pword . "'";
	$result1 = mysqli_query($dbc, $query1);
	
	if(mysqli_num_rows($result1) > 0){
		$data1 = $result1->fetch_array(MYSQLI_NUM);
		$id = $data1[0];
		$query2 = "SELECT save_id, info FROM saves WHERE user_id = '" . $id . "'";
		$result2 = mysqli_query($dbc, $query2);
		if(mysqli_num_rows($result2) > 0){
                        while($rows = mysqli_fetch_assoc($result2)){
                               print_r($rows);    
                        }
		} else {
			echo 'No saves found.';
		}
		
	} else {
		//username and password not found
		echo 'The username or password is incorrect.';
	}
	mysqli_close($dbc);
} else {
	//no username and password sent
	echo 'Empty request.';
}
?>
