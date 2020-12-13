<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");
        Statement st = con.createStatement();
        //Statement st2 = con.createStatement();
        String sql = "select * from student";
        ResultSet rs = st.executeQuery(sql);
        out.println("<pre>Name   RegNo   Email   Pasword</pre<br>");
        while (rs.next()) {
            out.println(rs.getString(1) + "   " + rs.getString(2) + "   " + rs.getString(3) + "   " + rs.getString(4) + "<br>");
        }
        rs.close();
        con.close();
    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>
<form name="Back" action="index.jsp">
    <input type="submit" value="Back" name="Back" />
</form>