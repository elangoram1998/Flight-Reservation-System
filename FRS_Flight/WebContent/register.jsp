<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <style>
  div.transbox {
  margin: 30px;
  border: 1px;
  opacity: 0.6;
  width:80%;
  height:80%;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}
.footer{
        background-color:white;
        width:100%;
        text-align:center;
        filter:alpha(opacity=50);
        opacity:0.5;
		position:absolute;
		bottom:0;
		}
#rounded_corner {
    border-radius: 18px;
    padding: 20px; 
    width: 200px;
    height: 15px;  
     
}
 .register_btn{
   	border-radius: 15px !important;
    border: 0 !important;
    width:100px;
   }
</style>
</head>
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" height="100%"">
<center>
<div class="transbox">
<table cellpadding="60" width="80%" align="center">
<thead><h3><font color=" #f2f2f2">Registration</font></h3></thead>
<tbody>
<form action="RegisterServlet" method="post">
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">First Name</font></b></h4></td>
<td><input type="text" id="rounded_corner" name="first name" placeholder="First Name"required/></td>
<td></td>
<td><h4><b><font color=" #f2f2f2">Last Name</font></b></h4></td>
<td><input type="text" id="rounded_corner" name="last name"  placeholder="Last Name"required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Gender</font></b></h4></td>
<td>
  <input type="radio" name="gender" value="male"checked> Male
  <input type="radio" name="gender" value="female"> Female
  <input type="radio" name="gender" value="other"> Other
</td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Age</font></b></h4></td>
<td><input type="number" name="age" placeholder="Age"id="rounded_corner"required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Mobile Number</font></b></h4></td>
<td><input type="text" name="mobile number" placeholder="Mobile Number" id="rounded_corner" maxlength="10"required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Password</font></b></h4></td>
<td><input type="password" name="password"placeholder="Password" id="rounded_corner"required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Confirm Password</font></b></h4></td>
<td><input type="password"placeholder="Confirm Password" id="rounded_corner"required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><button class="register_btn"><b>Submit</b></button></td>
</tr>
<span style="color:red;">${errMsg}</span>
</form>
</tbody>
</table>
</div>
</center>
<footer class="footer footer-fixed-bottom">
</br><b><i> Contact Us:www.infiniteflights.com</i></b></br>
<b><i> Call:1234567890</i></b>
</footer>

</body>
</html>