<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
$mysqli = new mysqli($host, $user, $pw, $db_name); //db 연결
$userid = $_SESSION['user'];

if (!isset($_SESSION['user'])) {
        echo "<script>alert('Please sign up or login to write a review.')</script>";
        echo "<script>location.replace('login.php');</script>";
    }
else {
    if (isset($_POST['submit_btn'])) {
        $choice=$_POST['choice']; #영화제 종류
        $film_name=$_POST['fname']; #영화이름
        $grade=$_POST['rating']; #평점
        $gen=$_POST['gender'];

        mysqli_begin_transaction($mysqli);

        try{
            $query_1 = "SELECT id FROM film WHERE name = '$film_name'";
            $result_1 = $mysqli->query($query_1);
            if ($result_1) {
                while($newarray_1 = mysqli_fetch_array($result_1, MYSQLI_ASSOC)){
                    $id_first = $newarray_1['id'];
                }
            }

            $query_2 = "SELECT id
            FROM venice_best_award
            WHERE film_id = '$id_first'";
            $result_2 = $mysqli->query($query_2);
            if ($result_2) {
                while($newarray_2 = mysqli_fetch_array($result_2, MYSQLI_ASSOC)){
                    $id_final = $newarray_2['id'];				
                }
            }

            $query_3 = "SELECT username FROM user WHERE id = '$userid'";
            $result_3 = $mysqli->query($query_3);
            if ($result_3) {
                while ($newarray_3 = mysqli_fetch_array($result_3, MYSQLI_ASSOC)) {
                    $username = $newarray_3['username'];
                }
            }


            if (isset($_POST['review'])) {
                $review = $_POST['review'];
            }
            else {
                $review = "-";
            }

            $q = "INSERT INTO review_venice (grade, gender, venice_award_id, user_id) VALUES ('$grade', '$gen', '$id_final', '$userid')";
            $res = mysqli_query($mysqli, $q);

            mysqli_commit($mysqli);
            
            echo "<".$film_name.">"."에 대한 리뷰가 등록되었습니다.</br>";
            echo "작성자: ".$username."   평점 :".$grade;
        } catch (mysqli_sql_exception) {
            mysqli_rollback($mysqli);

            throw $exception;
        }

    }
}

?>