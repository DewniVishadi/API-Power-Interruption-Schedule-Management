<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Power Interruption Schedule Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body> 
	<div class="container"> 
 		<div class="row">
 			<div class="col-8"> 
 				<h1 class="m-3">Power Interruption Schedule details</h1> 
 				<form id="formSchedule"> 
 					
 					<!-- PROVINCE -->
 					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
						 <span class="input-group-text" id="lblName">Province: </span>
						</div>
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
					</div>
					
					<!-- AREA -->
					 <div class="input-group input-group-sm mb-3">
						 <div class="input-group-prepend">
						 <span class="input-group-text" id="lblName">Area: </span>
						 </div>
						 <input type="text" id="area" name="area">
					 </div>
					
					<!-- GROUP -->
 					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
						 <span class="input-group-text" id="lblName">Province: </span>
						</div>
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
					</div>
					
					<!-- DATE -->
					 <div class="input-group input-group-sm mb-3">
						 <div class="input-group-prepend">
						 <span class="input-group-text" id="lblName">Date: </span>
						 </div>
						 <input type="text" id="day" name="day">
					 </div>
					 
					 <!-- Month -->
 					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
						 <span class="input-group-text" id="lblName">Month: </span>
						</div>
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
					</div>
					
					<!-- WEEK -->
					 <div class="form-group row">
						 <label for="week" class="col-sm-2 col-form-label">Week:</label>
						 
						 <!-- START DATE -->
					 		<div class="input-group input-group-sm mb-3">
							 	<div class="input-group-prepend">
							 	<span class="input-group-text" id="lblName">From </span>
							 </div>
							 <input type="text" id="startDay" name="startDay">
						 </div>
						 
						 <!-- END DATE -->
					 		<div class="input-group input-group-sm mb-3">
							 	<div class="input-group-prepend">
							 	<span class="input-group-text" id="lblName">To </span>
							 </div>
							 <input type="text" id="endDay" name="endDay">
						 </div>
 					</div>
 					
 					<!-- YEAR -->
					 <div class="input-group input-group-sm mb-3">
						 <div class="input-group-prepend">
						 <span class="input-group-text" id="lblName">Year: </span>
						 </div>
						 <input type="text" id="year" name="year">
					 </div>
 					
 					<!-- TIME -->
					 <div class="form-group row">
						 <label for="week" class="col-sm-2 col-form-label">Time:</label>
						 
						 <!-- START TIME -->
					 		<div class="input-group input-group-sm mb-3">
							 	<div class="input-group-prepend">
							 	<span class="input-group-text" id="lblName">From </span>
							 </div>
							 <input type="text" id="startTime" name="startTime">
						 </div>
						 
						 <!-- END TIME -->
					 		<div class="input-group input-group-sm mb-3">
							 	<div class="input-group-prepend">
							 	<span class="input-group-text" id="lblName">To </span>
							 </div>
							 <input type="text" id="endTime" name="endTime">
						 </div>
 					</div>
 					
 					<div id="alertSuccess" class="alert alert-success"></div>
 					<div id="alertError" class="alert alert-danger"></div>
 					
 					<input type="button" id="btnSave" value="Save" class="btn btn-primary">
 					
 				</form>
 			</div>
 	</div>
 
 <br> 
 
 		<div class="row">
 			<div class="col-12" id="colSchedules">
 
 			</div>
 		</div>
	</div>
</body>
 
</div>
</div> </div> </div> 
</body>
</html>
