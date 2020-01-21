/* 
* To change this license header, choose License Headers in Project Properties. 
* To change this template file, choose Tools | Templates 
* and open the template in the editor. 
*/ 

import java.io.IOException; 
import java.io.PrintWriter; 
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.PreparedStatement;
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
public class NewServlet1 extends HttpServlet { 

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
String name1 ="root"; 
String password1 = ""; 
String id = request.getParameter("idishka"); 
String login=request.getParameter("changeLogin"); 
String password=request.getParameter("changePassword"); 
String name=request.getParameter("changeName"); 
String surname=request.getParameter("changeSurname"); 
String email=request.getParameter("changeEmail"); 
String numb=request.getParameter("changeNumber"); 
String address=request.getParameter("changeAddress"); 
int idishka=Integer.parseInt(id.trim()); 
int num=Integer.parseInt(numb.trim()); 
try { 
con = DriverManager.getConnection(url, name1, password1);
String updateTableSQL = "UPDATE regis SET LOGIN=?,PASSWORD=?,NAME=?,SURNAME=?,EMAIL=?,NUMBER=?,ADDRESS=? WHERE ID=?"; 
 
PreparedStatement pS = con.prepareStatement(updateTableSQL);

pS.setString (1, login); 
pS.setString (2, password); 
pS.setString(3, name); 
pS.setString(4, surname); 
pS.setString(5, email); 
pS.setInt(6, num);
pS.setString(7, address);
pS.setInt(8,idishka);
pS.executeUpdate();
pS.close();
request.getRequestDispatcher("MyPage.jsp").forward(request, response); 


} catch (SQLException ex) { 
Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex); 

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