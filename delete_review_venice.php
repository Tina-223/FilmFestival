<?php

header('Content-Type: text/html; charset=UTF-8');
$userID = $_POST['userID'];

session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
$mysqli = new mysqli($host, $user, $pw, $db_name');

if(mysqli_connect_errno()){
	printf("Connect failed: %s\n", mysqli_error($mysqli));
	exit();
}
else{

}

$sql = "DELETE FROM review_venice WHERE user_id = $userID";
$res = mysqli_query($mysqli, $sql);
mysqli_close($mysqli);

echo "<script>location.href='film_gender_grade.php'</script>";
?>
