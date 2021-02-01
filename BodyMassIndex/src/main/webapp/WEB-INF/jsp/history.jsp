<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
 background-image: url("images/result.jpeg");

 width:100%;
 height:100%;
 margin-bottom:120px;

 /* Center and scale the image nicely */
 background-position: center;
 background-repeat: no-repeat;
 background-size: cover;
 position: relative;
}
}
table {
font-family: arial, sans-serif;
border-collapse: collapse;
width: 100%;
}

table.center {
margin-left: auto;
margin-right: auto;
}

td, th {
border: 5px solid black;
text-align: center;
padding: 8px;
font-style: italic;
}

thead {
background-color: lightgrey;
}

h2 {
color: black;
text-align: center;
}

.topnav {
overflow: hidden;
}

.topnav a {
float: right;
margin-right:30px;
color: white;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font-size: 17px;
}

.topnav a:hover {
background-color: #ddd;
color: black;
}

.topnav a.active {

background-color: #4CAF50;
color: white;
}
</style>
</head>
<body>
<div class="topnav">
<a class="active" href="/signin">Sign Out</a> <a href="/history">View
History</a>
</div>
<h2>Hi ${username},Your BMI Data History is here</h2>

<table class="center">
<thead>
<tr>
<td><b>Date</b></td>
<td><b>BMI RESULT</b></td>
</tr>
</thead>

<tbody>
<c:forEach items="${list}" var="list">
<tr>
<td>${list.date}</td>
<td>${list.bmi}</td>
</tr>
</c:forEach>
</tbody>
</table>


</body>
</html>