<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <!--Linking CSS-->
        <link type="text/css" rel="stylesheet" href="upload.css" />
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
                        <a href="categories.html" class="categories nav-link nav-link-grow-up">Categories</a>
                    </li>
                    <li>
                        <a href="profile.html" class="myprofile nav-link nav-link-grow-up"><img class="user" src="assets/navbar/profile.svg"> My Profile</a>
                    </li>

                    <!--Add Buttons-->
                    <a><button class="rent-sell">&nbsp; + RENT/SELL &nbsp;</button></a> 
                </ul>
            </nav>
            <!--NAVBAR Ends-->
            <div style="margin-top:15vh;margin-left:5vh;">
                <table width="100%">
                    <tr>
                        <td width="70%">
                            <div class="name">Item Name</div>
                            <input type="text" class="namebox" placeholder="Enter item name">
                            <br>
                            <br>
                            <div class="name">Category</div>
                            <ul>
                                <li class="link link-active">
                                    Education 
                                </li>
                                <li class="link">
                                    Appliances
                                </li>
                                <li class="link">
                                    Entertainment
                                </li>
                                <li class="link">
                                    Personal
                                </li>
                            </ul>
                            <br>
                            <script>
                                var x = document.querySelectorAll(".link");
                                x.forEach(function (elem) {
                                    elem.addEventListener("click", function () {
                                        document.querySelector(".link-active").classList.remove("link-active");
                                        this.classList.add("link-active");
                                    })

                                });
                            </script> 
                            <br>
                            <div class="name">Do you want to rent or sell?</div>
                            <ul>
                                <li class="lil lil-active">
                                    Rent
                                </li>
                                <li class="lil">
                                    Sell
                                </li>
                            </ul>
                            <br>
                            <script>
                                var x = document.querySelectorAll(".lil");
                                x.forEach(function (elem) {
                                    elem.addEventListener("click", function () {
                                        document.querySelector(".lil-active").classList.remove("lil-active");
                                        this.classList.add("lil-active");
                                    })

                                });
                            </script> 
                            <br>
                            <div class="name">Price</div>
                            <input type="text" class="namebox" placeholder="Enter price">
                            <br>
                            <br>
                            <input type="submit" class="brnn"> 
                        </td>
                        <td>
                            <input type="file" class="custom-file-input">
                            <br>
                            <br>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
