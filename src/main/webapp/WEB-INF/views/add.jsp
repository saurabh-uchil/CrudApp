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
	
	<div class="heading">
		<h3>"The secret is to believe in your dreams; in your potential that you can be like your star, keep searching, keep believing, and don't lose faith in yourself." - Neymar Jr.</h3>
	</div>
	
		<form action="addPlayers">
			<div>
				<div class="form-element">
					<label class="label">Id</label> 
					<input name="id" placeholder="ID"/>
				</div>
				<div class="form-element">
					<label>Name</label>
					<input name="name" placeholder="Name"/>
				</div>
				<div class="form-element">
					<label>Country</label>
					 <input name="country" placeholder="Country"/>
				</div>
				<div class="form-element">
					<label>Club</label> 
					<input name="club" placeholder="Club"/>
				</div>
				<button>Add Player</button>
			</div>
			<div class="playerImg">
				<img src="<c:url value="/resources/static/images/img2.jpg/" />" >
			</div>
		</form>
		
	
	</div>
	
</body>
</html>