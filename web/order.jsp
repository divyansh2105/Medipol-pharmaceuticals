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
        try{  String drugname= (String)session.getAttribute("dr");
          Date date = new Date();
          SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd");
    String dt= format.format(date);
    out.println(dt);
          String username= (String)session.getAttribute("username");out.println(username);
           String quantity;
            quantity= (String)session.getAttribute("quantity");
//String quantity=String.valueOf(quantityi);  
out.println(drugname + quantity);
       Class.forName("com.mysql.jdbc.Driver");  
  
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
       
                Statement stmt = null;
    String query ="select count(*) from orders ";
             out.println("<table style='width:40%' border='1'> <tr><th>order id  <th>order date  <th>order quantity  <th>drug name <th>username</tr>    ");
      stmt = con.createStatement();
      ResultSet rs=null;
       rs = stmt.executeQuery(query); 
       int count=0,c;
      while (rs.next()) { 
          count=Integer.parseInt(rs.getString(1))+1;
      }
        String cstring=String.valueOf(count);
        if(!username.equals(null))        
        {PreparedStatement pst=con.prepareStatement("insert into orders values(?,?,?,?,?)");
                pst.setString(1,cstring );
                pst.setString(2, dt);
                pst.setString(3,quantity);
                pst.setString(4,drugname);
                 pst.setString(5,username);
                int i=pst.executeUpdate();}
           else
        {
            out.println("<b>You have logged out<br>login to continue</b>");
        }
          String query1 ="select * from orders where orderid="+count;
          rs = stmt.executeQuery(query1); 
      while (rs.next()) { 
      out.println("<tr><td>"+rs.getString(1)+"<td>"+rs.getString(2)+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"<td>"+rs.getString(5)+"</tr>");
       }
      out.println("<br><br><font size='7' color='red'>Order Placed Successfully!!!</font><br><br>");
        }
        catch(Exception e)
        {
            out.println(e);
        }
            %>
    </body>
</html>
