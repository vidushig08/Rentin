<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dayboarder</title>
    </head>
    <body>
    <head>
        <link rel="stylesheet" href="dayboarder.css">
    </head>
    <br>
    <center>
        <img class="sign" src="DAY BOARDER.png">
        <br>
        <br>
        <br>
        <div class="tcc">ADDRESS</div>
        <form name = "hackform" action ="addressintermediate.jsp" method = "POST">
            <textarea rows="4" cols="50" class="boxy" placeholder="Enter your Address" name = "address"></textarea>
            <br>
            <br>
            <br>
            <button class="btnn" type="submit">Sign-Up</button>
        </form>
    </center>
</body>

<%
    String name = request.getParameter("name");
    String regno = request.getParameter("regno");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");
    String passwordconfirm = request.getParameter("passwordconfirm");
    if (password.equals(passwordconfirm)) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");
            Statement st = conn.createStatement();

            int i = st.executeUpdate("insert into hacklogin values('" + name + "','" + regno + "','" + password + "','" + email + "','" + phone + "')");

        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    } else {
        out.println("Passwords do not match");
    }


%>

</html>