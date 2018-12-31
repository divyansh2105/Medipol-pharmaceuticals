<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Client</title>
  <meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="height:1500px">
<link href='http://fonts.googleapis.com/css?family=Ubuntu:bold' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="style.css" type="text/css"/>


<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!--<div class="navbar-header">
      <a class="navbar-brand" class="dropdown" href="#"><span class="glyphicon glyphicon-list fa-5x" style="font-size:1.6em;" style="color:#512da8"></span> </a>
    </div>--!>
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-list fa-5x" style="font-size:1.6em;" style="color:#512da8"></span> <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li class="dropdown-submenu"><a class="dropdown-toggle" href="#">About Us<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<li><a href="prac2.html#who">Who Are We</a></li>
	<li><a href="prac2.html#what">What Do We Do</a></li>
          <li><a href="prac2.html#our">Our Stories</a></li>
	</ul></li>
          <li><a href="Achievement.html">Achievements</a></li>
	<li><a href="bmi_new.php">Check BMI</a></li>
        </ul>
      </li>
<li><a href="prac2.html"><span class="glyphicon glyphicon-home fa-5x" style="font-size:2em;" style="color:#512da8"></span></a></li>
      <li class="active"><a href="Client_new.php">Clients</a></li>
      <li><a href="Career_new.html">Careers</a></li>
	<li><a href="Subscribe_new.php">Subscribe</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
	<li><a href="contact.html">Contact Us</a></li>
      <li><a href="Client_new.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginpage.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
</div>

<script>
 $(document).ready(function(){
  $(window).scroll(function() { 
    if ($(document).scrollTop() > 550) { 
      $('.navbar').addClass('shrink'); 
    } else { 
      $('.navbar').removeClass('shrink'); 
    } 
  }); 
 });
</script>

<style>

body{
background-color: #F6F6EA;
}

.dropdown-submenu {
    position: relative;
}

.dropdown-submenu>.dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -6px;
    margin-left: -1px;
    -webkit-border-radius: 0 6px 6px 6px;
    -moz-border-radius: 0 6px 6px;
    border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}

.dropdown-submenu>a:after {
    display: block;
    content: " ";
    float: right;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    border-left-color: #ccc;
    margin-top: 5px;
    margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}

.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
    -webkit-border-radius: 6px 0 6px 6px;
    -moz-border-radius: 6px 0 6px 6px;
    border-radius: 6px 0 6px 6px;
}


.navbar.shrink{ 
   background: #0F9A19 
}

.navbar {
   background-color: blue;
   
   border-color: transparent;
}


.navbar-default {
    background-color: grey;

opacity:0.7;
    border-color: grey;
}
.navbar-default .navbar-nav > li > a {
    color: white;
}
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
    background-color: purple;opacity:0.65;
    color: white;
}

</style>
<style>
.logo{
width:200px;
 margin-left: 57px;

margin-top:-70px;
}
</style>

<style>
.container-1{
  width: 430px;
  vertical-align: middle;
  white-space: nowrap;
  position: relative;
	float:right;
margin-top:-90px;
margin-left:750px;
}

.inline { 
    display: inline-block; 
     
    margin:10px;
    }
</style>



