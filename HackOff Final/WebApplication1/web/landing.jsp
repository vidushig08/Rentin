<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <!--Linking CSS-->
    <link type="text/css" rel="stylesheet" href="navbar.css" />
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
      <a href = "upload.jsp"><button class="rent-sell">&nbsp; + RENT/SELL &nbsp; </button></a> 
			</ul>
		</nav>
        <!--NAVBAR Ends-->

        <!--Landing Page-->

        <div class="homepage">
            <img class="circle" src="assets/landing page/Ellipse 1.png">
            <img class="coins" src="assets/landing page/coins.gif">
        </div>

        <div class="about">
            <img class="about-info" src="assets/landing page/about info.png">
        </div>
        
        <div id="category-page" class="categories">
        <h2 style="color: #303960; font-size: 60px; padding-bottom: 40px;">CATEGORIES</h2>
            <div class="flip-card">
                <div class="flip-card-inner">

                  <div class="flip-card-front">
                    <img src="assets/landing page/education.png" style="width:250px; height:290px;">
                    <h2 class="category-heading">EDUCATION</h2>
                  </div>

                  <div class="flip-card-back">
                      <br><br><br><br>
                    <p class="category-info">Books, Stationery, Labcoats and more...</p>
                    <br>
                    <a href="education.html"><button class="interested">Interested</button></a>
                  </div>
                </div>
              </div>

              <div class="flip-card">
                <div class="flip-card-inner">

                  <div class="flip-card-front">
                    <img src="assets/landing page/appliances.png" style="width:250px; height:290px;">
                    <h2 class="category-heading">APPLIANCES</h2>
                  </div>

                  <div class="flip-card-back">
                      <br><br><br><br>
                    <p class="category-info">Kettles, Irons, Hair Driers and more...</p>
                    <br>
                    <a href="appliances.html"><button class="interested">Interested</button></a>
                  </div>
                </div>
              </div>

              <div class="flip-card">
                <div class="flip-card-inner">

                  <div class="flip-card-front">
                    <img src="assets/landing page/entertainment.png" style="width:250px; height:290px;">
                    <h2 class="category-heading">ENTERTAINMENT</h2>
                  </div>

                  <div class="flip-card-back">
                      <br><br><br><br>
                    <p class="category-info">Cameras, Speakers, Cards and more...</p>
                    <br>
                    <a href="entertainment.html"><button class="interested">Interested</button></a>
                  </div>
                </div>
              </div>

              <div class="flip-card">
                <div class="flip-card-inner">

                  <div class="flip-card-front">
                    <img src="assets/landing page/personal.png" style="width:250px; height:290px;">
                    <h2 class="category-heading">PERSONAL</h2>
                  </div>

                  <div class="flip-card-back">
                      <br><br><br><br>
                    <p class="category-info">Bicycles, Accessories, Football and more...</p>
                    <br>
                    <a href="personal.html"><button class="interested">Interested</button></a>
                  </div>
                </div>
              </div>
        </div>
        <%
            Cookie loginCookie = null;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("sessionID")) {
                        loginCookie = cookie;
                        break;
                    }
                }
            }
        %>
</body>
</html>