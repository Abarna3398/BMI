<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
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
	  <form:form action="/signin" method="post" modelAttribute="signup" class="container">
	    <h1>Sign Up</h1>
		
		<table>
	    <tr>
	    <td>
	    <form:label path="name"><b>Name</b></form:label>
	    </td>
	    <td>
	    <form:input type="text" placeholder="Enter Name" path="name" required="true"/>
	    </td>
	    </tr>
	    
	    <tr>
		 <td>
		 <label><b>Gender</b></label>
		 </td>
		 <td>
		 <form:select id="gender" path="gender" required="true">
		 <option value="male">Male</option>
		 <option value="female">Female</option>
		 </form:select>
		 </td>
	 	</tr>
	 	
	    <tr>
	    <td>
	    <form:label path="email"><b>Email</b></form:label>
	    </td>
	    <td>
	    <form:input type="text" placeholder="Enter Email" name="email" pattern="[a-z0-9._%+-]+@+[a-z0-9.-]+\.[a-z]{2,}$" path="email" required="true"/>
		</td>
		</tr>
		
		<tr>
	    <td>
	    <form:label path="phno"><b>phno</b></form:label>
	    </td>
	    <td>
	    <form:input type="text" placeholder="Enter phone number" name="phno" pattern="[7-9]{1}[0-9]{9}+$" path="phno" minimum-length="10" maxlength="10" required="true"/>
		</td>
		</tr>
		
		<tr>
		<td>
	    <form:label path="password"><b>Password</b></form:label>
	    </td>
	    <td>
	    <form:input type="password" placeholder="Enter Password" path="password" minlength="6" maxlength="15" required="true"/>
		</td>
		</tr>
		
		</table>
		
		
	    <button type="submit" class="btn">Sign Up</button><br><br><br>
	    <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${message}</label>
	
		  </form:form>
</div>
</body>
</html>