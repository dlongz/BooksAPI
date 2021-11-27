<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Books</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-sm">
		<h1>All Books</h1>
		<table class="table table-primary table-striped table-hover">
			<thead>
				<tr>
					<th>Title</th>
					<th>Description</th>
					<th>Language</th>
					<th>Number of Pages</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books}" var="book">
				<tr>
					<td><c:out value="${books.title}"/></td>
					<td><c:out value="${books.description}"/></td>
					<td><c:out value="${books.language}"/></td>
					<td><c:out value="${books.numberOfPages}"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href = "/books/new">New Book</a>
	</div>
</body>
</html>