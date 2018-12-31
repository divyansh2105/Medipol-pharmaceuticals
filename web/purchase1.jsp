<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<jsp:include page="profile.jsp" />
<br><br><br><br><br><br>
<% int quantity;
           String drugname= request.getParameter("name");
        quantity= Integer.parseInt(request.getParameter("quantity"));
       Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
           
    String query ="select * from drugs where drugname=?";
     PreparedStatement stmt = con.prepareStatement("select * from drugs where drugname=?");
    stmt.setString(1, drugname); 
             out.println("<table style='width:40%' border='1'> <tr><th>drug name <th>quantity  <th>price  <th>drug id </tr>    ");
      //stmt = con.createStatement();
      ResultSet rs=null;
      float x=0,total;
       rs = stmt.executeQuery(); 
      while (rs.next()) { 
      out.println("<tr><td>"+rs.getString(1)+"<td>"+rs.getString(2)+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"</tr>");
      total=0;
      total=quantity*Float.parseFloat(rs.getString(3));
      x+=total;
      session.setAttribute("cart",request.getParameter("name") );
      String c1=(String)session.getAttribute("cart");//out.println(cart1+cart2+cart3+cart4+cart5);
            session.setAttribute("c1", c1);
       
      }
            session.setAttribute("dr",drugname );
            session.setAttribute("quantity",String.valueOf(quantity));
      out.println("<br>Your total price is:  "+"<b>"+x+"</b>");
//      String c2=null;
//     if((String)session.getAttribute("c1") !=null)
//      {
//          String ca2=(String)session.getAttribute("cart");//out.println(cart1+cart2+cart3+cart4+cart5);
//            session.setAttribute("ca2", ca2);
//      }
//     session.setAttribute("dr", drugname);
//     String q=String.valueOf(quantity);
//          session.setAttribute("quantity", q);

      %>
</table>
<br>
<table>
      <tr><td><form action="cart.jsp" method="post">
          <input type="submit" value="Add to cart"/>
      </form>
          <td><form action="order.jsp" method="post">
          <input type="submit" value="Place order"/>
              </form></tr></table>
      