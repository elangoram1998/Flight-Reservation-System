<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.wipro.FRS.dao.*" %>
<%@page import="com.wipro.FRS.bean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<head id="Head1" runat="server">  
  <title>Administration login</title>  
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
 <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/themes/base/jquery-ui.css"
        type="text/css" media="all" />
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css"
        type="text/css" media="all" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/jquery-ui.min.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            var date = new Date();
            $("[id*=d_v]").datepicker({
                autoclose: true,
                changeMonth: true,
                changeYear: true,
                minDate: date
            });
        });
    </script>
    
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
.rounded_corner {
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
</head>
<body background="https://d2c8orla013wc0.cloudfront.net/Categories/Flights_1.jpg" width="100%" heoght="100%"/>  
<%String username=(String)request.getAttribute("username");%>
  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid"> 
    <div class="navbar-header">
	<img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATXmmdjs0cRm0m3xASMCI_5-ea1cHkI_sLDFU2eWITSXAypbwiw" width="30%" height="30%">
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a data-toggle="tab" href="#flights">Flights</a></li>
      <li><a data-toggle="tab" href="#schedule">Schedule</a></li>
    </ul>
    <div class="dropdown">
<header>
    <button class="dropbtn"><i class="fa fa-fw fa-user"></i>Profile
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <form action="change_password.jsp">
    <input type="hidden" name="username" value=<%=username %>>
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
<% DAO dao=new DAO();%>
<% ArrayList<FlightBean>list=dao.getFlightDetails_Admin();
%>
    <div class="tab-content">
    <div id="flights" class="tab-pane fade in active">
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
     <form action="edit_page.jsp">
     <input type="hidden" name="username" value="<%= username%>">
     <input type="hidden" name="flight_id" value="<%=bean.getFlight_id() %>">
     <input type="submit" value="edit" class="button button1">
     </form>
     <form action="PassengerDetails.jsp">
     <input type="hidden" name="flight_id" value="<%=bean.getFlight_id() %>">
     <input type="hidden" name="date" value="<%= bean.getDate() %>">
     <input type="submit" value="passenger details" class="button button1">
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
    </div>
    <div id="schedule" class="tab-pane fade">
      <center>
<div class="container">
<div class="transbox">
<form action="ScheduleFlight" method="post" id="form1" runat="server" onsubmit="return(regvalidate())">
<table cellpadding="40px" width="80%" align="center">
<br><br>
<thead><h3><font color=" #f2f2f2">Updating Schedule Details</font></h3></thead>
<tbody>

<tr><td></br></td></tr>

<tr>
<td><h4><b><font color=" #f2f2f2">From</font></b></h4></td>
<td><div class="selectWrapper">
  <select name="begin" class="selectBox">
  <option>Chennai</option>
  <option>Bangalore</option>
  <option>Delhi</option>
  <option>Coimbatore</option>
  <option>Mumbai</option>
</select>
</div></td>

<td></td>

<td><h4><b><font color=" #f2f2f2">To </font></b></h4></td>
<td><div class="selectWrapper">
  <select name="end" class="selectBox">
  <option>Chennai</option>
  <option>Bangalore</option>
  <option>Delhi</option>
  <option>Coimbatore</option>
  <option>Mumbai</option>
</select>
</div>
<font color="red"> <DIV id="id_to"> </DIV> </font></td>
</td>
</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>

<tr>
<td><h4><b><font color=" #f2f2f2">Departure</font></b></h4></td>
<td><input type="time" id="rounded_corner" name="departure" placeholder="Departure time" required/></td>

<td></td>

<td><h4><b><font color=" #f2f2f2">Arrival</font></b></h4></td>
<td><input type="time" id="rounded_corner" name="arrival" placeholder="Arrival time" required/></td>

</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>

<tr>
<td><h4><b><font color=" #f2f2f2">Date </font></b></h4></td>
<td><input type="text" class="rounded_corner" id="d_v" name="date"/>
</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>

<tr>
<td><h4><b><font color=" #f2f2f2">Flight name</font></b></h4></td>
<td><input type="text" id="rounded_corner" name="flight_name" placeholder="Flight name" required/></td>

<td></td>

<td><h4><b><font color=" #f2f2f2">Fare</font></b></h4></td>
<td><input type="number" id="rounded_corner" name="fare" placeholder="Fare"required/></td>

</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>

<tr>
<td></td><td></td>
<td><input type="submit" class="register_btn" name="button" value="Submit"/></td> 
</tr> 
</tbody>
</table>
</div> 
</div>
</form>

    </div>
  </div></center>
  <script type="Text/JavaScript">
function regvalidate()
{
if((document.ScheduleFlight.begin.value) == (document.ScheduleFlight.end.value))
{
document.getElementById('id_to').innerHTML = "Select a valid Destination";
ScheduleFlight.end.value = "";
ScheduleFlight.end.focus();
return(false);
}
else
{
return(true);
}
}
</script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->  
<footer class="footer footer-fixed-bottom">
</br><b><i> Contact Us:www.infiniteflights.com</i></b></br>
<b><i> Call:1234567890</i></b>
</footer>

</body>
</html>