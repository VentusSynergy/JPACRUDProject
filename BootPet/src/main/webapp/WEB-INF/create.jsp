<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Add Pet</title>
</head>
<body>
	<a href="/">Home</a>

	<h5>New Pet</h5>
	<form action="createPet.do" method="GET">
		Pet Name: <input type="text" name="name" placeholder="enter name"
			required="required" /><br> Species: <input type="text"
			name="species" placeholder="species" required="required" /><br>
		Age: <input type="number" name="age" min="0" max="150"
			placeholder="age" required="required" /><br> 
			Gender: 
			<br>M <input
			type="radio" name="gender" value="M"/><br>
			F <input
			type="radio" name="gender" value="F"/><br>
			Color: <input
			type="text" name="color" placeholder="color" required="required" /><br>
		Location: <input type="text" name="state"
			placeholder="state" required="required" /><br>
		Health: <input type="text" name="health"
			placeholder="health" required="required" /><br>
		Description: <input type="text" name="description"
			placeholder="health" required="required" /><br>
			<input class="btn btn-warning" type="submit" value="Add Pet" />
	</form>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>