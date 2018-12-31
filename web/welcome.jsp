<%-- 
    Document   : welcome
    Created on : Dec 28, 2017, 12:59:19 PM
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
            String name=(String)session.getAttribute("orgname");
            out.println("<b> <font size='8' color='red'> Welcome:  "+name+"</font></b>");
                %>
                <script>
                    
  setTimeout(function() {
      document.location = "profile.jsp";
  }, 2000); // <-- this is the delay in milliseconds

                   </script>
    </body>
</html>
