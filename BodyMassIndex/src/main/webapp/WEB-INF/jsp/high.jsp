<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

html {
scroll-behavior: smooth;
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
@media ( max-width : 600px) {
nav, article {
width: 100%;
height: auto;
}
}

#ex1, #ex2 {
background-color: black;
color: white;
text-align: center;
}

#ex3 {
background-color: black;
color: white;
text-align: left;
}

span {
color: darkgreen
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
<h2 style="text-align: center; font-family: verdana;">
<i>Your BMI is <span>${result}</span></i>
</h2>
<div id="ex1">
<h2>
<b>DIET PLAN</b>
</h2>
<p>The Indian diet is rich in nutritious foods like grains,
lentils, healthy fats, vegetables, dairy and fruits.</p>

<p>A lacto-vegetarian diet is encouraged, and eating meat,
poultry, fish and eggs is discouraged. Lacto-vegetarians do, however,
eat dairy products.</p>

<p>A healthy lacto-vegetarian diet should focus on grains,
lentils, dairy, vegetables, fruits and healthy fats like coconut oil.
</p>
<p>Spices such as turmeric, fenugreek, coriander, ginger and cumin
are at the forefront of traditional dishes, adding rich flavor and
powerful nutritional benefits.</p>
<p>Turmeric, one of the most popular spices used in India, is
celebrated for its anti-inflammatory, antibacterial and anticancer
properties.</p>

<p>A compound in turmeric called curcumin has been found to fight
inflammation in the body, improve brain function and reduce risk
factors of heart disease.</p>
</div>
<div id="ex2">
<h2>WORKOUT PLAN</h2>
<p>Getting up early for a 20-minute walk before work and adding a
10-minute walk during lunch break add up to a half hour of walking
per day, which can burn about 200 calories.</p>
<p>On weekends, plans to walk for 60 minutes one day and spend one
hour gardening the next day for even greater calorie burning. If
walking for 60 minutes is too much, two 30-minute walks one day would
burn the same number of calories.</p>
<p>Twice per week plans to stop at the gym on the way home from
work, even if only for a half hour of stationary cycling or swimming
(each burning up to 250 calories).</p>
</div>
<div id="ex3">
<h2 style="text-align: center;">HEALTHY FOODS</h2>
<ul>
<li><b>Vegetables:</b> Tomatoes, spinach, eggplant, mustard
greens, okra, onions, bitter melon, cauliflower, mushrooms, cabbage
and more.</li>
<li><b>Fruits:</b> Including mango, papaya, pomegranate, guava,
oranges, tamarind, lychee, apples, melon, pears, plums, bananas</li>
<li><b>Nuts and seeds:</b> Cashews, almonds, peanuts,
pistachios, pumpkin seeds, sesame seeds, watermelon seeds and more</li>
<li><b>Legumes:</b> Mung beans, black-eyed peas, kidney beans,
lentils, pulses and chickpeas</li>
<li><b>Roots and tubers: </b>Potatoes, carrots, sweet potatoes,
turnips, yams
<li><b>Whole grains:</b> Brown rice, basmati rice, millet,
buckwheat, quinoa, barley, corn, whole-grain bread, amaranth,
sorghum</li>
<li><b>Dairy: </b>Cheese, yogurt, milk, kefir, ghee</li>
<li><b>Herbs and spices:</b> Garlic, ginger, cardamom, cumin,
coriander, garam masala, paprika, turmeric, black pepper, fenugreek,
basil and more</li>
<li><b>Healthy fats:</b> Coconut milk, full-fat dairy, avocado,
coconut oil, mustard oil, olive oil, peanut oil, sesame oil, ghee</li>
<li><b>Protein sources: </b>Tofu, legumes, dairy, nuts and seeds</li>
</ul>
</div>
</body>
</html>