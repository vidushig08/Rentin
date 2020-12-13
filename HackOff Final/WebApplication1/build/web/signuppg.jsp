<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up</title>
    </head>
    <body>
    <head>
        <link rel="stylesheet" href="signpg.css">
    </head>
    <br>
    <center>
        <img class="sign" src="SIGN-UP.png">
    </center>
    <br>

    <form name = "hackform" action = "signupintermediate.jsp" method = "POST">
        <table width="100%">

            <tr><td width="33%">
                    <div class="name">Name</div>
                    <input type="text" class="namebox" placeholder="Enter Name" name="name" >
                    <div class="name">Registration number</div>
                    <input type="text" class="namebox" placeholder="Enter Registration number" name = "regno">
                    <div class="name">VIT e-mail</div>
                    <input type="text" class="namebox" placeholder="Enter VIT Email id" name = "email">
                    <div class="name">Phone number</div>
                    <input type="text" class="namebox" placeholder="Enter mobile number" name = "phone">
                </td>
                <td width="33%">
                    <div class="name">Password</div>
                    <input type="password" class="namebox" placeholder="Enter a password" name = "password">
                    <div class="name">Confirm Password</div>
                    <input type="password" class="namebox" placeholder="Confirm password" name = "passwordconfirm">
                </td>
                <td width="33%" style="text-align:center">
                    <div class="name">Address</div>
                    <textarea rows="4" cols="40" class="boxy" placeholder="Enter your Address" name = "address"></textarea>
                </td>
            </tr>
        </table>
        <center><button class="btnn" type = "submit">Sign-Up</button></center>
    </form>
</body>
</html>