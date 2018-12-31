<%-- 
    Document   : 2
    Created on : Dec 30, 2017, 10:25:33 PM
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
        <%
            String o= (String)session.getAttribute("z");
            out.println("in 2"+o);
            %>
    </body>
</html>
