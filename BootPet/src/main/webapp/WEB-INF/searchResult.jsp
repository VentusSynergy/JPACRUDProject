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
<title>Insert title here</title>
</head>
<body>
	<h6>
		<a href="/">Home</a>	<a href="createPetPage.do"><em>   Add pet </em></a>	<form action="searchPage.do" method="GET">
		<select name="species">
			<option value="Dog">Dog</option>
			<option value="Cat">Cat</option>
			<option value="Rabbit">Rabbit</option>
			<option value="Rat">Rat</option>
		</select> <input type="submit" value="Search">
	</form>
		
	</h6>

	<c:choose>
		<c:when test="${! empty pet}">
			<c:forEach items="${pet}" var="pet">
				<a href="showPet.do?pets=${pet.id}"><em>ID: ${pet.id}<br>${pet.name}</em></a>
				<hr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<p>No pets found</p>
		</c:otherwise>
	</c:choose>
		<form action="delete.do" method="GET">
		<input type="number" name="pets" placeholder="enter pet #"
			required="required" /> <input type="submit" value="delete" />
	</form>
	<form action="mod.do" method="GET">
		<input type="number" name="modify" placeholder="enter pet #"
			required="required" /> <input type="submit" value="modify" />
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