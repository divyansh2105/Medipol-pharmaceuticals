<%-- 
    Document   : 1
    Created on : Dec 30, 2017, 10:25:27 PM
    Author     : Dahiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String orgname2="divcompany";
       // session.setAttribute("z", orgname2);
            out.println("<form action='signup3' method='post'>");
            out.println("<input type='hidden' value="+orgname2+"name='orgname'");
            
            out.println("</form>");
            out.println("in 1");

            request.getRequestDispatcher("2.jsp").forward(request, response);

            %>
    </body>
</html>
