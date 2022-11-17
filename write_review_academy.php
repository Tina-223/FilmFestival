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

        $id_final = 1;

        if (isset($_POST['review'])) {
            $review = $_POST['review'];
        }
        else {
            $review = "-";
        }

        $q = "INSERT INTO review_academy (grade, one_line_review, academy_award_id, user_id) values ('$grade', '$review', '$id_final', '$userid')";
        $res = mysqli_query($mysqli, $q);

        // insert문 실행 시
        if ($res === TRUE) {
            echo "<table border cols = 2>\n";
            echo "<tr><td> ratings </td><td> revies </td></tr>\n";
            while($array = mysqli_fetch_array($res, MYSQLI_ASSOC)){
                $r_grade = $array['grade'];				
                $r_review = $array['one_line_review'];
                echo "<tr><td>".$r_grade."</td><td>".$r_review."</td></tr>\n";
            }
        }else{
            printf("Could not retrieve records: %s\n", mysqli_error($mysqli));
        }


        echo "<".$film_name.">"."에 대한 리뷰가 등록되었습니다.</br>";
        echo "평점 :".$grade." 한줄평: ".$review;
    }
}


// }



?>