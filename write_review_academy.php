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

        $query_1 = "SELECT A.id
        FROM academy_best_award A
        JOIN film F ON A.film_id = F.id";
        $result_1 = $mysqli->query($query_1);
        if ($result_1) {
            while($newarray_2 = mysqli_fetch_array($result_1, MYSQLI_ASSOC)){
                $id_final = $newarray_2['id'];				
                echo $id_final;
            }
        }


        if (isset($_POST['review'])) {
            $review = $_POST['review'];
        }
        else {
            $review = "-";
        }

        $q = "INSERT INTO review_academy (grade, one_line_review, academy_award_id, user_id) values ('$grade', '$review', '$id_final', '$userid')";
        $res = mysqli_query($mysqli, $q);

        $qu = "SELECT * FROM review_academy WHERE user_id = '$userid'";
        $result = mysqli_query($mysqli, $qu);

        // insert문 실행 시
        if ($res) {
            echo "<table border cols = 2>\n";
            echo "<tr><td> ratings </td></tr>\n";
            while($newarray = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                $r_grade = $newarray['grade'];				
                echo "<tr><td>".$r_grade."</td></tr>\n";
            }
        }
        else {
            printf("Could not retrieve records: %s\n", mysqli_error($mysqli));
        }


        echo "<".$film_name.">"."에 대한 리뷰가 등록되었습니다.</br>";
        echo "작성자: ".$userid.", 평점 :".$grade;
    }
}

?>