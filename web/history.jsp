<%-- 
    Document   : order
    Created on : Dec 29, 2017, 6:48:13 PM
    Author     : Dahiya
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<jsp:include page="profile.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br><br><br>
        <% 
         String username=(String)session.getAttribute("username");
         String orgname=null;
            Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
           String query0="select * from signup where username=?";
            PreparedStatement stmt1 = con.prepareStatement(query0);
            stmt1.setString(1, username);
     ResultSet rs=null;
       rs = stmt1.executeQuery(); 
       while (rs.next()) {
           orgname=rs.getString(1);
       }
    String query ="select * from orders where username=?";
     PreparedStatement stmt = con.prepareStatement(query);
    stmt.setString(1, username); 
    out.println("<table style='width:40%' border='1'> <tr><th>order id <th>organisation  <th>order date  <th>order quantity  <th>drug name</tr>    ");

      ResultSet rs2=null;
       rs2 = stmt.executeQuery(); 
      while (rs2.next()) { 
      out.println("<tr><td>"+rs2.getString(1)+"<td>"+rs2.getString(2)+"<td>"+rs2.getString(3)+"<td>"+rs2.getString(4)+"<td>"+rs2.getString(5)+"</tr>");
       }
      out.println("<br><br><font size='6' color='red'>Order History</font><br><br>");
            %>
    </body>
</html>
