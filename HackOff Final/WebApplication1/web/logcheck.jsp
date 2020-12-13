<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>  
<jsp:setProperty property="*" name="obj"/>

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
    </body>
</html>


<%
    String regno = request.getParameter("regno");
    String password = request.getParameter("password");
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");
        Statement st = conn.createStatement();
        String sql = "select password from hacklogin where regno = '" + regno + "'";
        ResultSet rs = st.executeQuery(sql);
        while (rs.next()) {
            if (rs.getString(1).equals(password)) {
                Cookie loginCookie = new Cookie("sessionID", regno);
                loginCookie.setMaxAge(120 * 60); // setting cookie expiry time as 120 minutes
                response.addCookie(loginCookie);
%> 
<center>
    <img class="log" src="log.svg" alt="centered image">
    <br>
    <form name="myform" action ="landing.jsp">
        <button class="btn" type = "submit">Continue</button>
    </form>
</center>

<% } else {
%>

<center>
    <img class="log" src="log.svg" alt="centered image">
    <br>
    <form name="myform" action ="login.jsp">
        <button class="btn" type = "submit">Continue</button>
    </form>
</center>

<%
            }
        }
    } catch (Exception e) {
        out.print(e);
        e.printStackTrace();
    }
%>

</html>
