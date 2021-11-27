<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>New Books</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-sm">
		<h1>New Book</h1>
		<form:form action="/books" methods="post" modelAttribute="book">
			<p>
				<form:label class="form-label" path="title">Title</form:label>
				<form:errors path="title"/>
				<form:input class="form-control" path="title"/>
			</p>
			<p>
				<form:label class="form-label" path="description">Description</form:label>
				<form:errors path="description"/>
				<form:textarea class="form-control" path="description"/>
			</p>
			<p>
				<form:label class="form-label" path="language">Language</form:label>
				<form:errors path="language"/>
				<form:input class="form-control" path="language"/>
			</p>
			<p>
				<form:label class="form-label" path="numberOfPages">Pages</form:label>
				<form:errors path="numberOfPages"/>
				<form:input class="form-control" path="numberOfPages"/>
			</p>
			<input type="submit" value="Submit"/>
		</form:form>
	</div>
</body>
</html>