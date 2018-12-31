<%-- 
    Document   : profile
    Created on : Dec 28, 2017, 1:32:55 PM
    Author     : Dahiya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
            String orgname=(String)session.getAttribute("orgname");
            String name=(String)session.getAttribute("username");
            Class.forName("com.mysql.jdbc.Driver");  
  
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
                    String query0="select * from signup where username=?";
            PreparedStatement stmt1 = con.prepareStatement(query0);
            stmt1.setString(1, name);
     ResultSet rs=null;
       rs = stmt1.executeQuery(); 
       while (rs.next()) {
           orgname=rs.getString(1);
       }
            out.println("<b> Welcome:  "+orgname+"</b><hr>");
           session.setAttribute("c1", null);
       session.setAttribute("c2", null);
                %>
                <br><br>
                <font size="6" color="red"><a href="purchase.jsp">Purchase</a></font>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="6" color="red"><a href="search.jsp">Search</a></font>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="6" color="red"><a href="history.jsp">View order history</a></font>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="6" color="red"><a href="profiledetail.jsp">View profile details</a></font>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="6" color="red"><a href="cart.jsp">Cart</a></font>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="6" color="red"><a href="logout.jsp">Logout</a></font>

    </body>
</html>
