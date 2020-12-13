<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <!--Linking CSS-->
        <link type="text/css" rel="stylesheet" href="navbar.css" />
        <link type="text/css" rel="stylesheet" href="login.css" />

        <!--Google Fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

        <!--Title and Logo-->
        <title>Rentin'</title>
        <link rel="icon" type="image/png" href="assets/first-page/logo.svg">
    </head>

    <body>
        <div class="login-page">
            <img class="login-heading" src="LOGIN.png">
            <br>
            <br>
            <br>
            <form name = "hackform" action = logcheck.jsp method = "POST">
                <label>Registration Number</label>
                <br><br>
                <input class="form-info" type="text" id="regno" name="regno" placeholder="Registration Number">
                <br>
                <br>
                <label>Password</label>
                <br><br>
                <input class="form-info" type="password" id="password" name="password" placeholder="Password">
                <br>
                <br><br>
                <button type ="submit" class="login-button">Login</button>
            </form>
        </div>
    </body>