<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/static/css/show.css/" />" >
<title>Show Players</title>
</head>
<body>

<nav>
		<h3>Footballer's Delight</h3>
</nav>


	<table >
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Country</th>
	<th>Club</th>
</tr>

<c:forEach var="player" items="${playerList}">
	<tr>
	<td>${player.getId()}</td>
	
	<td>${player.getName()}</td>
	
	<td>${player.getCountry()}</td>
	
	<td>${player.getClub()}</td>
	</tr>
</c:forEach>
	
</table>

</body>
</html>