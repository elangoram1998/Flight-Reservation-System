<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.wipro.FRS.dao.*" %>
<%@page import="com.wipro.FRS.bean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Flight Details</title>
<meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
  <link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css"> 
    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
 @media screen and (min-width: 1000px) {
        .modal-dialog {
          width: 1300px;
          height:1000px; 
        }
        .modal-sm {
          width: 1000px;
          height:1000px; 
        }
    }
    @media screen and (min-width: 1000px) {
        .modal-lg {
          width: 1000px;
          
          height:1000px;
        }
    }
   }

* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

.row {margin: 0 -5px;}


.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

.column {
  width: 100%;
  padding-top: 30px;
  padding-right: 80px;
  padding-bottom: 50px;
  padding-left: 80px;
}
.row {margin: 0 -5px;}

@media screen and (max-width: 600px) {
  .column {
    width: 80%;
    display: block;
    margin-bottom: 20px;
  }
}

div.transbox {
  margin: 30px;
  border: 1px;
  opacity: 0.6;
  width:80%;
  height:80%;
  filter: alpha(opacity=60);
}

#rounded_corner {
    border-radius: 18px;
    padding: 20px; 
    width: 150px;
    height: 15px; 
    }
.selectWrapper{
  border-radius:36px;
  display:inline-block;
  overflow:hidden;
  background:#cccccc;
  border:1px solid #cccccc;
}
.selectBox{
  width:140px;
  height:40px;
  border:0px;
  outline:none;
}
 .register_btn{
   	border-radius: 15px !important;
    border: 0 !important;
    width:200px;
    height:40px;
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
.header{
		 background-color:white;
        width:100%;
        filter:alpha(opacity=50);
        opacity:0.5;
		
		
}

.navbar{
		width:100%;
		background-color:black;
		height:5%;
}
.dropbtn{
		background-color:black;
		color:white;
		padding:16px;
		right:150px;
		width:200px;
		height:50px;
		font-size:16px;
		border:none;
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
.dropdown{
	position:relative;
	display:inline-block;
	float:right;
}
  .dropdown-content {
  display:none;
  background-color:#f1f1f1;
  position:absolute;
  min-width:330px;
  }
  .dropdown-content a:hover
  {
  background-color:#ddd;
  }
  .dropdown:hover .dropdown-content{
  			display:block;	
  			 position:bottom;
  }
  .dropdown:hover .dropbtn{
  			background-color:#94afe6;
  }
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  opacity: 0.6;
  padding: 25px;
  background-color: #f1f1f1;
  
}
.button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 16px 32px;
  float:right;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover 
{
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" heoght="100%"/>  
<%String username=request.getParameter("username");%>
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
<center>
<div class="container">
<div class="transbox">
<form action="EditServlet" method="post">
<%int flight_id=Integer.parseInt(request.getParameter("flight_id")); %>
<%DAO dao=new DAO();%>
<%FlightBean bean=dao.getFlightDetail(flight_id);%>
<table cellpadding="40px" width="80%" align="center">
<thead><h3><font color=" #f2f2f2">Edit Flight Details</font></h3></thead>
<tbody>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">From</font></b></h4></td>
<td><div class="selectWrapper">
  <select name="begin" class="selectBox">
  <option <%= (bean.getFrom().equals("Chennai")?"selected='selected'":"") %>>Chennai</option>
  <option <%= (bean.getFrom().equals("Bangalore")?"selected='selected'":"") %>>Bangalore</option>
  <option <%= (bean.getFrom().equals("Delhi")?"selected='selected'":"") %>>Delhi</option>
  <option <%= (bean.getFrom().equals("Coimbatore")?"selected='selected'":"") %>>Coimbatore</option>
  <option <%= (bean.getFrom().equals("Mumbai")?"selected='selected'":"") %>>Mumbai</option>
</select>
</div></td>
<td></td>
<td><h4><b><font color=" #f2f2f2">To </font></b></h4></td>
<td><div class="selectWrapper">
  <select name="end" class="selectBox">
  <option <%= (bean.getTo().equals("Chennai")?"selected='selected'":"") %>>Chennai</option>
  <option <%= (bean.getTo().equals("Bangalore")?"selected='selected'":"") %>>Bangalore</option>
  <option <%= (bean.getTo().equals("Delhi")?"selected='selected'":"") %>>Delhi</option>
  <option <%= (bean.getTo().equals("Coimbatore")?"selected='selected'":"") %>>Coimbatore</option>
  <option <%= (bean.getTo().equals("Mumbai")?"selected='selected'":"") %>>Mumbai</option>
</select>
</div></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Arrival</font></b></h4></td>
<td><input type="text" id="rounded_corner" name="departure" value="<%=bean.getArival_time() %>" required/></td>
<td></td>
<td><h4><b><font color=" #f2f2f2">Departure</font></b></h4></td>
<td><input type="text" id="rounded_corner" name="arrival" value="<%=bean.getDeparture_time() %>"placeholder="Arrival time" required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Date </font></b></h4></td>
<td><input type="date" id="rounded_corner" value="<%=bean.getDate() %>"name="date" required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Flight name</font></b></h4></td>
<td><input type="text" id="rounded_corner" value="<%=bean.getFlight_name() %>" name="flight_name" placeholder="Flight name" required/></td>
<td></td>
<td><h4><b><font color=" #f2f2f2">Fare</font></b></h4></td>
<td><input type="number" id="rounded_corner" value="<%=bean.getFare() %>"name="fare" placeholder="Fare"required/></td>
</tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td></td><td></td>
<input type="hidden" name="flight_id" value="<%= flight_id%>">
<td><button class="register_btn" name="button"><b>Submit</b></button></td> 
</tr> 
</tbody>
</table>
</form>
</div> 
</div>
</center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<footer class="footer">
</br><b><i>Contact Us:www.infiniteflights.com</i></b></br>
<b><i>Call:9876543210</i></b>
</footer>  
</body>
</html>