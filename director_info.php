<?php
header('Content-Type: text/html; charset=UTF-8');
$dir = $_POST['dir'];

session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';

$mysqli = new mysqli($host, $user, $pw, $db_name, '3306');
//$mysqli = new mysqli($host, $user, $pw, $db_name, '3307');

if(mysqli_connect_errno()){
	printf("Connect failed: %s\n", mysqli_error($mysqli));
	exit();
}
else{
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Films by Directors</title>
</head>

<body>
    <h1>Search results for films by director</h1>
    <?php
    
    $sql1 = "SELECT film.id
            FROM director, film
            WHERE director.name = '$dir' and director.id = film.director_id";
    $res1 = mysqli_query($mysqli, $sql1); // 선택한 감독의 영화를 찾는 쿼리 실행

    if($res1){
        echo "<table border cols = 3\n";
        echo "<tr><td> 영화 이름 </td><td> 매출액 </td> <td> 수상기록 </td> \n";

        while($row = mysqli_fetch_assoc($res1)){ // film의 id 배열
            $filmId = $row['id'];

            $sql2 = "SELECT film.name, film_hit.sales
                    FROM film, film_hit
                    WHERE film.id = '$filmId' and film_hit.film_id = '$filmId'";
            $res2 = mysqli_query($mysqli, $sql2);

            $filmRow = mysqli_fetch_assoc($res2);
            $filmName = $filmRow['name'];   // 영화 이름
            $filmSales = $filmRow['sales']; // 영화의 매출액

            // 아카데미
            $sql3 = "SELECT academy_best_award.year, academy_best_award.round
                    FROM academy_best_award
                    WHERE academy_best_award.film_id = '$filmId'";
            $res3 = $mysqli -> query($sql3);

            if($res3->num_rows >= 1){
                $res3Array = mysqli_fetch_assoc($res3);
                $res3_year = $res3Array['year'];
                $res3_round = $res3Array['round'];
                $res3Concat = $res3_year."년 ".$res3_round."회 아카데미 시상식 작품상";

                if ($filmSales==0){ // 매출액이 0인 경우, '정보 없음' 출력
                    $filmSales='정보 없음';
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."</td><td>".$res3Concat."</td></tr>";
                } else{
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."$ </td><td>".$res3Concat."</td></tr>";
                }
            }

            // 칸
            $sql4 = "SELECT cannes_best_award.year, cannes_best_award.round
                    FROM cannes_best_award
                    WHERE cannes_best_award.film_id = '$filmId'";
            $res4 = $mysqli -> query($sql4);

            if($res4->num_rows >= 1){
                $res4Array = mysqli_fetch_assoc($res4);
                $res4_year = $res4Array['year'];
                $res4_round = $res4Array['round'];
                $res4Concat = $res4_year."년 ".$res4_round."회 칸 영화제 황금종려상";

                if ($filmSales==0){ // 매출액이 0인 경우, '정보 없음' 출력
                    $filmSales='정보 없음';
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."</td><td>".$res4Concat."</td></tr>";
                } else{
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."$ </td><td>".$res4Concat."</td></tr>";
                }
            }

            // 베를린
            $sql5 = "SELECT berlin_best_award.year, berlin_best_award.round
                    FROM berlin_best_award
                    WHERE berlin_best_award.film_id = '$filmId'";
            $res5 = $mysqli -> query($sql5);

            if($res5->num_rows >= 1){
                $res5Array = mysqli_fetch_assoc($res5);
                $res5_year = $res5Array['year'];
                $res5_round = $res5Array['round'];
                $res5Concat = $res5_year."년 ".$res5_round."회 베를린 영화제 황금곰상";

                if ($filmSales==0){ // 매출액이 0인 경우, '정보 없음' 출력
                    $filmSales='정보 없음';
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."</td><td>".$res5Concat."</td></tr>";
                } else{
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."$ </td><td>".$res5Concat."</td></tr>";
                }
            }

            // 베니스
            $sql6 = "SELECT venice_best_award.year, venice_best_award.round
                    FROM venice_best_award
                    WHERE venice_best_award.film_id = '$filmId'";
            $res6 = $mysqli -> query($sql6);

            if($res6->num_rows >= 1){
                $res6Array = mysqli_fetch_assoc($res6);
                $res6_year = $res6Array['year'];
                $res6_round = $res6Array['round'];
                $res6Concat = $res6_year."년 ".$res6_round."회 베니스 영화제 황금사자상";

                if ($filmSales==0){ // 매출액이 0인 경우, '정보 없음' 출력
                    $filmSales='정보 없음';
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."</td><td>".$res6Concat."</td></tr>";
                } else{
                    echo "<tr><td>".$filmName."</td><td>".$filmSales."$ </td><td>".$res6Concat."</td></tr>";
                }
            }
        }
    
    }


    ?>
</body>
</html>
