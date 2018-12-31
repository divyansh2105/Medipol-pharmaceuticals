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
import static java.sql.JDBCType.NULL;
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
import javax.swing.JOptionPane;

/**
 *
 * @author Dahiya
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String username=request.getParameter("username");
         String password=request.getParameter("password");
         Class.forName("com.mysql.jdbc.Driver");
          out.println(username);
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
           
         Statement stmt = null;
    String query =
        "select orgname,username,password from signup";
     HttpSession session1=request.getSession();
        String captcha = (String) session1.getAttribute("captcha");
    String code=request.getParameter("code");
    out.println(captcha +"  " + code);
    int flag=0;
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(query); 
        while (rs.next()) { 
            
            if (captcha != null && code != null) {
    if (captcha.equals(code)) {
	           
            if(username.equals(rs.getString(2)) && password.equals(rs.getString(3)))
            {// out.println("  Welcome:  "+rs.getString(1));
            HttpSession session=request.getSession();
		session.setAttribute("orgname",rs.getString(1));
                session.setAttribute("username",rs.getString(2));
                session.setAttribute("password",rs.getString(3));
                
                flag=1;
                
             break;   
            }
            else
            {
                
                if((username!=rs.getString(2)) && password.equals(rs.getString(3)))
                        {
                            flag=2;
                        }
                else if(password!=(rs.getString(3)) &&(username.equals(rs.getString(2))))
                {
                          flag=3;  

                }
                else if((username!=rs.getString(2)) && password!=(rs.getString(3)))
                {
                          flag=4; 
                }
            }
    }
    else
    {
                request.getRequestDispatcher("login3.jsp").forward(request, response);        
    }
    
            }
            
    }
     
        if(flag==1)
        {
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        }
        if(flag==2 || flag==4)
        {
            request.getRequestDispatcher("login1.jsp").forward(request, response);
        }
         if(flag==3)
         {
              request.getRequestDispatcher("login2.jsp").forward(request, response);
         }
             
    }   catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }

}}