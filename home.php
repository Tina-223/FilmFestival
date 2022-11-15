<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>home</title>
</head>
<body>
    <div class="btn">
        <button class="loginbtn"  onclick="location.href='http://localhost:8080/team13/login.php'">login</button>
    </div>
    <div class="wrapper">
        <section class="content">
            <div class="columns">
                <main class="main">Films Based on Directors</main>
                <aside class="sidebar-first">Award-Winning Films</aside>
                <aside class="sidebar-second">Films Based on Countries</aside>
            </div>
        </section>
    </div>
    <style>
        .btn{
            text-align: right;
            margin-top: 1%;
            margin-right: 1.5%;
        }
        .loginbtn{
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
</html>


