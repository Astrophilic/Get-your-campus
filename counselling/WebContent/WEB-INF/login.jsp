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
.green-text{
	color: green;
}
.top-margin{
margin-top: 10px;
}
</style>


<body >
<h1 class="green-text">STUDENT COUNSELING PORTAL</h1>
<h3 class="green-text">Login / Register</h3>
<form for="login" action="login" method ="post">
<input type="text" placeholder="Username" class="top-margin" name="name" required><br>
<input type="password" placeholder="Password" class="top-margin" name="pass" required><br>
<button type="submit" class="top-margin" >Login</button>
<div>
	<p>
		New user? <a href = "#" target="_blank">Sign Up</a>
	</p>
	</div>
	<p style="color: red">
	${error}
	</p>
	
	<!--  
	<p>
	Username: ${name}<br>
	Password: ${password}<br>
	</p>
	 -->
	
</body>
</html>