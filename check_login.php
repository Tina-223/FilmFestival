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
    //login.php에서 입력받은 id, pw
    $username = $_POST['id'];
    $userpass = $_POST['pw'];
    
    // Sign Up
    if (isset($_POST['btnUp'])) {
        $q = "INSERT INTO user (username, password) values ('$username', '$userpass')";
        $result = $mysqli->query($q);

        // if result of query exists, signup and login succeed at once
        if ($result != null) {
            $_SESSION['user'] = '$username';
            echo "<script>location.replace('index.php');</script>";
            exit;
        }
        // else, error popup and redirect to login page
        if($result == null){
            echo "<script>alert('Failed to sign up. Please try again.')</script>";
            echo "<script>location.replace('login.php');</script>";
            exit;
        }
    }
    // Sign In
    elseif (isset($_POST['btnIn'])) {
        $q = "SELECT * FROM user WHERE username = '$username' AND password = '$userpass'";
        $result = $mysqli->query($q);
        $row = $result->fetch_array(MYSQLI_ASSOC);

        // if result of query not null, create login session
        if ($row != null) {
            $_SESSION['user'] = $row['id'];
            echo "<script>location.replace('index.php');</script>";
            exit;
        }
        // else, error popup
        if($row == null){
            echo "<script>alert('Invalid username or password')</script>";
            echo "<script>location.replace('login.php');</script>";
            exit;
        }
    }
    ?>
</body>
</html>