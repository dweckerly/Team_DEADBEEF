<?php
DEFINE('DB_USER', 'root');
DEFINE('DB_PASSWORD', '****************');
DEFINE('DB_HOST', 'localhost');
DEFINE('DB_NAME', 'DEADBEEF');

$dbc = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die('Could not connect to database ' . mysqli_connect_error());

if(!empty($_GET['user_name']) && !empty($_GET['password'])){
    $uname = trim(strtoupper($_GET['user_name']));
    $pword = trim($_GET['password']);
    $query = "INSERT INTO user (user_name, password, user_id) VALUES (?, ?, NULL)";
    
    $stmt = mysqli_perpare($dbc, $query);
    mysqli_stmt_bind_param($stmt, "ss", $uname, $pword);
    
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    mysqli_close($dbc);
    
    echo 'Added to database.';
    
} else {
    echo 'Missing username or password.';
}
?>
