
<html>
<head>
<title>login page</title>
</head>
<body bgcolor="#eaffea">

    
    <%
  String captcha = (String) session.getAttribute("captcha");
  String code = (String) request.getParameter("code");
  
%>
    
    
    
    
<center><img src="logo1.png"></img></center>
<div class="box">
<h1><center>LOG IN</center></h1>
<hr width="75%"></hr>
<form action="login" method="post">
<font size="5" color="#3f729b" face="times new roman">
<div class="first">
<pre>  <font size="5" color="#3f729b" face="times new roman">Username:<center><input type="text" name="username"></input></center>
    Password:<center><input type="password" name="password"></input></center></font></pre>
</div>
Enter Captcha  <input type="text" name="code"> <img src="http://localhost:8080/databaseproj/CaptchaServlet"><font color="red">WRONG CAPTCHA</font>
<div class="s">
    <br>
<center><input type="submit" name="submit" value="LOG IN"></input></center>
</div>
</font>
</form>
<font color="red" size="5"><center><?php echo $error;?></center></font>
<div class="rule"><hr width="75%"></hr>
<center><font color="#3f729b" size="5px">Not registered? <a href="signup.html">Register now</a></center>
</div>
</div>
<br>
<center>For any query contact us at medipoldel@gmail.com</font></center>
</body>
<style>
.first{
	size:relative;
}
.first input{
width:90%;
height:40px;
padding:12px 20px;
border: 1px solid #3f729b;
border-radius:5px;
size:relative;
}
.s2{
text-align:right;
position:relative;
right:20px;
}
.rule{
margin-top:20px;
margin-bottom:20px;
}
.box {
    margin-top:25px;
    margin-bottom: 0px;
    margin-right:30%;
    margin-left: 30%;
	border: 1px solid #3f729b;
	box-shadow: 1px 0px 2px rgba(0,0,0,0.2);
	height:relative;
	border-radius:15px;
	background-color:white;
	position:relative;
}
.s input{
margin-top:20px;
padding:8px 15px;
text-align:center;
background-color:#3f729b;
   color:white;
   font-size:20px;
}
.s input:hover{
background-color:#3f829c;
}
</script>
</html>