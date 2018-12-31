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
       <form method="post" action="filter.jsp">
           <p style='text-align:center;'>Sort by:&nbsp;&nbsp;&nbsp;&nbsp;name<input type="radio" name="filter" value="name" checked="checked">
           price<input type="radio" name="filter" value="price">
           quantity<input type="radio" name="filter" value="quantity"></p>
           
           <p style='text-align:center;'>Select Price range:&nbsp;&nbsp;&nbsp;&nbsp;<input name="low" type="text">
               -<input name="high" type="text">
           <br>
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
