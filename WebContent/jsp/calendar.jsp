<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<script src="https://www.w3schools.com/lib/w3.js"></script>	
<head>
	<meta charset="ISO-8859-1">
	<title>Arrange Appointments School of Tomorrow </title>
	<link href="css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	
<header><!--   	logo     -->
   		<form action="calendar.html" method="post">	<!-- calendar in which display FreeSlot of the worker-->
			<div class="container">

			   	<label>Topic of the appointment</label>
		     	<input type="text" name="Topic" placeholder="Department" list="professionist"/> 
	            <datalist id = "professionist">
	                <option value = "Distance Learning">
	                <option value = "Full-time Tuition">
	                <option value = "Teacher A">
	                <option value = "Teacher B">
	                <option value = "Teacher C">
	                <option value = "Teacher D">
	            </datalist>
	            <br/>
	
			<button onclick="calendar with data of professors loaded??????????????????????????????l">Submit</button> <br> 
			</div>
	 	</form>
    
    
    <fieldset> 
	    <!-- <button type="button" class="languagebtn">EN</button>
		<button type="button" class="languagebtn">RU</button>  -->     
  	</fieldset>
</header>	
<br>

<div id="content">

	<%
		if(session.getAttribute("settingsErrorMsg") != null)/*	SHOW THE FOLLOWING MODAL IF CHANGIES SUCCEDED  */
		{ 
	%>    
	 <!-- The Alert -->
		<div class="alert">
  		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  			Success: the changes have been saved
		</div>
	 <% 
		}
	%>


	<div class="menu" id="ex_users"> <!-- parent side -->
	    <fieldset > 
	    <div w3-include-html="forms.html"></div> 
      
	  	</fieldset>
	 </div>
	
	<div class="calendar" >
		<div class="week"> 
		  <fieldset>
	  	  	<p class="weeknoun" style="font-weight: bold;font-size: x-large"> 12 / 19 MAY </p> 
		    <p class="prev">&#10094;</p>	
		    <p class="next">&#10095;</p> 
		    <p class="weeknoun" style="font-weight: bold;">2016</p>
		  </fieldset>
		</div>
	<div id="calendar" style="overflow-x:auto;">  
	</div>
	</div>
</div>

<footer> <p class="footer">International School of Tomorrow © 2016 Privacy Policy</p> </footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="js/main.js"></script>

<script>
w3.includeHTML();
</script>
</body>
</html>