<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.wipro.FRS.bean.*" %>
    <%@ page import="java.util.*" %>
    <%@page import="com.wipro.FRS.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Available Flights</title>
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
.dropbtn
{
		background-color:#1455D8;
		color:white;
		padding:16px;
		right:150px;
		width:200px;
		height:50px;
		font-size:16px;
		border:none;
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

.button1:hover {
  background-color: #4CAF50;
  color: white;
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
.footer{
        background-color:white;
        width:100%;
        text-align:center;
        filter:alpha(opacity=50);
        opacity:0.5;
		position:absolute;
		bottom:0;
		}
.dropdown 
{
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
.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #94AFE6;}
</style>
</style>
</head>
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" heoght="100%"/>  
<%
String from=request.getParameter("from");
String to=request.getParameter("to");
String date=request.getParameter("date");
int adult=Integer.parseInt(request.getParameter("adult"));
int child=Integer.parseInt(request.getParameter("child"));
String username=request.getParameter("username");
DAO dao=new DAO();
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
<%ArrayList<FlightBean>list=dao.getFlightDetails_User(from, to, date); %>
<div class="column">
    <div class="card">
      <%for(FlightBean bean:list)   	  
      {%>     
      <h3>Flight:<%= bean.getFlight_name()%></h3>
      <table cellpadding="40px" width="60%">
      <tr>
     <td> <h5>From:<%=bean.getFrom() %></h5></td>
     <td><h5>To    :<%=bean.getTo() %></h5></td>
     <td><h5>Date:<%=bean.getDate() %></h5></td>
     <td><h5>Fare:<%=bean.getFare() %></h5></td>
     <form action="BookTicket.jsp">
     <input type="hidden" name="username" value="<%=username%>">
     <input type="hidden" name="flight_id" value="<%= bean.getFlight_id() %>">
     <input type="hidden" name="adult" value="<%= adult%>">
     <input type="hidden" name="child" value="<%= child%>">
     <input type="hidden" name="date" value="<%=date %>">
     <input type="submit" value="Book" class="button button1">
     </form>
     </tr>
     <tr>
     <td>Arrival Time:<%=bean.getArival_time() %></td>
     <td>Departure time:<%=bean.getDeparture_time() %></td>
      </tr>
      </table>
      
    <%  } list.clear();%>
    	</div>
  </div>
</body>
</html>