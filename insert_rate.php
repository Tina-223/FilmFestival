// rating: 별점   review: 한줄평

<html>
<head>
   <meta charset="utf-8">
   <title></title>
</head>
<body>
    <?php
    header('Content-Type: text/html; charset=UTF-8');
    session_start();
    $host = 'localhost';
    $user = 'team13';
    $pw = 'team13';
    $db_name = 'team13';
    $mysqli = new mysqli($host, $user, $pw, $db_name); //db 연결
    // 유저정보 세션, 별점, 영화제, 영화id 변수
    $userid = $_SESSION['user']
    $grade = $_POST['rating'];
    $choice = $_POST['choice']; // 'academy', 'berlin', 'cannes', 'venice' 중 하나
    $awardid = $_POST['id']

    // 로그인이 안되어있다면
    if (!isset($_SESSION['user'])) {
        echo "<script>alert('Please sign up or login to write a review.')</script>";
        echo "<script>location.replace('login.php');</script>";
    }
    else {
        // 점수를 남겼다면
        if (isset($_POST['rating'])) {

            if (isset($_POST['review'])) {
                $review = $_POST['review'];
            }
            else {
                $review = "-";
            }
            $q = "INSERT INTO review_".$choice." (grade, one_line_review, ".$choice."_award_id, user_id) values ($grade, '$review', $awardid, $userid)";
            $res = $mysqli->query($q);

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
        }
    }

    ?>
</body>
</html>