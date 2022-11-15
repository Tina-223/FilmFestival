<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>login</title>
</head>
<body>
    <form method="post" action="check_login.php">
        <div id="content">
            <br> <br> <br> <br>
            <h2>Welcome</h2>
            <p>Sign in to edit ratings</p>
            <br>
            <div class="idForm">
                <input type="text" name="id" size="30" placeholder="Username">
            </div>
            <div class="passForm">
                <input type="password" name="pw" size="30" placeholder="Password">
            </div>
            <div>
                <br>
                <button type="submit" name="btnUp" style="width : 120px">
                    Sign Up
                </button>
                <button type="submit" name="btnIn" style="width : 120px">
                    Sign In
                </button>
            </div>
        </div>
        <style>
            #content {
                text-align: center;
            }
        </style>
    </form>
</body>
</html>


