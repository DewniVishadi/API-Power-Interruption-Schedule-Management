$(document).ready(function() 
{ 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
});  

// SAVE ===============================================================
$(document).on("click", "#btnSave", function(event) 
{ 
	// Clear status msges---------------------
	$("#alertSuccess").text(""); 
	$("#alertSuccess").hide(); 
	$("#alertError").text(""); 
	$("#alertError").hide();

	// Form validation-------------------
	var status = validateItemForm(); 
	
	// If not valid
	if (status != true) 
	{ 
	 $("#alertError").text(status); 
	 $("#alertError").show(); 
	return; 
	}

	// If valid------------------
	$("#formSchedule").submit();
	//Generate the card and append
	var schedule = getScheduleCard($("#province").val(), 
	 $("#area").val().trim(), 
	 $("#sGroup").val(),
	 $("#day").val().trim(),
	 $("#month").val(),
	 $("#startDay").val().trim(),
	 $("#endDay").val().trim(),
	 $("#year").val().trim(),
	 $("#startTime").val().trim(),
	 $("#endTime").val().trim()); 
	$("#colSchedules").append(schedule);
	
	$("#alertSuccess").text("Saved successfully."); 
	$("#alertSuccess").show(); 
	 
	$("#formStudent")[0].reset();		
});

// REMOVE==========================================
$(document).on("click", ".remove", function(event) 
{ 
	 $(this).closest(".student").remove(); 
	 
	 $("#alertSuccess").text("Removed successfully."); 
	 $("#alertSuccess").show(); 
});


// CLIENT-MODEL=================================================================
function validateItemForm() 
{ 
	// PROVINCE
	if ($("#province").val() == "0") 
	 { 
	 return "Select Province"; 
	 } 
	
	//AREA
	if ($("#area").val().trim() == "") 
	 { 
	 return "Insert affected areas"; 
	 } 
	 
	 // GROUP
	if ($("#sGroup").val() == "0") 
	 { 
	 return "Select Province"; 
	 } 
	 
	 // DATE
	if ($("#day").val().trim() == "") 
	 { 
	 return "Insert date"; 
	 } 
	 
	 // MONTH
	if ($("#month").val() == "0") 
	 { 
	 return "Select month"; 
	 }
	 
	  // START DATE
	if ($("#startDay").val().trim() == "") 
	 { 
	 return "Insert starting date"; 
	 } 
	 
	  // END DATE
	if ($("#endDay").val().trim() == "") 
	 { 
	 return "Insert ending date"; 
	 } 
	  // YEAR
	if ($("#year").val().trim() == "") 
	 { 
	 return "Insert year"; 
	 } 
	  
	  // START TIME
	if ($("#startTime").val().trim() == "") 
	 { 
	 return "Insert starting time"; 
	 } 
	 
	  // DATE
	if ($("#endTime").val().trim() == "") 
	 { 
	 return "Insert ending time"; 
	 } 
	 
	return true; 
}


function getScheduleCard(province, area, group, day, month, startDay, endDay, year, startTime, endTime) 
{ 
	
	var province = ""; 
	switch (province) 
	{ 
		case "1": 
		 provinceName = "Central Province"; 
		 break; 
		case "2": 
		 provinceName = "Eastern Province"; 
		 break; 
		case "3": 
		 provinceName = "Northern Province"; 
		 break; 
		case "4": 
		 provinceName = "Southern Province"; 
		 break; 
		case "5": 
		 provinceName = "Western Province"; 
		 break; 
		case "6": 
		 provinceName = "North Western Province"; 
		 break; 
		case "7": 
		 provinceName = "North Central Province";
		 break;  
		case "8": 
		 provinceName = "Uva Province"; 
		 break; 
		case "9": 
		 provinceName = "Sabaragamuva Province"; 
		 break; 
	 }
	 
	 
	 var group = ""; 
	switch (group) 
	{ 
		case "1": 
		 groupLetter = "A"; 
		 break; 
		case "2": 
		 groupLetter = "B"; 
		 break; 
		case "3": 
		 groupLetter = "C"; 
		 break; 
		case "4": 
		 groupLetter = "D";
		 break;  
		case "5": 
		 groupLetter = "E";
		 break;  
		case "6": 
		 groupLetter = "F";
		 break;  
		case "7": 
		 groupLetter = "G"; 
		 break; 
		case "8": 
		 groupLetter = "H"; 
		 break; 
		case "9": 
		 groupLetter = "I"; 
		 break; 
		case "10": 
		 groupLetter = "J"; 
		 break; 
		case "11": 
		 groupLetter = "K"; 
		 break; 
		case "12": 
		 groupLetter = "L"; 
		 break; 
		case "13": 
		 groupLetter = "M"; 
		 break; 
		case "14": 
		 groupLetter = "N"; 
		 break; 
		case "15": 
		 groupLetter = "O";
		 break;  
		case "16": 
		 groupLetter = "P"; 
		 break; 
		case "17": 
		 groupLetter = "Q"; 
		 break; 
		case "18": 
		 groupLetter = "R";
		 break; 
		case "19": 
		 groupLetter = "S"; 
		 break; 
		case "20": 
		 groupLetter = "T"; 
		 break; 
		case "21": 
		 groupLetter = "U"; 
		 break; 
		case "22": 
		 groupLetter = "V";
		 break;  
		case "23": 
		 groupLetter = "W";
		 break;  
		case "24": 
		 groupLetter = "X";
		 break;  
		case "25": 
		 groupLetter = "Y"; 
		 break; 
		case "26": 
		 groupLetter = "Z";  
		 break; 	 
	 } 
	
	
	var month = ""; 
	switch (month) 
	{ 
		case "1": 
		 monthName = "January"; 
		 break; 
		case "2": 
		 monthName = "February"; 
		 break; 
		case "3": 
		 monthName = "March"; 
		 break; 
		case "4": 
		 monthName = "April"; 
		 break; 
		case "5": 
		 monthName = "May"; 
		 break; 
		case "6": 
		 monthName = "June"; 
		 break; 
		case "7": 
		 monthName = "July";
		 break;  
		case "8": 
		 monthName = "August"; 
		 break; 
		case "9": 
		 monthName = "September"; 
		 break; 
		case "10": 
		 monthName = "October";
		 break;  
		case "11": 
		 monthName = "November"; 
		 break; 
		case "12": 
		 monthName = "December"; 
		 break;
	 }
	
	var schedule = ""; 
	 schedule += "<div class=\"schedule card bg-light m-2\"style=\"max-width: 10rem; float: left;\">"; 
	 schedule += "<div class=\"card-body\">"; 
	 schedule += title + " " + provinceName + " province" +","; 
	 schedule += "<br>"; 
	 schedule += area + ",";
	 schedule += "<br>"; 
	 schedule += groupLetter + " group"; 
	 schedule += "<br>"; 
	 schedule += day + ",";
	 schedule += "<br>";
	 schedule += monthName + " month"; 
	 schedule += "<br>"; 
	 schedule += startDay + ",";
	 schedule += "<br>";
	 schedule += endDay + ",";
	 schedule += "<br>";
	 schedule += year + ",";
	 schedule += "<br>";
	 schedule += startTime + ",";
	 schedule += "<br>";
	 schedule += endTime + ",";
	 schedule += "<br>";
	 schedule += "</div>"; 
	 schedule += "<input type=\"button\" value=\"Remove\"class=\"btn btn-danger remove\">"; 
	 schedule += "</div>"; 
	return schedule; 
}
