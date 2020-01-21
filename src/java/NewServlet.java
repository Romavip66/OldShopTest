/* 
* To change this license header, choose License Headers in Project Properties. 
* To change this template file, choose Tools | Templates 
* and open the template in the editor. 
*/ 

import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.sql.Statement; 
import java.util.logging.Level; 
import java.util.logging.Logger; 
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

/** 
* 
* @author Roma
*/ 
public class NewServlet extends HttpServlet { 

/** 
* Processes requests for both HTTP <code>GET</code> and <code>POST</code> 
* methods. 
* 
* @param request servlet request 
* @param response servlet response 
* @throws ServletException if a servlet-specific error occurs 
* @throws IOException if an I/O error occurs 
*/ 
protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException { 
   
response.setContentType("text/html;charset=UTF-8"); 
try (PrintWriter out = response.getWriter()) { 
try { 
Class.forName("com.mysql.jdbc.Driver"); 
} catch (ClassNotFoundException ex) { 
Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex); 
} 
int k=0; 
 HttpSession session = request.getSession();
Connection con = null; 
String url = "jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull"; 
String name ="root"; 
String password = ""; 
String login =request.getParameter("login"); 
String pass = request.getParameter("password"); 
String send = null;
String send1 = null;
String send2 = null;
String send3= null;
String send4= null;
int send5= 0;  
String skin=null;
String sendLogin=null;
String sendPassword=null;
try { 
con = DriverManager.getConnection(url, name, password); 
Statement st = (Statement) con.createStatement(); 
ResultSet rs = st.executeQuery("SELECT * FROM regis"); 
while(rs.next()) 
{ 
if(rs.getString("LOGIN").equals(login) && rs.getString("PASSWORD").equals(pass)) 
{ 
k=1; 
send5=rs.getInt("ID");
send=rs.getString("NAME");
send1=rs.getString("SURNAME");
send2=rs.getString("EMAIL");
send3=rs.getString("NUMBER");
send4=rs.getString("ADDRESS");
skin=Integer.toString(send5);
session.setAttribute("id", skin);
session.setAttribute("send1",login);
session.setAttribute("send2",pass);
session.setAttribute("login", send);
session.setAttribute("surname", send1);
session.setAttribute("email", send2);
session.setAttribute("number", send3);
session.setAttribute("address", send4);
} 

} 
} catch (SQLException ex) { 
Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex); 

} 
if(k==1) 
{ 
   request.setAttribute("send", send);
request.getRequestDispatcher("/Logged.jsp").forward(request, response); 

} 
else{ 
out.println("<!DOCTYPE html>"); 
out.println("<html>"); 
out.println("<head>"); 
out.println("<title>Authorization</title>"); 
out.println("</head>"); 
out.println("<body>"); 
out.println("<h1>We don't have user with that login and password</h1>"); 
out.println("</body>"); 
out.println("</html>"); 
} 
} 
} 

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code."> 
/** 
* Handles the HTTP <code>GET</code> method. 
* 
* @param request servlet request 
* @param response servlet response 
* @throws ServletException if a servlet-specific error occurs 
* @throws IOException if an I/O error occurs 
*/ 
@Override 
protected void doGet(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException { 
processRequest(request, response); 
} 

/** 
* Handles the HTTP <code>POST</code> method. 
* 
* @param request servlet request 
* @param response servlet response 
* @throws ServletException if a servlet-specific error occurs 
* @throws IOException if an I/O error occurs 
*/ 
@Override 
protected void doPost(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException { 
processRequest(request, response); 
} 

/** 
* Returns a short description of the servlet. 
* 
* @return a String containing servlet description 
*/ 
@Override 
public String getServletInfo() { 
return "Short description"; 
}// </editor-fold> 

}