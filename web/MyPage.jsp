<%-- 
    Document   : MyPage
    Created on : 15.11.2017, 15:23:27
    Author     : Roma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/font-awesome.css" type="text/css">
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link href="css/style.css" rel="stylesheet">
 <link href="lean/lean-slider.css" rel="stylesheet">
    <!--Link to Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet'>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="scripts/stickyNavScript.js"></script>
    <script src="lean/lean-slider.js"></script>
	<title>UAUDIO</title>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
</head>

<body>
    
    <div style=" margin-top: 25px; margin-left: 550px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 50px;
 color: #ff5050;"><a href="Logged.jsp"><img src ="img/header_ua_logo.png"  height="100" style="padding-left: 50px; color: #008080; opacity: 0.999;"></a>
         </div>
       
    <div style="  margin-left: 50px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 25px;
         color: #33cccc;"><a href="Reviews.jsp"> REVIEWS</a></div> 
     
    <div style="  margin-left: 215px; margin-top: -37px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 25px;
 color: #33cccc;"><a href="Cart.jsp">CART</a></div> 
     <div style=" text-align: right; margin-right: 215px; margin-top: -37px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 25px;
 color: #33cccc;"><a href="MyPage.jsp">MY PAGE</a></div> 
 
       <div style="  text-align: right;margin-right: 50px;margin-top: -37px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 25px;
            color: #33cccc;"><a href="Comment.jsp">LOG OUT</a></div>
<header> 
	<nav class="dws-menu">
            <hr>
		<ul>
			<li><a href="#">AUDIO INTERFACES</a>
                            <ul>
                                <li><a href="uaudio.jsp">UNIVERSAL AUDIO</a></li>
                                <li><a href="maudio.jsp">M-AUDIO</a></li> 
                            </ul>                      
                        </li>
			<li><a href="#">MICROPHONES</a>
				<ul>
					<li><a href="neumann.jsp">NEUMANN</a></li>
					<li><a href="takstar.jsp">TAKSTAR</a></li>
				</ul>
			</li>
			<li><a href="#">SPEAKERS</a>
				<ul>
					<li><a href="krk.jsp">KRK</a></li>
					<li><a href="genelec.jsp">GENELEC</a></li>
				</ul>
			</li>
			<li><a href="#">MIDI-KEYS</a>
                                <ul>
					<li><a href="akai.jsp">AKAI</a></li>
					<li><a href="novation.jsp">NOVATION</a></li>
				</ul>
                        </li>
                                
			
		</ul>
	<hr>
        </nav>
</header>
  
    
        <hr style="border: 0;
    height: 15px;
    background-image: -webkit-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
    background-image:    -moz-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
    background-image:     -ms-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
    background-image:      -o-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); ">
    
    
         <div class="w3-content" style="max-width:1400px">

<!-- Header -->
<header class="w3-container w3-center w3-padding-32"> 
  <h1><b>MY PAGE</b></h1>
  <br>
  <h4>Welcome back, Mr. <span class="w3-tag"><%session=request.getSession(); 
         out.println(session.getAttribute("login"));%>!</span></h4>
</header>

<!-- Grid -->
<div class="w3-row">

<!-- Blog entries -->
<div class="w3-col l8 s12">
  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
    <div class="w3-container w3-center">
      <h1><b>ACCOUNT INFORMATION</b></h1>
       </div>

    <div class="w3-container">
        <h3 style="padding-left:125px; padding-top: 40px">Name     ........................................................... <%session=request.getSession(); 
         out.println(session.getAttribute("login"));%></h3>
         
        <h3 style="padding-left:125px; padding-top: 40px">Surname     ........................................................... <%session=request.getSession(); 
         out.println(session.getAttribute("surname"));%></h3>
         
        <h3 style="padding-left:125px; padding-top: 40px">Number     ........................................................... <%session=request.getSession(); 
         out.println(session.getAttribute("number"));%></h3>
         
        <h3 style="padding-left:125px; padding-top: 40px">Address     ........................................................... <%session=request.getSession(); 
         out.println(session.getAttribute("address"));%></h3>
         
      <h3 style="padding-left:125px; padding-top: 40px;padding-bottom: 55px">E-Mail     .................................................. <%session=request.getSession(); 
         out.println(session.getAttribute("email"));%></h3>
      
        
         
         <p style="padding-left:650px"><button class="w3-button w3-padding-large w3-white w3-border"><b><a href="ChangeInfo.jsp">EDIT PAGE »</a></b></button></p>
        
    </div>
  </div>
  <hr>

  <!-- Blog entry -->
  
<!-- END BLOG ENTRIES -->
</div>

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  
  <!-- Posts -->
  <div class="w3-card w3-margin" >
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16">
          <span class="w3-large"><a href="MyPage.jsp">Account information</a></span><br>
           </li>
      <li class="w3-padding-16">
        <span class="w3-large"><a href="ChangeInfo.jsp">Change information</a></span><br>
        
      </li> 
      <li class="w3-padding-16">
        <span class="w3-large"><a>Address information</a></span><br>
      </li>
      <li class="w3-padding-16">
        <span class="w3-large">My wishes</span><br>
      </li>
    </ul>
  </div>
  <hr> 
 
  <!-- Labels / tags -->

  
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>
     <footer>  
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
    <div class="w3-content" style="max-width:600px">
      <h4 class="w3-center"><b>Contact Us</b></h4>
      
      <form action="NewServlet4" target="_blank">
        <div class="w3-section">
          <label>Name</label>
          <input class="w3-input w3-border" type="text" name="Name" required>
        </div>
        <div class="w3-section">
          <label>Email</label>
          <input class="w3-input w3-border" type="text" name="Email" required>
        </div>
        <div class="w3-section">
          <label>Message</label>
          <input class="w3-input w3-border" type="text" name="Message" required>
        </div>
        <input type="submit" class="w3-button w3-block w3-black w3-margin-bottom" value="Send Message">
      </form>
    </div>
  <i class=" fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
   </div>       
    </footer>
</body>
</html>