<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.wipro.FRS.dao.*" %>
    <%@ page import="com.wipro.FRS.bean.*" %>
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
  
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Passenger Details</title>

<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<link type="text/css" rel="stylesheet" href="css/style.css" />
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		  <style>
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
#rounder_corner{
	border-radius:18px;
	padding:20px;
	width:150px;
	height:15px;
	
}

.dropdown {
  position: relative;
  display: inline-block;
  float:right;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.navbar {
  width: 100%;
  background-color:black;
  }
  div.b{
   background-color: #1455D8;
  color: white;
  padding: 16px;
  right: 150px;  
  width: 200px;
  height: 50px;
  font-size: 16px;
  border: none;
  size:100px;
  }
  div.c{
  text-align:center;
  padding:10px;
  color:black;
  }
  .container {
  padding: 50px;
  background-color: #D3CDDF;
  float:center;
  color:black;
  width:100%;
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
  .dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #94AFE6;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}

.w3-bar w3-black{
    column-gap: 60px;
}
.register_btn{
   	border-radius: 15px !important;
    border: 0 !important;
    width:100px;
   }
   div.transbox {
  margin: 30px;
  opacity: 0.6;
  width:100%;
  filter: alpha(opacity=60);
}
#rounded_corner {
    border-radius: 18px;
    padding: 20px; 
    width: 200px;
    height: 15px;  
     
}
</style>
</head>
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" heoght="100%">
<%String username=request.getParameter("username"); %>
<%String flight_id=request.getParameter("flight_id"); %>
<%String date=request.getParameter("date"); %>
<%int adult=Integer.parseInt(request.getParameter("adult")); %>
<%int child=Integer.parseInt(request.getParameter("child"));
%>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid"> 
    <div class="navbar-header">
	<img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATXmmdjs0cRm0m3xASMCI_5-ea1cHkI_sLDFU2eWITSXAypbwiw" width="30%" height="30%">
    </div>
    <div class="dropdown">
<header>
    <button class="dropbtn"><i class="fa fa-fw fa-user"></i>Profile
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <form action="MyBooking.jsp">
    <input type="hidden" name="username" value="<%=username %>">
     <input type="submit" value="My Booking">
    </form>
    <form action="change_password.jsp">
    <input type="hidden" name="username" value="<%=username %>">
    <input type="submit" value="Change Password">
    </form>
    <form action="index.jsp">
    <input type="submit" value="Logout">
    </form>
    </div>
    </div>
    </header>
</div>
    </div>
</nav> 
<div class="transbox">
<form action="StoreDataServlet" method="post">
<div class="w3-bar w3-black">
  <div class="w3-bar-item w3-button">ADULTS</a>
  </div>
  </div>
  <br><br>
  <%String str="adult gender";
  int temp=1;%>
<%for(int i=0;i<adult;i++)
	{%>
	<table cellpadding="60" width="80%" >
	<tr>
    <td>Name<input id="rounded_corner" type="text" id="rounded_corner" name="adult username" placeholder="First Name"required/></td><tc> </tc>
    <td>Age<input id="rounded_corner" type="number" name="adult age" placeholder="Age"id="rounded_corner" min="18" max="95"/></td>
    <td>Gender<lable>
  <input type="radio" name="<%=str+temp %>" value="male"required checked> Male
  <input type="radio" name="<%=str+temp %>" value="female"> Female
  <input type="radio" name="<%=str+temp %>" value="other"> Other</lable>
</td>
  </tr>
  <tr><td><br><br></td></tr>
</table>
	<%temp++;
	} %>
<br>

<div class="w3-bar w3-black">
  <div class="w3-bar-item w3-button">CHILD</a>
  </div>
  </div>
  <br><br>
  <%String str1="child gender";
  int temp1=1;%>
	<%for(int i=0;i<child;i++)
		{%>
		<table cellpadding="60" width="80%" >
		<tr>
    <td>Name<input id="rounded_corner" type="text" id="rounded_corner" name="child username" placeholder="First Name"required/></td>
    <td>Age<input id="rounded_corner" type="number" name="child age" placeholder="Age"id="rounded_corner" min="2" max="17"/></td>
    <td>Gender
<td>
  <input type="radio" name="<%=str1+temp1 %>" value="male"required checked> Male
  <input type="radio" name="<%=str1+temp1 %>" value="female"> Female
  <input type="radio" name="<%=str1+temp1 %>" value="other"> Other
</td></td>
  </tr>
  </tr><tr><td><br><br></td></tr>
		</table>
		<%temp1++;} %>
		<br>
		<input type="hidden" name="username" value="<%= username%>">
		<input type="hidden" name="flight_id" value="<%= flight_id%>">
		<input type="hidden" name="date" value="<%= date%>">
		<input type="hidden" name="adult" value="<%= adult%>">
		<input type="hidden" name="child" value="<%= child%>">
		<center><button class="register_btn"><b>Submit</b></button></center>
		</form></div>
  <footer class="footer footer-fixed-bottom">
</br><b><i> Contact Us:www.infiniteflights.com</i></b></br>
<b><i> Call:1234567890</i></b>
</footer>

</body>
</html>