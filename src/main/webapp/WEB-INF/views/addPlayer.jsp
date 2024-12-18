<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Players</title>
<link rel="stylesheet" href="<c:url value="/resources/static/css/show.css/" />" >
</head>
<body>


<nav>
		<h3>Footballer's Delight</h3>
</nav>

<h4>Added the following player to the database</h4>

<table>
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Country</th>
		<th>Club</th>
	</tr>
	<tr>
		<td>${player.getId()}</td>
		<td>${player.getName()}</td>
		<td>${player.getCountry()}</td>
		<td>${player.getClub()}</td>
	</tr>
</table>

</body>
</html>