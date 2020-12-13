<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>

    <style>
        .log
        {
            width: 300px;
            height: 200px;
            padding-top: 100px;
            border: 5px solid #F3EAC2;
            box-sizing: border-box;
            border-radius: 2150px;
        }
        .btn
        {
            width:150px;
            height:50px;
            background: #303960;
            border: 3px solid #F5B461;
            box-sizing: border-box;
            border-radius: 60px;
            font-family: Poppins;
            font-style: normal;
            font-weight: 500;
            font-size: 24px;
            text-align: center;
            color: #F3EAC2;

        }
    </style>

    <body style="background-color:#F3EAC2; text-align: center">
    <center>
        <img class="log" src="log.svg" alt="centered image">
        <br>
        <form name="myform" action ="landing.jsp">
            <button class="btn" type = "submit">Continue</button>
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
    String address = request.getParameter("address");
    if (password.equals(passwordconfirm)) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");
            Statement st = conn.createStatement();

            int i = st.executeUpdate("insert into hacklogin values('" + name + "','" + regno + "','" + password + "','" + email + "','" + phone + "','" + address + "')");

        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    } else {
        out.println("Passwords do not match");
    }
%>

</html>