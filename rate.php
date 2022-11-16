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
    //login.php에서 입력받은 id, password
    $username = $_POST['rating'];
    $userpass = $_POST['review'];
    ?>
</body>
</html>