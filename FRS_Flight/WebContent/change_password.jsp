<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
<title>Change Password</title>
<script type="text/javascript">
$(document).ready(function(){
	$("input[type=password]").keyup(function(){
	    var ucase = new RegExp("[A-Z]+");
		var lcase = new RegExp("[a-z]+");
		var num = new RegExp("[0-9]+");
		
		if($("#password1").val().length >= 8){
			$("#8char").removeClass("glyphicon-remove");
			$("#8char").addClass("glyphicon-ok");
			$("#8char").css("color","#00A41E");
		}else{
			$("#8char").removeClass("glyphicon-ok");
			$("#8char").addClass("glyphicon-remove");
			$("#8char").css("color","#FF0004");
		}
		
		if(ucase.test($("#password1").val())){
			$("#ucase").removeClass("glyphicon-remove");
			$("#ucase").addClass("glyphicon-ok");
			$("#ucase").css("color","#00A41E");
		}else{
			$("#ucase").removeClass("glyphicon-ok");
			$("#ucase").addClass("glyphicon-remove");
			$("#ucase").css("color","#FF0004");
		}
		
		if(lcase.test($("#password1").val())){
			$("#lcase").removeClass("glyphicon-remove");
			$("#lcase").addClass("glyphicon-ok");
			$("#lcase").css("color","#00A41E");
		}else{
			$("#lcase").removeClass("glyphicon-ok");
			$("#lcase").addClass("glyphicon-remove");
			$("#lcase").css("color","#FF0004");
		}
		
		if(num.test($("#password1").val())){
			$("#num").removeClass("glyphicon-remove");
			$("#num").addClass("glyphicon-ok");
			$("#num").css("color","#00A41E");
		}else{
			$("#num").removeClass("glyphicon-ok");
			$("#num").addClass("glyphicon-remove");
			$("#num").css("color","#FF0004");
		}
		
		if($("#password1").val() == $("#password2").val()){
			$("#pwmatch").removeClass("glyphicon-remove");
			$("#pwmatch").addClass("glyphicon-ok");
			$("#pwmatch").css("color","#00A41E");
		}else{
			$("#pwmatch").removeClass("glyphicon-ok");
			$("#pwmatch").addClass("glyphicon-remove");
			$("#pwmatch").css("color","#FF0004");
		};
	});
});
	 

 
  
</script>


</head>
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" heoght="100%"/>  

<style>
.navbar {
  width: 100%;
  background-color:black;
  }
  .dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropbtn {
  background-color: black;
  color: white;
  padding: 16px;
  right: 150px;  
  width: 200px;
  height: 50px;
  font-size: 16px;
  border: none;
}
.dropdown {
  position: relative;
  display: inline-block;
  float:right;
}
  footer{
  background-color:white;
  width:100%;
  position:absolute;
  opacity:0.5;
  filter:alpha(opacity=50);
  bottom:0;
  text-align:center;
  }
   div.transbox {
  margin: 30px;
  border: 1px;
  opacity: 0.6;
  width:80%;
  height:80%;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}

.rounded_corner {
    border-radius: 18px;
    padding: 20px; 
    width: 300px;
    height: 15px;  
    }
 .register_btn{
   	border-radius: 15px !important;
    border: 0 !important;
    width:150px;
    background-color:#33ACFF;
   }
 
  .dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #94AFE6;}

  </style>
<body >

<div class="navbar">
<img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATXmmdjs0cRm0m3xASMCI_5-ea1cHkI_sLDFU2eWITSXAypbwiw" width="7.5%" height="7.5%">
<div class="dropdown">
<header>
    <button class="dropbtn"><i class="fa fa-fw fa-user"></i>Profile
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      
       <a href="index.jsp">Logout</a>
    </div>
    </div>
    </header>
    </div>
<%String username=request.getParameter("username"); %>
<div class="transbox">
<div class="container">
<div class="row">
<div class="col-sm-12"> 
<center> <h1> Change Password </h1> </center><br>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">

<form action="ChangePasswordServlet" method="post" id="passwordForm">

<center><input type="password" class="rounded_corner" name="password1" id="password1" placeholder="New Password" autocomplete="off"></center><br>
<div class="row">
<div class="col-sm-6"> 
<center><span id="8char" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span><font color="#f2f2f2"> 8 Characters Long</font></center><br>
<center><span id="ucase" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span><font color="#f2f2f2"> One Uppercase Letter</font></center>
</div>
<div class="col-sm-6">
<center><span id="lcase" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span><font color="#f2f2f2">  One Lowercase Letter</font></center><br>
<center><span id="num" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span><font color="#f2f2f2">One Number</font></center>


</div>
</div>
<br>
<center><input type="password" class="rounded_corner" name="password2" id="password2" placeholder="Re-enter Password" autocomplete="off"></center> <br>
<div class="row">
<div class="col-sm-12">
<center><span id="pwmatch" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> <font color="#f2f2f2"> Passwords Match</font></center>
</div>
</div>
<br>
<input type="hidden" name="username" value="<%=username%>">
<center><input type="submit" class="register_btn" data-loading-text="Changing Password..." value="Change Password"></center>
</form>
</div>
</div>
</div>
</div>
<footer class="footer">
</br><b><i> Contact Us:www.infiniteflights.com</i></b></br>
<b><i> Call:1234567890</i></b>
</div>
</footer>
</body>
</html>