<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<body>
    <table>
        <form name="myform" action="loginchecker.jsp" method="POST">
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
                <td><input type="submit" value="Login" /></td>
            </tr>
        </form>
        <tr>
            <td>
                <form name="Back" action="index.jsp">
                    <input type="submit" value="Back" />
                </form> 
            </td>
        </tr>

    </table>
</body>

</html>