<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/static/css/home.css/" />" >

<title>Home</title>
</head>
<body>

<nav>
	<h3>Footballer's Delight</h3>
</nav>

<div class="heading">	
	<h3 >
		"This web application is designed to help users easily manage football player information. It allows users to add new players, view details about existing players, update their information, and remove players when necessary." 
	</h3>
</div>
	
<form action="add" method="get">
	<button>Add Players</button>
</form>
	
<form action="show" method="get">
	<button>Show Players</button>
</form>
	
<div class="formBox">	
	<form action="find" class="find" method="post">
		<label>Id :</label>
		<input name="id">
		<button>Find By Id</button>
	</form>
	
	<form action="update" class="update" method="post">
		<label>Id :</label>
		<input name="id">
		<button>Update By Id</button>
	</form>
	
	<form action="delete" class="delete" method="post">
		<label>Id :</label>
		<input name="id">
		<button>Delete By Id</button>
	</form>
	
</div>

<div class="imgBox">
	<img src="<c:url value="/resources/static/images/img1.jpg/" />" >
</div>	

</body>
</html>