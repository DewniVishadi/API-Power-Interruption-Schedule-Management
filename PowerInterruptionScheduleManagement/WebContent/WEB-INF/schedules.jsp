<%@page import="model.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
if (request.getParameter("itemCode") != null) 
{ 
 Item itemObj = new Item(); 
 String stsMsg = ""; 
//Insert--------------------------
if (request.getParameter("hidItemIDSave") == "") 
 { 
 stsMsg = itemObj.insertItem(request.getParameter("itemCode"), 
 request.getParameter("itemName"), 
 request.getParameter("itemPrice"), 
 request.getParameter("itemDesc")); 
 } 
else//Update----------------------
 { 
 stsMsg = itemObj.updateItem(request.getParameter("hidItemIDSave"), 
 request.getParameter("itemCode"), 
 request.getParameter("itemName"), 
 request.getParameter("itemPrice"), 
 request.getParameter("itemDesc")); 
 } 
 session.setAttribute("statusMsg", stsMsg); 
} 
//Delete-----------------------------
if (request.getParameter("hidItemIDDelete") != null) 
{ 
 Item itemObj = new Item(); 
 String stsMsg = 
 itemObj.deleteItem(request.getParameter("hidItemIDDelete")); 
 session.setAttribute("statusMsg", stsMsg); 
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Power Interruption Schedule Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/items.js"></script>
</head>
<body> 
<div class="container"><div class="row"><div class="col-6"> 
<h1>Power Interruption Schedule details</h1>

<form id="formSchedule" name="formSchedule" method="post" action="schedules.jsp">
 
 Province: 
 <select id="province" name="province">
		<option value="0">--Select Province--</option>
		<option value="1">Central Province</option>
		<option value="2">Eastern Province</option>
		<option value="3">Northern Province</option>
		<option value="4">Southern Province</option>
		<option value="5">Western Province</option>
		<option value="6">North Western Province</option>
		<option value="7">North Central Province</option>
		<option value="8">Uva Province</option>
		<option value="9">Sabaragamuva Province</option>
</select>
 <br> Area: 
 <input id="area" name="area" type="text" 
 class="form-control form-control-sm">
 <br> Group: 
 		<select id="sGroup" name="sGroup">
			<option value="0">--Select Group--</option>
			<option value="1">A</option>
			<option value="2">B</option>
			<option value="3">C</option>
			<option value="4">D</option>
			<option value="5">E</option>
			<option value="6">F</option>
			<option value="7">G</option>
			<option value="8">H</option>
			<option value="9">I</option>
			<option value="10">J</option>
			<option value="11">K</option>
			<option value="12">L</option>
			<option value="13">M</option>
			<option value="14">N</option>
			<option value="15">O</option>
			<option value="16">P</option>
			<option value="17">Q</option>
			<option value="18">R</option>
			<option value="19">S</option>
			<option value="20">T</option>
			<option value="21">U</option>
			<option value="22">V</option>
			<option value="23">W</option>
			<option value="24">X</option>
			<option value="25">Y</option>
			<option value="26">Z</option>
		</select>
 <br> Date: 
 <input id="day" name="day" type="text" 
 class="form-control form-control-sm">
 <br> Month:
 		<select id="month" name="month">
			<option value="0">--Select Month--</option>
			<option value="1">January</option>
			<option value="2">February</option>
			<option value="3">March</option>
			<option value="4">April</option>
			<option value="5">May</option>
			<option value="6">June</option>
			<option value="7">July</option>
			<option value="8">August</option>
			<option value="9">September</option>
			<option value="10">October</option>
			<option value="11">November</option>
			<option value="12">December</option>	 
		</select>
 <br> Week: 
 <br> From: 
 <input id="startDay" name="startDay" type="text" 
 class="form-control form-control-sm">
 <br> To:
 <input id="endDay" name="endDay" type="text" 
 class="form-control form-control-sm">
 <br> Year: 
 <input id="year" name="year" type="text" 
 class="form-control form-control-sm">
 <br> Time: 
 <br> From: 
 <input id="startTime" name="startTime" type="text" 
 class="form-control form-control-sm">
 <br> To:
 <input id="endTime" name="endTime" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidScheduleIDSave" 
 name="hidScheduleIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divItemsGrid">
 <%
 Item itemObj = new Item(); 
 out.print(itemObj.readItems()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>
