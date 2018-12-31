<%-- 
    Document   : updated
    Created on : Dec 30, 2017, 1:37:16 AM
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
            
            out.println("<b> <font size='8' color='red'> Updated Successfully!!</font></b>");
                %>
                <script>
                    
  setTimeout(function() {
      document.location = "update.jsp";
  }, 1200); // <-- this is the delay in milliseconds

                   </script>
    </body>
</html>
