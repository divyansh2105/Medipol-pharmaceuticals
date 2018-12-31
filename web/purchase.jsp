<%-- 
    Document   : purchase
    Created on : Dec 28, 2017, 1:41:09 PM
    Author     : Dahiya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
       <jsp:include page="profile.jsp" />
               
       <br><br><br>
       <form method="post" action="purchase1.jsp">          
           <p style='text-align:center;'>Enter product name you want to purchase:&nbsp;&nbsp;&nbsp;&nbsp;<input name="name" type="text">
           <br>
           Enter Quantity:&nbsp;&nbsp;&nbsp;&nbsp;<input name="quantity" type="text"/>
           <br><input type ="submit"></p>
       </form>     
       <br><br>
    <% 
          Class.forName("com.mysql.jdbc.Driver");
          
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
           
         Statement stmt = null;
    String query ="select * from drugs ";
             out.println("<table style='width:40%' border='1'> <tr><th>drug name <th>quantity  <th>price  <th>drug id </tr>    ");
      stmt = con.createStatement();
      ResultSet rs=null;
       rs = stmt.executeQuery(query); 
      while (rs.next()) { 
      out.println("<tr><td>"+rs.getString(1)+"<td>"+rs.getString(2)+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"</tr>");
       }
      %>
    </body>
</html>
