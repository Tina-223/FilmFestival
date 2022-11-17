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
    echo "검색어 : ".$film_name."</br>";
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
    <table>
        <th>Result</th>
        <tread>
            <tr>
                <th>성별</th>
                <th>평점</th>
        </tr>
    </tread>
    <tbody>
<?php


$sql="SELECT * FROM film_gender
        JOIN film ON film_gender.film_id=film.id";
        $res = mysqli_query($mysqli,$sql);
if($res){
    while($newArray = mysqli_fetch_array($res,MYSQLI_ASSOC)){
        $gender=$newArray['gender'];
        $grade=$newArray['grade'];
        $film_id=$newArray['film_id'];
        if($film_name==$newArray['name']){
            echo  "<tr><td>".$gender."</td><td>".$grade.'</td></tr>';
            
        }
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