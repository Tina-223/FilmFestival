<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
?>
<html>
    <head><title>Academy Awards</title></head>
    <style>
      body {
        font-family: Consolas, monospace;
        font-family: 12px;
      }
      table {
        width: 100%;
      }
      th, td {
        padding: 10px;
        border-bottom: 1px solid #dadada;
      }
    </style>
<body>

<table>
    <th> Academy Awards </th>
    </table>
    <table>
        <thead>
            <tr>
            <form action="write_review_academy.php" METHOD='post'>
                <input type="hidden" name="choice" value="academy">
                <input type="text" name="fname" placeholder="영화제목 입력">
                <input type="number" name="rating" min="1" max="10" placeholder="10">
                <input type="text" name="gender" placeholder="성별 입력 ex)F or M">
                <input type="submit" name="submit_btn" value="작성하기"></form>
            <form action= "film_gender_grade.php" METHOD="post">
                <input type="submit" name="grade_file" value="영화 전체 평점 확인하기">

            </tr>
            <tr>
            <th>년도</th>
            <th>회차</th>
            <th>영화 제목</th>
            <th>감독</th>
            <th>국가</th>
            <th>평점</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $mysqli = new mysqli($host, $user, $pw, $db_name);
                if(mysqli_connect_errno()){
                    printf("Connect failed: %s\n", mysqli_error($mysqli));
                    exit();
                }             
                $sql="SELECT A.year, A.round, A.id as award_id, F.name as fname, D.name as dname, D.nationality 
                FROM academy_best_award A
                LEFT JOIN film F ON A.film_id = F.id
                JOIN director D ON F.director_id = D.id";
                $res = mysqli_query($mysqli,$sql);


                if($res){
                    while($newArray = mysqli_fetch_array($res,MYSQLI_ASSOC)){
                        $year=$newArray['year'];
                        $round=$newArray['round'];
                        $film_name=$newArray['fname'];
                        $director_name=$newArray['dname'];
                        $nationality=$newArray['nationality'];
                        echo '<tr><td>'.$year.'</td><td>'.$round.'</td><td>'.$film_name.'</td><td>'.$director_name.'</td><td>'.$nationality.'</td><td>'.'4.6'.'</td></tr>';
                    }
                }else{
                    printf("mysqli_error($mysqli)");
                }
                mysqli_free_result($res);
                mysqli_close($mysqli);
            ?>
            </tbody>
        </table>
    </body>
</html>
