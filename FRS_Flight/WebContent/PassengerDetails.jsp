<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@ page import="com.wipro.FRS.dao.*" %>
    <%@ page import="com.wipro.FRS.bean.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
.footer{
        background-color:white;
        width:100%;
        text-align:center;
        filter:alpha(opacity=50);
        opacity:0.5;
		position:absolute;
		bottom:0;
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
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" height="100%">
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
<%String flight_id=request.getParameter("flight_id"); %>
<%String date=request.getParameter("date"); %>
<%DAO dao=new DAO(); %>
<%ArrayList<PassengerBean>list=dao.passengerDetails(flight_id,date); %>
<div class="column">
    <div class="card">
    <%for(PassengerBean bean:list)
    	{%>
    	<h3>Username:<%= dao.getUsername(bean.getUsername())%></h3>
    	<h3>Mobile No:<%= bean.getUsername()%></h3>
    	<table cellpadding="40px" width="60%">
      <tr>
     <td><h5>No of adult:<%=bean.getAdult() %></h5></td>
     <td><h5>No of child:<%=bean.getChild() %></h5></td>
     </tr>
     <tr>
     <% if(bean.getAdult_username()!=null && bean.getAdult_age()!=null && bean.getAdult_gender()!=null)
    	 {
    	 String[] adultName=bean.getAdult_username().split(" ");%>
    <% String[] adultAge=bean.getAdult_age().split(" ");%>
    <%String[] adultGender=bean.getAdult_gender().split(" "); %>
      <th><h4><b>Adult:</b></h4></th>
     <%for(int i=0;i<bean.getAdult();i++)
    	 {%>
    	 <td><h5>Name:<%=adultName[i] %></h5></td>
    	 <td><h5>Age:<%=adultAge[i] %></h5></td>
    	 <td><h5>Gender:<%=adultGender[i] %></h5></td>
    	 <%}} %>
     </tr>
     <tr>
     <%
     if(bean.getChild_username()!=null &&bean.getChild_age()!=null &&bean.getChild_gender()!=null)
     {
     String[] childName=bean.getChild_username().split(" "); 
     String[] childAge=bean.getChild_age().split(" "); 
     String[] childGender=bean.getChild_gender().split(" ");
     %>
     <td><h4><b>Child:</b></h4></td>
     <%for(int i=0;i<bean.getChild();i++)
    	 {%>
    	 <td><h5>Name:<%=childName[i] %></h5></td>
    	 <td><h5>Age:<%=childAge[i] %></h5></td>
    	 <td><h5>Gender:<%=childGender[i] %></h5></td>
    	 <%} %>
      </tr>
      </table>
    	<%}} %>
    </div>
    </div>
    
    
</body>
</html>