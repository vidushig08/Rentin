<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
    <%
        Cookie loginCookie = null;
        String regNo = "";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("sessionID")) {
                    regNo = cookie.getValue();
                    break;
                }
            }
        }
        String n = "";
        String em = "";
        String rn = "";
        String ph = "";
        String ad = "";
        if (!regNo.equals("")) {

            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");

                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "kirit");
                Statement st = conn.createStatement();
                String sql = "select name, email, regno, phone, address from hacklogin where regno = '" + regNo + "'";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next())
                {n = rs.getString(1);
                em = rs.getString(2);
                rn = rs.getString(3);
                ph = rs.getString(4);
                ad = rs.getString(5);
                }
                System.out.println(n);
                System.out.println(em);
                
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        }
    %>
    }
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <!--Linking CSS-->
        <link type="text/css" rel="stylesheet" href="profile.css" />
        <link type="text/css" rel="stylesheet" href="landing.css" />

        <!--Google Fonts-->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

        <!--Title and Logo-->
        <title>Rentin'</title>
        <link rel="icon" type="image/png" href="assets/first-page/logo.svg">
    </head>

    <body>
        <div id="content">
            <!--NAVBAR Starts-->
            <nav class="nav-active" id="navbar">
                <!-- Logo in Navbar -->
                <div class="logo">
                    <a href="first.jsp" style="text-decoration: none; color: #F3EAC2">
                        <h4><img src="assets/navbar/rupee.png" class="rupee-logo">entin'</h4>
                    </a>
                </div>
                <!--Search Tab in Navbar-->
                <form autocomplete="off" onsubmit="return getCity(event);">
                    <input class="search-tab" placeholder="Search ..." type="text" id="">
                </form>
                <!-- Nav Links -->
                <ul class="navlinks">
                    <li>
                        <a href="first.jsp" class="home nav-link nav-link-grow-up" id="active">Home</a>
                    </li>
                    <li>
                        <a href="#category-page" class="categories nav-link nav-link-grow-up">Categories</a>
                    </li>
                    <li>
                        <a href="profile.jsp" class="myprofile nav-link nav-link-grow-up"><img class="user" src="assets/navbar/profile.svg"> My Profile</a>
                    </li>

                    <!--Add Buttons-->
                    <a href="upload.jsp"><button class="rent-sell" > &nbsp; + RENT/SELL &nbsp;</button></a> 
                </ul>
            </nav>
            <!--NAVBAR Ends-->
            <div style="margin-top:15vh;margin-left:5vh;">
                <img class="line1" src="Vector 1.png">
                <h2 class="myprofile">My Profile</h2>
                <img class="line2" src="Vector 1.png">
                <table width="100%">
                    <tr>
                        <td width="70%">
                            
                            <div class="name">Name
                                <img class="lo" src="edit 6.png"></div>
                            <div class="namebox"  contenteditable="true"><%=n %></div>
                            <br>
                            <div class="name" contenteditable="true">Registration Number
                                <img class="lo" src="edit 6.png"></div>
                            <div class="namebox"  contenteditable="true"><%=rn %></div>
                            <br>
                            <div class="name" contenteditable="true">VIT E-mail
                                <img class="lo" src="edit 6.png"></div>
                            <div class="namebox"  contenteditable="true"><%=em %></div>
                            <br>
                            <div class="name" contenteditable="true">Phone Number
                                <img class="lo" src="edit 6.png"></div>
                            <div class="namebox"  contenteditable="true"><%=ph %></div>
                            <br>
                            <div class="name">Address
                                <img class="lo" src="edit 6.png"></div>
                            <div class="namebox"  contenteditable="true"><%=ad %></div>
                            <br>
                        </td>
                        <td>
                            <img class="" src="Vector1.png">
                            <br>
                    <center><img class="lo" src="edit 6.png"></center>
                    </td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>