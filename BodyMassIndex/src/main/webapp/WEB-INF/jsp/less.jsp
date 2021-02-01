<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

html{
scroll-behavior:smooth;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}#ex1,#ex2 {
background-color:black;
color:white;
text-align:center;
}

#ex3 {
background-color:black;
color:white;
text-align:left;
}

span{
color:darkgreen
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: right;
  color: #f2f2f2;
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
  <a class="active" href="/signin">Sign Out</a>
  <a href="/viewhistory">View History</a>
</div>
<h2 style="text-align:center; font-family:verdana; "> <i>Your BMI is <span>${result}</span></i></h2>
<div id="ex1">
<h2><b>DIET PLAN</b></h2>
<p><b>Early Morning Breakfast (6:30 - 8:00 am)</b></p>

<p>Start your day with exercises. It will not only help you burn some calories, but you will also be able to stay active throughout the day, burning even more calories. After your workout, add a cup of tea or coffee made from low fat skimmed milk. You can have a couple of fiber-rich biscuits with it. Preferably, start your day with a small bowl of cereals.</p>

<p><b>Mid Morning snack (10:30 - 11:30 am)</b></p>

<p>Weight loss doesn't have to come from hunger. Instead, it is best to eat something healthy at quick intervals. Before you feel hungry for your lunch, treat yourself to fresh fruit such as an apple or orange. Keep shuffling your fruit during the week so that you get all the minerals and vitamins during the week.</p>

<p><b>Lunch (1:00 - 2:00 p.m.)</b></p>

<p>Eat a healthy but light lunch that is low in fat and calories. You can also drink a glass of water around 20 minutes before lunch. It will reduce your hunger and keep you from overeating.</p>

<p><b>Evening snack (4:00 - 6:00 p.m.)</b></p>

<p>You can have a cup of tea or coffee along with healthy snacks. However, make sure you avoid sodas and sugary beverages that may appear tempting at this of the day.</p>

<p><b>Dinner (7:00 - 8:00 p.m.)</b></p>

<p>Drink a glass of water around 15 minutes before you intend to have your dinner. Now it's time for a light and healthy meal that is full of nutritional content. You can mention different low-calorie dishes for dinner on different days of the week.</p>

<p><b>Post Dinner munching (10:00 - 10:30 p.m.)</b></p>

<p>A couple of slices of fresh fruit like apple or papaya. You can switch your fruits daily.</p>
</div>
<div id="ex2">
<h2>WORKOUT PLAN</h2>
<p>At least 30 minutes per day of moderate intensity cardio, most days of the week.</p>
<p>At least two strength training sessions per muscle (or muscle group) each week.</p>
<p>As much extra "lifestyle activity" as you can.</p>
<p>To maintain your weight: Work your way up to 150 minutes of moderate-intensity aerobic activity,75 minutes of vigorous-intensity aerobic activity,or an equivalent mix of the two each week.</p>
<p>It’s possible that you may need to do more than the equivalent of 150 minutes of moderate-intensity activity a week to maintain your weight.</p>
</div>
<div id="ex3">
<h2 style="text-align:center;">HEALTHY FOODS</h2>
<ul><li><p>Eat more protein, greens and home cooked food.</p></li>

<li><p>Fried foods and junk only give you those extra calories and no nutrients at all.</p></li>

<li><p>After the water aerobics workout, make sure to replace the energy spent with a healthy snack such as banana or low-fat yoghurt.</p></li>
 
<li><p>Eat whole grains, fruits, vegetables and proteins.</p></li>
    </ul>
</div>
</body>
</html>