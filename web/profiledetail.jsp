<%-- 
    Document   : profiledetail
    Created on : Dec 29, 2017, 10:39:59 PM
    Author     : Dahiya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Enumeration"%>
<jsp:include page="profile.jsp" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String username=(String)session.getAttribute("username");
           
           Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
           
    String query ="select * from signup where username=?";
     PreparedStatement stmt = con.prepareStatement(query);
     stmt.setString(1, username);
     ResultSet rs=null;
       rs = stmt.executeQuery(); 
       while (rs.next()) { 
     out.println("<br><br><br><br>Organization:  "+rs.getString(1)+"<br>Username:  "+rs.getString(2)+"<br>Email-id:  "+rs.getString(4)+"<br>Phone no:  "+rs.getString(5)+"<br>Address:  "+rs.getString(6));
       }
       out.println("<br><br><a href='update.jsp'>Update details</a>");
            %>
    </body>
</html>
