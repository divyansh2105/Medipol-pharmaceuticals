<%-- 
    Document   : update
    Created on : Dec 29, 2017, 11:51:34 PM
    Author     : Dahiya
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="profile.jsp" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br>
        <form method="post" action="updateo">
        <br><br><p style='text-align:center;'>  Update Organisation name   &nbsp;&nbsp;New value:&nbsp;&nbsp;<input type="text" name="newo"/>
 
               <br><br> Update Email-id   &nbsp;&nbsp;New value:&nbsp;&nbsp;<input type="text" name="newe"/>
               <br><br> Update Phone no.  &nbsp;&nbsp;New value:&nbsp;&nbsp;<input type="text" name="newp"/>
               <br><br> Update Address   &nbsp;&nbsp;New value:&nbsp;&nbsp;<input type="text" name="newa"/>
               
               <br><br><input type="submit" /></p>
        </form>
        <br><br>
        <%
//           String username=(String)session.getAttribute("username");
//           String newo= request.getParameter("newo");         
//           String newe= request.getParameter("newe");
//            String newp= request.getParameter("newp");
//             String newa= request.getParameter("newa");
//              Class.forName("com.mysql.jdbc.Driver");
//         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
//         PreparedStatement stmt1=null; PreparedStatement stmt2=null; PreparedStatement stmt3=null; PreparedStatement stmt4=null;
//         ResultSet rs1=null; ResultSet rs2=null; ResultSet rs3=null; ResultSet rs4=null;
//        try{ 
//            if(!newo.equals(""))
//            out.println("invalid");
//         if(!newo.equals(""))
//        {
//             String q1="update signup set orgname=? where username=?";
//             stmt1= con.prepareStatement(q1);
//     stmt1.setString(1, newo);
//     stmt1.setString(2, username);
//     rs1 = stmt1.executeQuery(); 
//     out.println("<br>Organization name updated!!");
//        }
//         else
//         {
//             out.println("invalid");
//         }
//        if(!newe.equals(""))
//        {
//            String q2="update signup set email=? where username=?";   
//          stmt2= con.prepareStatement(q2);
//     stmt2.setString(1, newe);
//     stmt2.setString(2, username);
//        rs2 = stmt1.executeQuery(); 
//        out.println("<br>Email-id updated!!");
//        }
//        if(!newp.equals(""))
//        {
//             String q3="update signup set password=? where username=?";
//               stmt3= con.prepareStatement(q3);
//     stmt3.setString(1, newp);
//     stmt3.setString(2, username);
//     rs3 = stmt1.executeQuery(); 
//        out.println("<br>Phone no. updated!!");
//        }
//        if(!newa.equals(""))
//        {
//             String q4="update signup set address=? where username=?";
//               stmt4= con.prepareStatement(q4);
//     stmt4.setString(1, newa);
//     stmt4.setString(2, username);
//     rs4 = stmt1.executeQuery(); 
//     out.println("<br>Address updated!!");
//        }
//        }
//        catch(Exception e)
//        {
//            out.println(e);
//        }
//         
         
            %>
    </body>
</html>
