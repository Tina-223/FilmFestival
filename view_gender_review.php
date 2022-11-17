<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
$mysqli = new mysqli($host, $user, $pw, $db_name); //db 연결
if(isset($_POST['search']))
{ 
    $film_name=$_POST['fname']; #영화이름
    $award_name=$_POST['award_name'];
    echo "검색어: ".$film_name.",   영화제 이름: " . $award_name."</br>";
}
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
    </br>
    <form action='update_review_academy.php' method="post">
    평점 수정  
                <input type="text" name="userID" placeholder="사용자 ID 입력">
                <input type="number" name="rating" min="1" max="10" placeholder="10">
                <input type='submit' value='수정하기'>
    </form>
    <form action='delete_review_academy.php' method="post">
    평점 삭제  
                <input type="text" name="userID" placeholder="사용자 ID 입력">
                <input type='submit' value='삭제하기'>
    </form>
    <table>
        <th>Result</th>
        <tread>
            <tr>
                <th>영화제목</th>
                <th>성별</th>
                <th>평점</th>
                <th>사용자ID</th>
        </tr>
    </tread>
    <tbody>
<?php

$sql1="SELECT * FROM film_gender
    LEFT JOIN film ON film_gender.film_id=film.id";
$res1 = mysqli_query($mysqli,$sql1);
if($res1){
    $count=0;
    while($newArray = mysqli_fetch_array($res1,MYSQLI_ASSOC)){
        $gender=$newArray['gender'];
        $grade=$newArray['grade'];
        $film_id=$newArray['film_id'];
        if($film_name==$newArray['name'] and $count<2){
            echo  "<tr><td>".$film_name. "</td><td>".$gender."</td><td>".$grade.'</td></tr>';
            $count+=1;      
        }

    }
}else{
    printf("mysqli_error($mysqli)");
}


if($award_name=='academy'){
    $sql2="SELECT * FROM review_academy";
    $res2= mysqli_query($mysqli,$sql2);
    if($res2){
        while($newArray = mysqli_fetch_array($res2,MYSQLI_ASSOC)){
        $gender2=$newArray['gender'];
        $grade2=$newArray['grade'];
        $userid=$newArray['user_id'];
            echo  "<tr><td>$film_name</td><td>".$gender2."</td><td>".$grade2."</td><td>".$userid."</td></tr>";         
        }
    }
}else{
    printf("mysqli_error($mysqli)");
}
    mysqli_free_result($res1);
    mysqli_close($mysqli);

?>
</tbody>
    </table>
</body>
</html>
