<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
  <script>
    history.pushState(null, null, null);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, null);
    });
</script>
  <style>
  div.transbox {
  margin: 30px;
  opacity: 0.6;
  width:40%;
  filter: alpha(opacity=60);
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
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" height="100%">
<form action="LoginServlet" method="post">
<center>
<div class="container">
<div class="transbox">
<table cellpadding="60" width="80%" align="center">
<thead><h3><font color=" #f2f2f2">Welcome to Infinite Airlines</font></h3></thead>
<tbody>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">User Id</font></b></h4></td>
<td><input type="text" id="rounded_corner" name="username" placeholder="Mobile number" pattern="[1-9]{1}[0-9]{9}" title="Please enter valid mobile number" maxlength="10" required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Password</font></b></h4></td>
<td><input type="password" name="password" id="rounded_corner"placeholder="Password" required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><button class="register_btn"><b>Login</b></button></td> 
<span style="color:red;">${errMsg}</span>
</form>
<form action="register.jsp">
<td><button class="register_btn"><b>Register</b></button></td></tr> 
<tr><td></br></td></tr>
<tr><td></br></td></tr>
</tbody>
</table>
</div> 
</div>
</center>
</form>
<footer class="footer footer-fixed-bottom">
</br><b><i> Contact Us:www.infiniteflights.com</i></b></br>
<b><i> Call:1234567890</i></b>
</footer>
</body>
</html>