<%-- 
    Document   : registered
    Created on : Dec 30, 2017, 11:52:31 PM
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
            
            out.println("<b> <font size='8' color='red'>Registered Successfully!!<br>Login to continue</font></b>");
                %>
                <script>
                    
  setTimeout(function() {
      document.location = "prac2.html";
  }, 2000); // <-- this is the delay in milliseconds

                   </script>
    </body>
</html>
