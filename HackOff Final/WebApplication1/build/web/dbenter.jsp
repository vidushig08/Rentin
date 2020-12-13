<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String name = request.getParameter("name");
    String regno = request.getParameter("regno");
    String email = request.getParameter("email");
    String password = request.getParameter("pass");

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");
        Statement st = conn.createStatement();

        int i = st.executeUpdate("insert into student(name,regno,email,password)values('" + name + "','" + regno + "','" + email + "','" + password + "')");
   
    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>
<form name="Back" action="index.jsp">
    <input type="submit" value="Back" name="Back" />
</form>