<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>	
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
<title>Pet description</title>
</head>
<body>
			<a href="/">Home</a>
<c:choose>
<c:when test="${! empty pet}">
	<div>
		<h6>
		</h6>
		<h5>${pet.name}</h5>
		<p>
			Assigned ID #: <br>${pet.id}
		<p>
		<p>
			Species: <br>${pet.species}
		<p>
			Age: <br>${pet.age}</p>
		</p>
		<p>
			Gender: <br>${pet.gender}</p>
		<p>
			Color: <br>${pet.color}
		</p>
		<p>
			Location: <br>${pet.state}</p>
		<p>
			Health: <br>${pet.health}
		</p>
		<p>
			Description: <br>${pet.description}
		</p>
	</div>

		</c:when>
		<c:otherwise>
			<p>No pets found</p>
		</c:otherwise>
		</c:choose>

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