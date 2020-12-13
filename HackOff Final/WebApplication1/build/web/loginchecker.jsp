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
        String sql = "select name, regno, password from student where email = '" + email + "'";
        ResultSet rs = st.executeQuery(sql);
        while (rs.next()) {
            if (rs.getString(1).equals(name) && rs.getString(2).equals(regno) && rs.getString(3).equals(password)) {
                out.println("Logged in!");
            } 
            else 
            {
                out.println("Error, invalid email or password.");
            }
        }
    } catch (Exception e) {
        out.print(e);
        e.printStackTrace();
    }
%>
<form name="Back" action="loginassn.jsp">
    <input type="submit" value="Back" name="Back" />
</form>