<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<style>
	body, html {
	  height: 100%;
	  font-family: Arial, Helvetica, sans-serif;
	}
	
	* {
	  box-sizing: border-box;
	}
	
	.bg-img {
	  /* The image used */
	  background-image: url("images/bmi-img.jpg");
	
	  min-height: 680px;
	
	  /* Center and scale the image nicely */
	  background-position: center;
	  background-repeat: no-repeat;
	  background-size: cover;
	  position: relative;
	}
	
	/* Add styles to the form container */
	.container {
	  position: absolute;
	  right: 500px;
	  top:40px;
	  margin: 20px;
	  max-width: 300px;
	  padding: 16px;
	  background-color: white;
	}
	
	/* Full-width input fields */
	input[type=text], input[type=password] {
	  width: 100%;
	  padding: 15px;
	  margin: 5px 0 22px 0;
	  border: none;
	  background: #f1f1f1;
	}
	
	input[type=text]:focus, input[type=password]:focus {
	  background-color: #ddd;
	  outline: none;
	}
	
	/* Set a style for the submit button */
	.btn {
	  background-color: #4CAF50;
	  color: white;
	  padding: 16px 20px;
	  border: none;
	  cursor: pointer;
	  width: 100%;
	  opacity: 0.9;
	}
	
	.btn:hover {
	  opacity: 1;
	}
</style>
</head>
<body>

	<div class="bg-img">
	<h1><center>ONLINE FITNESS AND NUTRITION</center></h1>
   	<form action="/signinvalidate" method="post" class="container">
   	<h1>Sign In</h1>
   	<h3 style="color:red;text-align:center;">${error}</h3>
    
	
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required/>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required/>

    <button type="submit" class="btn">Login</button><br><br>
    <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${message}</label><br><br><br>
    <label>&nbsp;&nbsp;&nbsp;&nbsp;Not a Member?&nbsp;&nbsp;<a href="/signup">Sign Up Now</a></label>
  </form>
</div>
	
</body>
</html>