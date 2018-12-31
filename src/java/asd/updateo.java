/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dahiya
 */
public class updateo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
             HttpSession session=request.getSession(false);  
            String username=(String)session.getAttribute("username");
           String newo= request.getParameter("newo");         
           String newe= request.getParameter("newe");
            String newp= request.getParameter("newp");
             String newa= request.getParameter("newa");
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(updateo.class.getName()).log(Level.SEVERE, null, ex);
            }
            
         Connection con = null;
            
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
            } catch (SQLException ex) {
                Logger.getLogger(updateo.class.getName()).log(Level.SEVERE, null, ex);
            }
            
         PreparedStatement stmt1=null; PreparedStatement stmt2=null; PreparedStatement stmt3=null; PreparedStatement stmt4=null;
        try{ 
         if(!newo.equals(""))
        {
             String q1="update signup set orgname=? where username=?";
             stmt1= con.prepareStatement(q1);
     stmt1.setString(1, newo);
     stmt1.setString(2, username);
     stmt1.executeUpdate();
     request.getRequestDispatcher("updated.jsp").forward(request, response);
       
        }
        
        if(!newe.equals(""))
        {
            String q2="update signup set email=? where username=?";   
          stmt2= con.prepareStatement(q2);
     stmt2.setString(1, newe);
     stmt2.setString(2, username);
     stmt2.executeUpdate();
     request.getRequestDispatcher("updated.jsp").forward(request, response);
        }
        if(!newp.equals(""))
        {
             String q3="update signup set phone=? where username=?";
               stmt3= con.prepareStatement(q3);
     stmt3.setString(1, newp);
     stmt3.setString(2, username);
     stmt3.executeUpdate();
     request.getRequestDispatcher("updated.jsp").forward(request, response);
        }
        if(!newa.equals(""))
        {
             String q4="update signup set address=? where username=?";
               stmt4= con.prepareStatement(q4);
     stmt4.setString(1, newa);
     stmt4.setString(2, username);
     stmt4.executeUpdate();
     request.getRequestDispatcher("updated.jsp").forward(request, response);
        }
        }
        catch(Exception e)
        {
            out.println(e);
        }
            
//                 HttpSession session=request.getSession(false);  
//            String username=(String)session.getAttribute("username");
//           String newo= request.getParameter("newo");         
//         
//            try {
//                Class.forName("com.mysql.jdbc.Driver");
//            } catch (ClassNotFoundException ex) {
//                Logger.getLogger(updateo.class.getName()).log(Level.SEVERE, null, ex);
//            }
//         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
//         PreparedStatement stmt1=null; 
//        
//            String q1="update signup set orgname=? where username=?";
//             stmt1= con.prepareStatement(q1);
//     stmt1.setString(1, newo);
//     stmt1.setString(2, username);
//     String q2="select * from signup where username=?";
//     PreparedStatement stmt2=null; 
//     stmt2= con.prepareStatement(q2);
//     stmt2.setString(1, username);
//     ResultSet rs2=null;
//       rs2 = stmt2.executeQuery(); 
//       String x=null;
//       while (rs2.next()) { 
//           x=rs2.getString(1);
//       }
//       
//     int flag=0;
//     if(stmt1.executeUpdate()!=0)
//     request.getRequestDispatcher("updated.jsp").forward(request, response);
//          
//
//             } catch (SQLException ex) {
//            Logger.getLogger(updateo.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
        }
    }
    

}
