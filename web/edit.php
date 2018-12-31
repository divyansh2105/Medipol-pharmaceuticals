<?php 
session_start();
?>
<?php
$m=$_SESSION['loginuser'];
//echo $m;
$nameerr = $emailerr = $phoneerr = $adderr="";
$typeerr="";
$add=$phone=$email=$name=$type="";
$db=mysqli_connect("localhost","root","test");
$con=mysqli_select_db($db,"pharma");
$c=mysqli_query($db,"select orgname,emailid,phoneno,address from register where orgid='$m'");
$result=mysqli_fetch_array($c);
if(isset($_POST['submit']))
{
	$name=$_POST['organame'];
	$email=$_POST['email'];
	$phone=$_POST['phone'];
	$add=$_POST['address'];
	if (!preg_match("/^[a-zA-Z ]*$/",$name))
		$nameerr = "Only letters and white space allowed"; 
	if (!filter_var($email, FILTER_VALIDATE_EMAIL))
		$emailerr = "Invalid email format";
	if(isset($_POST['type1']))
		$type=$_POST['type1'];
	if (!is_numeric($phone) || strlen($phone)!=10)
	{
		$phoneerr="not valid";
	}
	if(empty($_POST['type1']))
		$typeerr="required";
	if (empty($_POST['organame']))
    $nameerr = "required";
	if (empty($_POST['email']))
    $emailerr = "required";
	if(empty($_POST['phone']))
		$phoneerr="required";
	if(empty($_POST['address']))
		$adderr="required"; 
}
?>
<html>
<body bgcolor="#EAFFEA">
<div class="box">
Enter your details:<br>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
<table border="0" style="font-size:22px;">
<tr>
<td>Organization Name</td><td><input class="textbox" type="text" name="organame" value="<?php if(!isset($_POST['submit']))echo $result['orgname']; else echo $name; ?>"></td>
<td><span class="error">*<?php echo $nameerr;?></span></tr>
<tr>
<td>E-mail id</td><td><input class="textbox" type="text" name="email" value="<?php if(!isset($_POST['submit']))echo $result['emailid']; else echo $email; ?>"></td>
  <td width="300px"><span class="error">*<?php echo $emailerr;?></span></td></tr>
  <tr>
<td>Enter Phone No.</td><td><input class="textbox" type="text" name="phone" value="<?php if(!isset($_POST['submit']))echo $result['phoneno']; else echo $phone; ?>"></td>
  <td><span class="error">*<?php echo $phoneerr;?></span></td></tr>  
<tr>
<td>Enter Address</td><td><input class="textbox" type="text" name="address" value="<?php if(!isset($_POST['submit']))echo $result['address']; else echo $add; ?>"></td>
  <td><span class="error">*<?php echo $adderr;?></span></td></tr>
  </table>
  Enter the Type of client<br><br>
 <label class="radio">Institution<input type="radio" name="type1" value="Institution"/><span class="checkmark"></span></label><br>
<label class="radio">Distributor<input type="radio" name="type1" value="Distributor" /><span class="checkmark"></span></label><br>
<label class="radio">Private pharmacist<span class="error">*<?php echo $typeerr;?></span><input type="radio" name="type1" value="Private Pharmacist" /><span class="checkmark"></span></label>
<input class="button" type="submit" name="submit" value="Submit">  
</form>
</div>
<?php
if(isset($_POST['submit']) && empty($nameerr) && empty($adderr) && empty($phoneerr) && empty($emailerr) && empty($typeerr))
{
	//echo "ryu";
	mysqli_query($db,"UPDATE register SET orgname='$name' where orgid='$m'");
	mysqli_query($db,"UPDATE register SET phoneno='$phone' where orgid='$m'");
	mysqli_query($db,"UPDATE register SET emailid='$email' where orgid='$m'");
	mysqli_query($db,"UPDATE register SET address='$add' where orgid='$m'");
	mysqli_query($db,"UPDATE register SET category='$type' where orgid='$m'");
	?><font size="5px">You have successfully updated your details </font><?php
	mysqli_error($db);
}
?>
</body>
</html>
<style>
.error {color: #FF0000;}
.radio {
    display: block;
    position: relative;
    padding-left: 280px;
margin-top:-32px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    user-select: none;
}
.radio input {
    position: absolute;
    opacity: 0;
}
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
.radio:hover input ~ .checkmark {
    background-color: #ccc;
}
.radio input:checked ~ .checkmark {
box-shadow: 0 0 0 2px purple;
}
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}
.radio input:checked ~ .checkmark:after {
    display: block;
}
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
.box
{
	border:0px solid red;
	margin-left:80px;
	width:relative;
	font-size:22px;
	
}
</style>