<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <!--Linking CSS-->
        <link type="text/css" rel="stylesheet" href="hosteller-style.css" />

        <!--Google Fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

        <!--Title and Logo-->
        <title>Rentin'</title>
        <link rel="icon" type="image/png" href="assets/first-page/logo.svg">
    </head>

    <body>
        <div class="hosteller-page">
            <img class="hosteller-heading" src="assets/hosteller-page/HOSTELLER.png">
            <br>
            <br>
            <form>
                <label>HOSTEL</label>
                <br>
                <select id="Select" name="Select" class="form-info">
                    <option class="form-info" value="">Select</option>
                    <option class="form-info drop" id="mens" value="">MENS HOSTEL</option>
                    <option class="form-info drop" id="ladies" value="">LADIES HOSTEL</option>
                </select>
                <br><br>
                <label>BLOCK</label>
                <br>
                <input class="form-info" type="text" id="block" name="block" placeholder="Block">
                <br><br>
                <label>ROOM NUMBER</label>
                <br>
                <input class="form-info" type="text" id="roomno" name="roomno" placeholder="Room No.">
                <br>
            </form>
            <br>
            <a href="index.html">
                <button class="signup-button">Sign-Up</button>
            </a>
        </div>
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