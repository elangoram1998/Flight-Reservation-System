<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>User Page</title>
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
            $("[id*=date_valid]").datepicker({
                autoclose: true,
                changeMonth: true,
                changeYear: true,
                minDate: date
            });
        });
    </script>
 
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

.dropdown 
{
  position: relative;
  display: inline-block;
  float:right;
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
  <%String username=(String)request.getAttribute("username");%>
  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid"> 
    <div class="navbar-header">
	<img src= "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQATXmmdjs0cRm0m3xASMCI_5-ea1cHkI_sLDFU2eWITSXAypbwiw" width="30%" height="30%">
    </div>
    <div class="dropdown">
<header>
    <button class="dropbtn"><i class="fa fa-fw fa-user"></i>Profile
      <i class="fa fa-caret-down"></i>
      <button><i class="fa fa-fw fa-user"></i>About Us
      <i class="fa fa-caret-down"></i>
    </button>
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
<center>

<div class="container">
<div class="transbox">

<form action="ShowFlights.jsp" id="form1" runat="server" name = "registerationform" onsubmit="return(regvalidate())">

<table cellpadding="40px" width="80%" align="center">
<br><br>
<thead><h3><font color=" #f2f2f2">User Page</font></h3></thead>

<tbody>

<tr><td></br></td></tr>

<tr>
<td><h4><b><font color=" #f2f2f2">From</font></b></h4></td>
<td><div class="selectWrapper">
  <select class="selectBox" name="from">
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
  <select class="selectBox" name="to">
  <option>Chennai</option>
  <option>Bangalore</option>
  <option>Delhi</option>
  <option>Coimbatore</option>
  <option>Mumbai</option>
</select>
</div>
<font color="red"> <DIV id="id_to"> </DIV> </font></td>
</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr>
<td><h4><b><font color=" #f2f2f2">Date </font></b></h4></td>
<td><input type="text" class="rounded_corner" id="date_valid" name="date"/>
<font color="red"> <DIV id="id_date"> </DIV> </font></td>
</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>

<tr>
<td><h4><b><font color=" #f2f2f2">Adult</font></b></h4></td>
<td><input type="number" id="rounded_corner" name="adult" />
<font color="red"> <DIV id="id_adult"> </DIV> </font></td>

<td></td>

<td><h4><b><font color=" #f2f2f2">Child</font></b></h4></td>
<td><input type="number" id="rounded_corner" name="child" />
<font color="red"> <DIV id="id_child"> </DIV> </font></td>
</tr>

<tr><td></br></td></tr>
<tr><td></br></td></tr>
<tr><td></br></td></tr>

<tr>
<td></td><td></td>
<input type="hidden" name="username" value="<%=username %>">
<td><input type="submit" class="register_btn" name="button" value="Search Flight"/></td> 
</tr> 

</form>
</tbody>

<SCRIPT type="Text/JavaScript">
function regvalidate()
{
if((document.registerationform.from.value) == (document.registerationform.to.value))
{
document.getElementById('id_to').innerHTML = "Select a valid Destination";
registerationform.to.value = "";
registerationform.to.focus();
return(false);
}
if((document.registerationform.date.value) == "")
{
	document.getElementById('id_to').innerHTML = "";
document.getElementById('id_date').innerHTML = "Please enter date";
registerationform.date.value = "";
registerationform.date.focus();
return(false);
}
if((document.registerationform.adult.value)=="" )
{
	document.getElementById('id_to').innerHTML = "";
	document.getElementById('id_date').innerHTML = "";

document.getElementById('id_adult').innerHTML = "Please enter the number of adults";
registerationform.adult.focus();
return(false);
}
if((document.registerationform.adult.value)>3 )
{
	document.getElementById('id_to').innerHTML = "";
	document.getElementById('id_date').innerHTML = "";

document.getElementById('id_adult').innerHTML = "Maximumn three adults are allowed";
registerationform.adult.focus();
return(false);
}
if((document.registerationform.adult.value)==0 &&(document.registerationform.child.value)==0 )
{
	document.getElementById('id_to').innerHTML = "";
	document.getElementById('id_date').innerHTML = "";

document.getElementById('id_adult').innerHTML = "Please enter valid passenger details";
registerationform.adult.focus();
return(false);
}
if((document.registerationform.child.value)>3 )
{
	document.getElementById('id_to').innerHTML = "";
	document.getElementById('id_date').innerHTML = "";

document.getElementById('id_child').innerHTML = "Maximum three childrens are allowed";
registerationform.child.focus();
return(false);
}
if((document.registerationform.child.value)=="" )
{
	document.getElementById('id_to').innerHTML = "";
	document.getElementById('id_date').innerHTML = "";
	document.getElementById('id_adult').innerHTML = "";
document.getElementById('id_child').innerHTML = "Please enter the number of children";
registerationform.child.focus();
return(false);
}

else
{
return(true);
}
}
</script>

</table>
</div> 
</div>
</center>
</body>
</html>