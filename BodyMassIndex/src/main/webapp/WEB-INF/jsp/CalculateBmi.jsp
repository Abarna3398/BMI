<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>

body, html {
 height: 100%;
 font-family: Arial, Helvetica, sans-serif;
}

* {
 box-sizing: border-box;
}

.column {
float: right;
width: 50%;
padding: 30px;
height: 300px; 
}

.container {
 
 right: 500px;
 top:40px;
 float:left;
 margin: 150px;
 max-width: 300px;
 padding: 16px;
 background-color: lightgrey;
}

input[type=text], input[type=password] {
 width: 100%;
 padding: 15px;
 margin: 5px 0 22px 0;
 border: none;
 background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=number]:focus{
 background-color: #ddd;
 outline: none;
}

input[type=number]:focus, input[type=password]:focus {
 background-color: #ddd;
 outline: none;
 }
 
 .btn {
 background-color: #4CAF50;
 color: white;
 padding: 16px 20px;
 border: none;
 cursor: pointer;
 width: 50%;
 float: right;
 opacity: 0.9;
}

.btn:hover {
 opacity: 1;
}
    .topnav {
  overflow: hidden;
  background-color: white;
}



.topnav a {
  float: right;
  color: black;
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
<h1 style="text-align:center"> Hi ${username} </h1>
  <a class="active" href="/signin">Sign Out</a>
  <a href="/viewhistory">View History</a>
 

<form id="bmirecord" action="/calculate" method="post" class="container">

<table>

<tr>
<td>
<label  for="date">Enter date</label>
</td>
<td>
<input type="date" name="date" required/>
</td>
</tr>

<tr>
<td>
<label for="age">Enter Age</label>
</td>
<td>
<input type="text" placeholder="Enter Age" name="age" required/>
</td>
</tr>

<tr>
<td>
<label  for="weight">Enter Your Weight</label>
</td>
<td>
<input type="text" placeholder="Weight(in kg)" name="weight" required/>
</td>
</tr>

<tr>
<td>
<label  for="height">Enter Your Height</label>
</td>
<td>
<input type="text" placeholder="Height(in cm)" name="height" required/>
</td>
</tr>
</table>

<button type="submit" class="btn">Calculate</button>
    </form>
<div class="column">
<img src="images/bmi-table.jpg" alt="image" >
</div>

</body>
</html>