<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
$host = 'localhost';
$user = 'team13';
$pw = 'team13';
$db_name = 'team13';
$mysqli = new mysqli($host, $user, $pw, $db_name);
$keyword=$_POST['keyword'];

if(mysqli_connect_errno()){
	printf("Connect failed: %s\n", mysqli_error($mysqli));
	exit();
}
else{
}

?>

<html>
    <head><title>Search Film</title></head>
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
<th> Search Film </th>
    <form action="search.php" METHOD='POST'>
    <tr><td> <input type="TEXT" name="keyword"> 
    <input type="submit" value='Search'></td></tr>
    </table>
    <table>
            <thead>
                <tr>
                <th>영화 제목</th>
                <th>감독</th>
                <th>국가</th>
                <th>평점</th>
                </tr>
            </thead>
            <tbody>
    <?php
        echo director;
        $sql= "SELECT film.name as fname from film
        LEFT JOIN director ON film.director_id = director.id";
        $res = mysqli_query($mysqli,$sql);
        if($res){
            while($newArray = mysqli_fetch_array($res,MYSQLI_ASSOC)){
                $film_name=$newArray['fname'];
                $director_name=$newArray['name'];
                $director_nationality=$newArray['nationality'];
                if($film_name==$keyword ){
                    echo '<tr><td>'.$film_name.'</td><td>'.$director_name.'</td><td>'.$director_nationality.'</td></tr>';
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