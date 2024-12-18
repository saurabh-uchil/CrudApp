<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/static/css/add.css/" />" >
<title>Add Players</title>
</head>
<body>
	<nav>
		<h3>Footballer's Delight</h3>
	</nav>
	
	<form class="addPlayers" action="addPlayers">
		<label><h2>Add Player</h2></label><br/>
		ID: <input name="id" placeholder="ID"/><br/>
		Name: <input name="name" placeholder="Name"/><br/>
		Country: <input name="country" placeholder="Country"/><br/>
		Club: <input name="club" placeholder="Club"/><br/>
		<button>Add Players</button>
	</form>
</body>
</html>