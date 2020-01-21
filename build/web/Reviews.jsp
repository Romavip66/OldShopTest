<%-- 
    Document   : Logged
    Created on : 15.11.2017, 10:17:12
    Author     : Roma
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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link href="css/style.css" rel="stylesheet">
<link href="css/slide.css" rel="stylesheet">
<link href="lean/lean-slider.css" rel="stylesheet">
<link href="http://www.krksys.com/SpryAssets/SpryAccordion.css" rel="stylesheet" type="text/css" />
<link href="http://www.krksys.com/SpryAssets/SprySlidingPanels.css" rel="stylesheet" type="text/css" />

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
      <% 
       Connection connection=null;
       ResultSet result=null;
  try {
    Class.forName("com.mysql.jdbc.Driver");  
    String url="jdbc:mysql://localhost:3306/test";
    connection = DriverManager.getConnection(url, "root", "");
    String sql;
    Statement stmt = connection.createStatement();
            sql = "SELECT *  FROM review";
             result = stmt.executeQuery(sql);
  }
  catch(Exception e)
  {
    System.out.println("Could not connect");
  }
%>
<%    int count=0;
      double plus=0;
%>
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
  <div class="w3-container">
   
         
  <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
      <h1 class="w3-center">REVIEWS</h1>   
      <hr class="w3-clear" >
          <div class="w3-row-padding" style="margin:0 -16px">
              <div id="slider">
       </div>

                  <br>
                  <h2>Comments:<br>
              <br>        
      <% while(result.next()){%>  
          Mr.<% out.print(" "+result.getString("Name")+" ");%>
         
          , Said:<br>
            <%out.print(result.getString("Message")+"\n"+" ");%>  
          <br>
          <br>
         <% out.println();
      }
      connection.close();
      %> 
      </h2>
               
              </div>
              </div>

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