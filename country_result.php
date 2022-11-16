<?php
header('Content-Type: text/html; charset=UTF-8');
$ctr = $_POST['ctr'];
$sort = $_POST['sort'];

session_start();
$host = 'localhost';
$user = 'team13';
// $pw = 'team30';
$pw = 'team13';
$db_name = 'team13';
// $mysqli = new mysqli($host, $user, $pw, $db_name, '3307');
$mysqli = new mysqli($host, $user, $pw, $db_name);

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
	<title>Films by Countries</title>
</head>
<body>
	<button class="Back" onclick="location.href='http://localhost:8080/team13/country_select.php'">Back</button>
	<h1>Search results for films by country</h1>
	<?php
		echo "Country ".$ctr." / Sort By ".$sort;
		if ($sort === "매출액(내림차순)"){
			$sql = "SELECT director.name as dname, film.name as fname, film_hit.sales as sales, rank() over (order by sales desc) as s_rank
					FROM director, film, film_hit
					WHERE director.nationality = '$ctr' and director.id = film.director_id and film.id = film_hit.film_id";
			$sql2 = "SELECT AVG(film_hit.sales) as avgSales, SUM(film_hit.sales) as sumSales
					FROM director, film, film_hit
					WHERE director.nationality = '$ctr' and director.id = film.director_id and film.id = film_hit.film_id";
		}
		else{
			$sql = "SELECT director.name as dname, film.name as fname, film_hit.sales as sales, rank() over (order by sales asc) as s_rank
					FROM director, film, film_hit
					WHERE director.nationality = '$ctr' and director.id = film.director_id and film.id = film_hit.film_id";
			$sql2 = "SELECT AVG(film_hit.sales) as avgSales, SUM(film_hit.sales) as sumSales
					FROM director, film, film_hit
					WHERE director.nationality = '$ctr' and director.id = film.director_id and film.id = film_hit.film_id";
		}
		
		$res = mysqli_query($mysqli, $sql);
		$res2 = mysqli_query($mysqli, $sql2); //AVG, SUM

		if($res){
			echo "<table border cols = 4>\n";
			echo "<tr><td> RANK </td><td> DIRECTOR NAME </td><td> FILM NAME </td><td> SALES </td></tr>\n";
			while($newArray = mysqli_fetch_array($res, MYSQLI_ASSOC)){
				$srank = $newArray['s_rank'];				
				$dname = $newArray['dname'];
				$fname = $newArray['fname'];
				$sales = $newArray['sales'];
				echo "<tr><td>".$srank."</td><td>".$dname."</td><td>".$fname."</td><td>".$sales."</td></tr>\n";
			}
			echo "</br>";
		}else{
			printf("Could not retrieve records: %s\n", mysqli_error($mysqli));
		}

		if($res2){
			while($row = mysqli_fetch_array($res2, MYSQLI_ASSOC)){
				echo "</br>";
				echo "AVG of SALES : ".$row['avgSales'];
				echo "</br>";
				echo "SUM of SALES : ".$row['sumSales'];
				echo "</br>";
			}
		}else{
			printf("Could not retrieve records: %s\n", mysqli_error($mysqli));
		}

		mysqli_free_result($res);
		mysqli_close($mysqli);
	?>
</body>
</html>
