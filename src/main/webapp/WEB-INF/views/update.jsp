<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/static/css/add.css/" />" >
<title>Update Player</title>
</head>
<body>
	<nav>
		<h3>Footballer's Delight</h3>
	</nav>
	
	<form class="addPlayers" action="updatePlayer" method="post">
		<label><h2>Update Player</h2></label><br/>
		ID: <input name="id" placeholder="ID"  value="${player.getId()}"/><br/>
		Name: <input name="name" placeholder="Name" value="${player.getName()}"/><br/>
		Country: <input name="country" placeholder="Country" value="${player.getCountry()}"/><br/>
		Club: <input name="club" placeholder="Club" value="${player.getClub()}"/><br/>
		<button>Update Player</button>
	</form>
</body>