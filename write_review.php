<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
$mysqli = new mysqli($host, $user, $pw, $db_name); //db 연결

if(isset($_POST['submit_btn']))
{   $choice=$_POST['choice']; #영화제 종류
    $film_name=$_POST['fname']; #영화이름
    $grade=$_POST['rating']; #평점
    echo "<".$film_name.">"."에 대한 리뷰가 등록되었습니다.</br>";
    echo "평점 :".$grade;
}

$q = "SELECT * from film";
$res = mysqli_query($mysqli, $q);
if($res){
    while($newArray = mysqli_fetch_array($res,MYSQLI_ASSOC)){
        if($film_name==$newArray['name']){
            $awardid=$newArray['id']; #영화id
        }
    }
}

?>