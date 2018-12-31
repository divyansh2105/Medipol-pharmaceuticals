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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dahiya
 */
public class signup3 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String orgname=request.getParameter("orgname2");
         String username=request.getParameter("username2");
         String password=request.getParameter("password2");
         String phone=request.getParameter("phone2");
         String address=request.getParameter("address2");
         String email=request.getParameter("email2");
         String rpassword=request.getParameter("rpassword2");
            
            Class.forName("com.mysql.jdbc.Driver");  
  
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","")) {
                if(!orgname.equals("-") && !username.equals("-") && !password.equals("-") && !rpassword.equals("-") && !phone.equals("-") && !email.equals("-") && !address.equals("-")) 
                {       
                PreparedStatement pst=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
                pst.setString(1, orgname);
            pst.setString(2,username);
            pst.setString(3,password);
            pst.setString(4,email);
            pst.setString(5,phone);
            pst.setString(6,address); 
                pst.executeUpdate();
                
            }
                else 
                {
                    out.println("<form action='signup3'>");
            out.println("<input type='hidden' value="+orgname+"name='orgname'");
            out.println("<input type='hidden' value="+password+"name='password'");
             out.println("<input type='hidden' value="+username+"name='username'");
             out.println("<input type='hidden' value="+rpassword+"name='rpassword'");
             out.println("<input type='hidden' value="+phone+"name='phone'");
            out.println("<input type='hidden' value="+email+"name='email'");
            out.println("<input type='hidden' value="+address+"name='address'");
            out.println("</form>");
            request.getRequestDispatcher("signupduplicate.jsp").forward(request, response);
           out.println("in signup3");
           
            
                }
            }
  
catch(Exception e){ System.out.println(e);}  
  
    }}   
                






