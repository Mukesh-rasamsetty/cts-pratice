<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDo Application for ${name}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<h2>List of ToDo's</h2>
		<div class="container-fluid">
			<h3>Your ToDo's are:</h3>
			<table class="table table-striped table-hover" style="width: 50%">
				<tr class="row">
					<th scope="col" class="col-1">Id</th>
					<th scope="col" class="col-5">Description</th>
					<th scope="col" class="col-2">Target Date</th>
					<th scope="col" class="col-2">Is Done</th>
					<th>Actions</th>
					<th></th>
				</tr>
				<c:forEach var="temp" items="${todoList}">
					<tr class="row">
						<td class="col-1">${temp.getId()}</td>
						<td class="col-5">${temp.getDesc()}</td>
						<td class="col-2">${temp.getTargetDate()}</td>
						<td class="col-2">${temp.getIsDone()}</td>
						<td class="col-1"><a class="btn btn-warning"
							href="/updatePage?id=${temp.getId()}">Update</a></td>
						<td class="col-1"><a class="btn btn-danger" href="/delete?id=${temp.getId()}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>