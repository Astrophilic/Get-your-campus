<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Counseling Portal</title>
</head>

<style>

.top-margin{
margin-top: 10px;
}
.logoutLblPos{

   position:fixed;
   right:10px;
   top:5px;
}

</style>


<body >

<form align="right" name="form1" method="post" action="log.jsp">
  <label class="logoutLblPos">
  <input name="submit2" type="submit" id="submit2" value="log out">
  </label>
</form>



<h2>Welcome, ${name}</h2>

<h3 style= "color: green">List of colleges</h3>

<div>
	<p>
		<ol>
		<li>BIT Mesra, Ranchi</li>
		<li>IIT, Kharagpur</li>
		<li>IIt, Kanpur</li>
		</ol>
	</p>
	</div>
		
</body>
</html>



<!-- 
aaaaaaaaaaaaa
 -->