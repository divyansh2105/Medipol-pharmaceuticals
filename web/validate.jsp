<%-- 
    Document   : validate
    Created on : Dec 30, 2017, 6:25:46 PM
    Author     : Dahiya
--%>

<%@page import="java.util.regex.Matcher"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            try{
                String orgname=request.getParameter("organame");
         String username=request.getParameter("orgaid");
         String password=request.getParameter("orgpass");
             String rpassword=request.getParameter("rpass");     
         String phone=request.getParameter("phone");
         String address=request.getParameter("address");
         String email=request.getParameter("email");
         out.println(orgname);
            String query0="select * from signup";
            Class.forName("com.mysql.jdbc.Driver");  
  
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
                    
            PreparedStatement stmt1 = con.prepareStatement(query0);
    int flag=0;String username2="-",password2="-", orgname2="-", rpassword2="-",phone2="-",address2="-",email2="-";
     ResultSet rs=null;
       rs = stmt1.executeQuery(); 
       while (rs.next()) { 
           if(username.equals(rs.getString(2)))
           {
               flag=1;
           }
           if(username.length()<7)
           {
               flag=2;
           }
           }
       if(flag==0)
       {
            username2=username;
       }
       if(flag==2)
           username2="-/";
       orgname2=orgname;
        String reg= request.getParameter("regex");
        out.println(reg);
 Pattern pattern = Pattern.compile(reg);            
            Matcher matcher = pattern.matcher(password);//At least 8 chars

//Contains at least one digit
//
//Contains at least one lower alpha char and one upper alpha char
//
//Contains at least one char within a set of special chars (@#%$^ etc.)
//
//Does not contain space, tab, etc.
            boolean a=matcher.matches();
            out.println(a);
            if(a==true)
                password2=password;
            out.println(password2);
            
            if(rpassword.equals(password))
                rpassword2=rpassword;out.println(rpassword2);
            
            address2=address;
            
            //Pattern pattern2 = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", Pattern.CASE_INSENSITIVE);            
            //Matcher matcher2 = pattern.matcher(email);
            //boolean b=matcher2.matches();
           
            //if(b==true)
                email2=email;
            //out.println(b);
            if(phone.length()>=8)
                phone2=phone;
                     out.println("<br>"+orgname2+username2+password2+rpassword2+email2+phone2+address2+username.length());

           
                
            session.setAttribute("or1", orgname2);
            session.setAttribute("us", username2);
            session.setAttribute("p", password2);
            session.setAttribute("r", rpassword2);
            session.setAttribute("e", email2);
            session.setAttribute("ph", phone2);
            session.setAttribute("a", address2);
            out.println(username2+(String)session.getAttribute("us"));
//            out.println("<form action='signupdulpicate'>");
//            out.println("<input type='hidden' value="+orgname2+"name='orgname'");
//            out.println("<input type='hidden' value="+password2+"name='password'");
//             out.println("<input type='hidden' value="+username2+"name='username'");
//             out.println("<input type='hidden' value="+rpassword2+"name='rpassword'");
//             out.println("<input type='hidden' value="+phone2+"name='phone'");
//            out.println("<input type='hidden' value="+email2+"name='email'");
//            out.println("<input type='hidden' value="+address2+"name='address'");
//            out.println("</form>");

            request.getRequestDispatcher("signupduplicate.jsp").forward(request, response);

           out.println("in valide");
            
       }
       catch(Exception e)
               {
               out.println(e);
               }
                
            
            
            %>
    </body>
</html>
