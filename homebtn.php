<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
// 로그인 된 상태
if(!isset($_SESSION['user'])) {
    echo "<script>location.replace('index.php');</script>";            
}
// 로그인 안된 상태
else {
    echo "<script>location.replace('home.php');</script>";
} 
?>