<%-- 
    Document   : signupduplicate2
    Created on : Dec 31, 2017, 5:17:20 PM
    Author     : Dahiya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%  
 String orgname=request.getParameter("organame");
         String username=request.getParameter("orgaid");
         String password=request.getParameter("orgpass");
             String rpassword=request.getParameter("rpass");     
         String phone=request.getParameter("phone");
         String address=request.getParameter("address");
         String email=request.getParameter("email");
    
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
           
         if(!orgname.equals("-") && !username.equals("-") && !username.equals("-/") && !password.equals("-") && !rpassword.equals("-") && !phone.equals("-") && !email.equals("-") && !address.equals("-") ) 
                {       
                PreparedStatement pst=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
                pst.setString(1, orgname2);
            pst.setString(2,username2);
            pst.setString(3,password2);
            pst.setString(4,email2);
            pst.setString(5,phone2);
            pst.setString(6,address2); 
                pst.executeUpdate();
                
                 session.setAttribute("orgname", orgname);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("rpassword", rpassword);
            session.setAttribute("email", email);
            session.setAttribute("phone", phone);
            session.setAttribute("address", address);
                request.getRequestDispatcher("registered.jsp").forward(request, response);

                }
         %>
    </body>
</html>
