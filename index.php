<?php
header('Content-Type: text/html; charset=UTF-8');
session_start();
// 로그인 안되어있을 때
if(!isset($_SESSION['user'])) {
    echo "<script>location.replace('login.php');</script>";            
}
// 로그인 되어있을때
else {
    $id = $_SESSION['user'];
} 
?>
<body>
    <div class="btn">
        <button class="logoutbtn" onclick="location.href='http://localhost:8080/team13/logout.php'">logout</button>
    </div>
    <div class="wrapper">
        <section class="content">
            <div class="columns">
                <main class="main">Films Based on Directors</main>
                <aside class="sidebar-first" onclick="location.href='http://localhost:8080/team13/select_awards.php'">Award-Winning Films</aside>
                <aside class="sidebar-second" onclick="location.href='http://localhost:8080/team13/country_select.php'">Films Based on Countries</aside>
            </div>
        </section>
    </div>
    <style>
        .btn{
            text-align: right;
            margin-top: 1%;
            margin-right: 1.5%;
        }
        .logoutbtn{
            margin-left: auto;
            cursor: pointer;
            border: 1px solid;
            background-color: transparent;
            height: 40px;
            width: 80px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
        }
        .wrapper{
            margin-top: 15%;
            margin-left: 10%;
            margin-right: 10%;
            min-height: 200px;
            display: flex;
            flex-direction: column;
        }
        .content {
            display: flex;
            flex: 1;
        }
        .columns{
        display: flex;
        flex:1;
        }
        .main{
            cursor: pointer;
            flex: 1;
            order: 2;
            padding: 5px;
            text-align: center;
            padding: 70px 0;
        }
        .sidebar-first{
            cursor: pointer;
            flex:1;
            order: 1;
            text-align: center;
            padding: 70px 0;
        }
        .sidebar-second{
            cursor: pointer;
            flex: 1;
            order: 3;
            text-align: center;
            padding: 70px 0;
        }
    </style>
</body>
