<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Show ${book.title}</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container-sm">
		<h1><c:out value="${book.title}"/></h1>
		<p>Description: <c:out value="${book.description}"/></p>
		<p>Language: <c:out value="${book.language}"/></p>
		<p>Number of Pages: <c:out value="${book.numberOfPages}"/></p>
		<a href="/books/${book.id}/edit">Edit Book</a>
		<form action="/books/${book.id}" method="post">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete">s
		</form>
	</div>
</body>
</html>