<br><br><br><br>
<div>
<div class="inline">
<div><br><br><br><img src="logo.png" class="logo"/></div></div>
<div class="inline">
<div class="box">
  <div class="container-1">
      <script>
  (function() {
    var cx = '016736166449918566133:9du79wrgcrq';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:search></gcse:search></div></div></div></div>
</div></div>
</div>
<style>
.containerBox {
    position: relative;
    display: inline-block;
	float:left;
}
.text-box {
     color: #f2f2f2;
  font-size: 40px;
  padding: 8px 12px;
  position: absolute;
  bottom: 98px;
  width: 100%;
  text-align: center;
font-family: 'Ubuntu', Helvetica, Arial, sans-serif;
}

img.img-responsive {
  display: block;
  max-width: 100%;
  height: auto;
}
</style>
</style>
<div class="containerBox">
   
        <div class="text-box">Clients<br><font size="3"></font></b></font>
    </div>
    <img class="img-responsive" src="wallhaven-12018 - Copy.jpg"/>
</div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<style>
.responsive {
  display: block;
  max-width: 100%;
  max-height: 50%;
margin-top:150px;
}
.responsive2 {
  display: block;
  max-width: 100%;
  max-height: 50%;
margin-top:150px;
margin-left:50px;
}
</style>
<br><br><br>
<table>
<tr>
<th>
<img class="responsive" src="stat2.png"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="green">revenue allocation over the past 12 years(in %)</font>
</th>
<style>
.p1{
 color: purple;
  font-size: 40px;
   margin-top:100px;
margin-left:170px;
    text-align: center;
font-family: 'Ubuntu', Helvetica, Arial, sans-serif;
max-width:650px;
   
    border-top-right-radius: 15px;
box-shadow: 5px 5px 10px #888888;
    border: 0px solid green;
    padding: 10px;
background-color:white;
}
.p2{
 color: green;
  font-size: 20px;
   
    text-align: center;
font-family: 'Vollkorn', Georgia, Times, serif;
}
.cu1 {
  
     margin: auto;
   background-color:white;
max-width:650px;
    border: 0px solid green;
    padding: 10px;
   max-height: 230px;
box-shadow: 5px 5px 10px #888888;
margin-left:170px;
margin-top:70px;
}
.cont1 {
 margin: 0 auto;
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  max-width: 750px; /* change the limit here */
color:#464646;
  font-size: 20px;
   
font-family: 'Vollkorn', Georgia, Times, serif;
}
.cu2 {
  
  margin: auto;
   background-color:white;
max-width:650px;
    border: 0px solid green;
    padding: 10px;
   max-height: 900px;
box-shadow: 5px 5px 10px #888888;
margin-left:170px;
margin-top:0px;
}
.cont2 {
   margin: 0 auto;
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  max-width: 750px; /* change the limit here */
color: black;
  font-size: 20px;
   
font-family: 'Vollkorn', Georgia, Times, serif;
}

</style>
<th>
<br><br><div class="cu1">
<div class="cont1">
<br><br><br><br><br><br><br>Medipol welcomes its clients with a promise of providing the best service possible. Our clients are spread all around the globe with some of our institution clients being: ANDHRA PRADESH MEDICAL SERVICES, TELANGANA MEDICAL SERVICES, RAJASTHAN MEDICAL SERVICES, BIHAR MEDICAL SERVICES. <br>To avail the benfit of our services, fill the following the form below and register for our services:
</th></tr>
<tr>
<td>
<img class="responsive2" src="stat1.png"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="green">sales over the past 12 years(in crores)</font>
</td>
<td>
<br><br><div class="p1">Client Registration Form</div>
<div class="cu2">
<div class="cont2">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><style>
.error {color: #FF0000;}
</style>
<?php
$nameerr = $emailerr = $iderr = $phoneerr = $passerr = $rpasserr = $adderr = $typeerr = "";
$name = $email = $phone = $id = $pass = $rpass =$add = "";
$db=mysqli_connect("localhost","root","test");
$con=mysqli_select_db($db,"pharma");
if(isset($_POST['submit']))
{
	$name=$_POST['organame'];
	$email=$_POST['email'];
	$phone=$_POST['phone'];
	$id=$_POST['orgaid'];
	$pass=$_POST['orgpass'];
	$rpass=$_POST['rpass'];
	$add=$_POST['address'];
	if (!preg_match("/^[a-zA-Z ]*$/",$name))
	{
		$nameerr = "Only letters and white space allowed";
		$name="";
	}
	if (!filter_var($email, FILTER_VALIDATE_EMAIL))
	{
		$emailerr = "Invalid email format";
		$email="";
	}
	if(preg_match("/^.*(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).*$/", $_POST['orgpass']) === 0)
    {
			$passerr ="Password must be at least 8 characters and must contain at least one lower case letter, one upper case letter and one digit";
			$pass="";
    }
	if($pass!=$rpass)
	{
		$rpasserr="Re-entered  password does not match";
		$rpass="";
	}
	if (!is_numeric($phone) || strlen($phone)!=10)
	{
		$phoneerr="not valid";
		$phone="";
	}
	if (empty($_POST['organame']))
    $nameerr = "required";
	if (empty($_POST['email']))
    $emailerr = "required";
	if(empty($_POST['phone']))
		$phoneerr="required";
	if(empty($_POST['orgaid']))
		$iderr="required";
	if(empty($_POST['orgpass']))
		$passerr="required";
	if(empty($_POST['rpass']))
		$rpasserr="required";
	if(empty($_POST['address']))
		$adderr="required";
	if(empty($_POST['type']))
		$typeerr="required";
	$s=mysqli_query($db,"select orgid from register");
	while($n=mysqli_fetch_array($s))
	{
		if($id==$n['orgid'])
		{
			$iderr="already exists";
			break;
		}
	}
	if(empty($nameerr) && empty($emailerr) &&empty($iderr) && empty($phoneerr) && empty($passerr) && empty($rpasserr) && empty($adderr) && empty($typeerr))
	{
		$qu="INSERT INTO register (orgid,orgname,password,category,address,phoneno,emailid) VALUES('$_POST[orgaid]','$_POST[organame]','$_POST[orgpass]','$_POST[type]','$_POST[address]','$_POST[phone]','$_POST[email]')";
	    $a=mysqli_query($db,$qu);
		mysqli_error($db);
	}
		//echo "yes";
		//$qu="INSERT INTO register (orgid,orgname,password,category,address,phoneno,emailid) VALUES('$_POST[orgaid]','$_POST[organame]','$_POST[orgpass]','$_POST[type]','$_POST[address1]','$_POST[phone]','$_POST[email]')";
	//$a=mysqli_query($db,$qu);
    //header("Location:signup.php");
}
?>

<style>
.radio {
    display: block;
    position: relative;
    padding-left: 280px;
margin-top:-32px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 16px;
    
    user-select: none;
}

/* Hide the browser's default radio button */
.radio input {
    position: absolute;
    opacity: 0;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 20px;
    width: 20px;
    background-color: #eee;
    border-radius: 50%;
margin-left:250px;
margin-top:0px;
}

/* On mouse-over, add a grey background color */
.radio:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.radio input:checked ~ .checkmark {
box-shadow: 0 0 0 2px purple;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the indicator (dot/circle) when checked */
.radio input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
.radio .checkmark:after {
 	top: 4px;
	left: 4px;
	width: 11px;
	height: 11px;
	border-radius: 50%;
	background: purple;
}

.textbox {
   
    border-radius: 3px;
    
    box-shadow: 0 1px 0 #FFF, 0 -2px 5px rgba(0, 0, 0, 0.08) inset;
    
    transition: all 0.5s ease;
    background: #F6F6F6;
    border: 1px solid #C8C8C8;
    color: green;
    font: 16px Helvetica, Arial, sans-serif;
    margin: 0 0 10px;
    padding: 15px 10px 15px 40px;
    width: 200px;
height:25px;

border-top: solid 1px #8e8e8e; 
    border-right: solid 1px #d1d1d1; 
    border-left: solid 1px #d1d1d1; 
    border-bottom: solid 1px #e4e4e4; 
    
}
 .textbox:focus {
   
    box-shadow: 0 0 2px #ED1C24 inset;
    background-color: white;
    border: 1.5px solid purple;
    outline: none;
}
.textbox:hover{
width:270px;
}
.button {
  display: inline-block;
  padding: 6px 8px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 6px;
  
}

.button:hover {background-color: #006600;
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);

}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

</style>
<%  
    String orgname=(String)session.getAttribute("or1");
         String username=(String)session.getAttribute("us");
         String password=(String)session.getAttribute("p");
             String rpassword=(String)session.getAttribute("r");
         String phone=(String)session.getAttribute("ph");
         String address=(String)session.getAttribute("a");
         String email=(String)session.getAttribute("e");
    
         
          Class.forName("com.mysql.jdbc.Driver");  
  
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?zeroDateTimeBehavior=convertToNull","root","");
                    
         if(!orgname.equals("-") && !username.equals("-") && !username.equals("-/") && !password.equals("-") && !rpassword.equals("-") && !phone.equals("-") && !email.equals("-") && !address.equals("-") ) 
                {       
                PreparedStatement pst=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
                pst.setString(1, orgname);
            pst.setString(2,username);
            pst.setString(3,password);
            pst.setString(4,email);
            pst.setString(5,phone);
            pst.setString(6,address); 
                pst.executeUpdate();
                
                 session.setAttribute("orgname", orgname);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("rpassword", rpassword);
            session.setAttribute("email", email);
            session.setAttribute("phone", phone);
            session.setAttribute("address", address);
            }
    
//       String orgname=request.getParameter("orgname");
//         String username=request.getParameter("username");
//         String password=request.getParameter("password");
//             String rpassword=request.getParameter("rpassword");     
//         String phone=request.getParameter("phone");
//         String address=request.getParameter("address");
//         String email=request.getParameter("email");
        
         out.println(orgname+username+password+rpassword+email+phone+address);
         String action=null;
           if(!orgname.equals("-") && !username.equals("-") && !password.equals("-") && !rpassword.equals("-") && !phone.equals("-") && !email.equals("-") && !address.equals("-")) 
           {
              action ="registered.jsp";
           }
           else
           {
               action="validate.jsp";
           }
          // out.println(action);
         %>
<p><span class="error">* required field.</span></p>
<form method="post" action="<%out.println(action);%>">
  Organization Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<input class="textbox" type="text" value="<%out.println(orgname);%>" name="organame" required>
  <span class="error">* <?php echo $nameerr;?></span><% {out.println("<font color='green'>Organization name passed</font>"); }        %>
  <br><br>
  Enter Username &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="textbox" type="text" value="<%out.println(username);%>" name="orgaid" required>
<span class="error">* <?php echo $iderr;?></span><% if(username.equals("-")){out.println("<font color='red'>Username already exists </font>");} else if(username.equals("-/")){out.println("<font color='red'>Username is less than 7 characters</font>");}  else{out.println("<font color='green'>Username passed</font>"); }        %>
<br><br>
  Enter Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="textbox" type="password" value="<%out.println(password);%>" name="orgpass" required>
  <span class="error">* <?php echo $passerr;?></span><% if(password.equals("-")){out.println("<font color='red'>Password not legal(atleast 8 characters, atleast 1 digit, atleast 1 lowe and 1 upper alpha character, contains atleast 1 of(@#%$^ etc.),no space or tab)</font>");}  else{out.println("<font color='green'>Password passed</font>"); }        %>
  <br><br>
 Re-enter Password  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input class="textbox" class="textbox" value="<%out.println(rpassword);%>" type="password" name="rpass" required>
<span class="error">* <?php echo $rpasserr;?></span><% if(rpassword.equals("-")){out.println("<font color='red'>Should be same as password </font>");}  else{if(!password.equals("-"))out.println("<font color='green'> Passed</font>");}       %>
<br><br>E-mail id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="textbox" type="text" value="<%out.println(email);%>" name="email" required>
  <span class="error">* <?php echo $emailerr;?></span> <% if(email.equals("-")){out.println("<font color='red'>Invalid email id</font>");}  else{out.println("<font color='green'>Email-id passed</font>"); }        %> 
<br><br>
  Enter Phone No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="textbox" type="text" value="<%out.println(phone);%>" name="phone" required>
  <span class="error">* <?php echo $phoneerr;?></span><% if(phone.equals("-")){out.println("<font color='red'>Invalid phone no.</font>");}  else{out.println("<font color='green'>Phone no. passed</font>"); }        %>
    <br><br>
  Enter Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="textbox" type="text" value="<%out.println(address);%>" name="address" required>
  <span class="error">* <?php echo $adderr;?></span><% {out.println("<font color='green'>Address passed</font>"); }        %>  
  <br><br>
    <input type="hidden" name="regex" value="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$"/>

  <br>Enter the type of client &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label class="radio">Institution<input type="radio" name="type" value="Institution"><span class="checkmark"></span></label>
<label class="radio">Distributor<input type="radio" name="type" value="Distributor"><span class="checkmark"></span></label>
<label class="radio">Private pharmacist<span class="error"> <?php echo $typeerr;?></span><input type="radio" name="type" value="Private Pharmacist"><span class="checkmark"></span></label>  
<br><br><input class="button" type="submit" name="submit" value="Submit"> 
<span id="abc"></span> 
</form>
</div></div>


</td>
</table>



<style>
.e{background-color:#0F9A19;
	float:center;
	color: white;
font-size: 18px;

}


.fa {
  padding: 5px;
  font-size: 23px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 70%;
}

.fa:hover {
    opacity: 0.7;
}


.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-instagram {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

</style>
<?php 
if(isset($_POST['submit']) && empty($nameerr) && empty($emailerr) &&empty($iderr) && empty($phoneerr) && empty($passerr) && empty($rpasserr) && empty($adderr) && empty($typeerr))
{ ?>

	


<style>
.cu4 {
  margin-top:40px;
margin-left:400px;
   background-color:white;
width:550px;
    border: 0px solid green;
    padding: 10px;
   max-height: 400px;
border-top-right-radius: 15px;
box-shadow: 5px 5px 10px #888888;
}
</style>
<br><br><br>
<div class="e">
&nbsp&nbsp<a href="terms_new.html"><font color="white">Terms Of Use</font></a>&nbsp|&nbsp;<a href="privacy_new.html"><font color="white">Privacy Policy</font></a>
<div style="margin: 0 auto; width: 200px;">
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a></div>
<br><font size="3">Copyright 1995-2017 Medipol Pharmaceutical Company Limited. All rights reserved.</font>
</div>
</div>









