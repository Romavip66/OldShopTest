<%-- 
    Document   : Comment
    Created on : 07.10.2017, 22:07:23
    Author     : 123
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	<title>Tom menu</title>
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
 color: #33cccc;">CART</div> 
     <div style=" text-align: right; margin-right: 215px; margin-top: -37px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 25px;
          color: #33cccc;"><a href="Registration.jsp">REGISTRATION</a></div> 
 
       <div style="  text-align: right;margin-right: 50px;margin-top: -37px; font-family: Cuprum, Arial, Helvetica, sans-serif;font-size: 25px;
            color: #33cccc;"><a href="Comment.jsp">LOG IN</a></div>
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

<footer>  
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
    <div class="w3-content" style="max-width:600px">
      <h4 class="w3-center"><b>Registration</b></h4>
      
      <form action="NewServlet2" target="_self">
        <div class="w3-section">
          <label>Login</label>
          <input class="w3-input w3-border" type="text" name="Login" required>
        </div>
          <div class="w3-section">
          <label>Password</label>
          <input class="w3-input w3-border" type="text" name="Password" required>
        </div>
          <div class="w3-section">
          <label>Name</label>
          <input class="w3-input w3-border" type="text" name="Name" required>
        </div>
          <div class="w3-section">
          <label>Surname</label>
          <input class="w3-input w3-border" type="text" name="Surname" required>
        </div>
        <div class="w3-section">
          <label>Email</label>
          <input class="w3-input w3-border" type="text" name="Email" required>
        </div>
        <div class="w3-section">
          <label>Number</label>
          <input class="w3-input w3-border" type="text" name="Number" required>
        </div>
        <div class="w3-section">
          <label>Address</label>
          <input class="w3-input w3-border" type="text" name="Address" required>
        </div>
          <input type="submit" class="w3-button w3-block w3-black w3-margin-bottom" value="Registr">
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
 
       