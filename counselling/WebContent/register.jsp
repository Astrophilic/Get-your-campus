<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration</title>
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
<h1>Register here</h1>

<form for="login"  method ="post">
<input type="text" placeholder="Username" class="top-margin" name="name" required><br>
<input type="password" placeholder="Password" class="top-margin" name="pass" required><br>
<button type="submit" class="top-margin">Register</button>

	
</body>
</html>