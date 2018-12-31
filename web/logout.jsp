<%-- 
    Document   : logout
    Created on : Dec 30, 2017, 5:37:41 PM
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
			session.invalidate();
			
			out.print("<b> <font size='8' color='red'>You are successfully logged out!<br>Login again to continue</font></b>");
            %>
            <script>
                    
  setTimeout(function() {
      document.location = "login.jsp";
  }, 2300); // <-- this is the delay in milliseconds

                   </script>
    </body>
</html>
