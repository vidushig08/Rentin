<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        <title>Registration</title>
    </head>

    <body>
        <table>
            <form name="myform" action="dbenter.jsp" method="POST">
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" /><br /></td>
                </tr>
  
                <tr>
                    <td>Register No:</td>
                    <td><input type="text" name="regno" /><br /></td>
                </tr>
                
                <tr>
                    <td>Email ID:</td>
                    <td><input type="text" name="email" /><br /></td>
                </tr>
                
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="pass" /><br /></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Register" /></td>
                </tr>
                
                <tr>
                    <td> <a href="loginassn.jsp"> Login </a> </td>
                </tr>
                
                <tr>
                    <td><a href="view.jsp">View Details</a></td>
                </tr>

            </form>
        </table>
    </body>

</html>