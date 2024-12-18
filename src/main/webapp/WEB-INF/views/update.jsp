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
	
	<div class="heading">
		<h3>"You have to fight to reach your dream. You have to sacrifice and work hard for it." - Lionel Messi</h3>
	</div>
	
		<form action="addPlayers">
			<div>
				<div class="form-element">
					<label class="label">Id</label> 
					<input name="id" placeholder="ID" value="${player.getId()}"/>
				</div>
				<div class="form-element">
					<label>Name</label>
					<input name="name" placeholder="Name" value="${player.getName()}"/>
				</div>
				<div class="form-element">
					<label>Country</label>
					 <input name="country" placeholder="Country" value="${player.getCountry()}"/>
				</div>
				<div class="form-element">
					<label>Club</label> 
					<input name="club" placeholder="Club" value="${player.getClub()}"/>
				</div>
				<button>Update Player</button>
			</div>
			<div class="playerImg">
				<img src="<c:url value="/resources/static/images/img3.jpg/" />" >
			</div>
		</form>
		
	
	</div>
	
</body>