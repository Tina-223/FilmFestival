<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
?>

<html>
    <head><title>Film_Gender_Grade</title></head>
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
        <th>Review Data</th>
        <tread>
            <tr>
                <th>영화제목</th>
                <th>성별</th>
                <th>평점</th>
        </tr>
    </tread>
    <tbody>
    <form action="view_gender_review.php" METHOD='post'>
        <input type="text" name="award_name" placeholder="영화제 입력 ex)academy">
        <input type="text" name="fname" placeholder="영화제목 입력">
        <input type="submit" name="search" value="검색하기"></form>
           
    <?php
        $mysqli = new mysqli($host, $user, $pw, $db_name); //db 연결
        if(mysqli_connect_errno()){
            printf("Connect failed: %s\n", mysqli_error($mysqli));
            exit();
        }
        else{
        }
        $sql="SELECT * FROM film_gender
        LEFT JOIN film ON film_gender.film_id=film.id";
        $res = mysqli_query($mysqli,$sql);
        if($res){
            while($newArray = mysqli_fetch_array($res,MYSQLI_ASSOC)){
                $gender=$newArray['gender'];
                $grade=$newArray['grade'];
                $film_id=$newArray['film_id'];
                $film_name=$newArray['name'];
                echo "<tr><td>".$film_name."</td><td>".$gender."</td><td>".$grade.'</td></tr>';
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