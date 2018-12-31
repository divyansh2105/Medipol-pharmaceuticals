<%-- 
    Document   : cart
    Created on : Dec 28, 2017, 10:04:49 PM
    Author     : Dahiya
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
        <h1>CART</h1>
        
        <% String cart1=null; String cart2=null; String cart3=null; String cart4=null; String cart5=null;
       
        String c1=null;String c2=null;String c3=null;String c4=null;String c5=null;
        c1=(String)session.getAttribute("cart");//out.println(cart1+cart2+cart3+cart4+cart5);
            session.setAttribute("c1", c1);
             cart1=(String)session.getAttribute("c1");
        //out.println(cart1);
//        if(cart1==null && cart2==null && cart3==null && cart4==null && cart5==null)
//            {
//            c1=(String)session.getAttribute("cart");out.println(cart1+cart2+cart3+cart4+cart5);
//            session.setAttribute("c1", c1);
//             cart1=(String)session.getAttribute("c1");
//            }
//        else if(cart1!=null && cart2==null && cart3==null && cart4==null && cart5==null)
//            {
// c2=(String)session.getAttribute("cart");out.println(cart1+cart2+cart3+cart4+cart5);
//            session.setAttribute("c2", c2);
//             cart2=(String)session.getAttribute("c2");           
//            }
//        else if(cart1!=null && cart2!=null && cart3==null && cart4==null && cart5==null)
//            {
// c3=(String)session.getAttribute("cart");out.println(cart1+cart2+cart3+cart4+cart5);
//            session.setAttribute("c3", c3);
//             cart3=(String)session.getAttribute("c3");           
//            }
//        else if(cart1!=null && cart2!=null && cart3!=null && cart4==null && cart5==null)
//            {
// c4=(String)session.getAttribute("cart");out.println(cart1+cart2+cart3+cart4+cart5);
//            session.setAttribute("c4", c4);
//             cart4=(String)session.getAttribute("c4");           
//            }
//        else if(cart1!=null && cart2!=null && cart3!=null && cart4!=null && cart5==null)
//            {
// c5=(String)session.getAttribute("cart");out.println(cart1+cart2+cart3+cart4+cart5);
//            session.setAttribute("c5", c5);
//             cart5=(String)session.getAttribute("c55");          
//            }

Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
           out.println(cart1+cart2+cart3+cart4+cart5);
    String query ="select * from drugs where drugname=?";
     PreparedStatement stmt = con.prepareStatement("select * from drugs where drugname=?");
    stmt.setString(1, cart1); 
             out.println("<table style='width:40%' border='1'> <tr><th>drug name <th>quantity  <th>price  <th>drug id </tr>    ");
      ResultSet rs=null;
       rs = stmt.executeQuery(); 
      while (rs.next()) { 
      out.println("<tr><td>"+rs.getString(1)+"<td>"+rs.getString(2)+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"</tr>");
   
       //out.println((String)session.getAttribute("cart"));
      }
      String query2 ="select * from drugs where drugname=?";
     PreparedStatement stmt2 = con.prepareStatement("select * from drugs where drugname=?");
    stmt.setString(1, cart2); 
      ResultSet rs2=null;
       rs2 = stmt2.executeQuery(); 
      while (rs2.next()) { 
      out.println("<tr><td>"+rs2.getString(1)+"<td>"+rs2.getString(2)+"<td>"+rs2.getString(3)+"<td>"+rs2.getString(4)+"</tr>");
   
       //out.println((String)session.getAttribute("cart"));
      }


            %>
        
        
    </body>
</html>
