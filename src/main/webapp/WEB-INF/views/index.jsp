<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TODO Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.cus-table {
    border-radius: 5px;
    width: 50%;
    margin: 0px auto;
    float: none;
}

td {
	padding : 5px;
}
</style>
</head>
<body>
	<header>
		<h2 class="text-dark">ToDo's Application</h2>
	</header>
	<div class="container">
		<form:form action="/login" modelAttribute="user" class="mx-auto px-auto cus-table col-5" method="post">
			<table>
				<tr>
					<td><form:label path="username">UserName:</form:label></td>
					<td><form:input path="username" class="from-control" /></td>
				</tr>
				<tr>
					<td><form:label path="password">Password:</form:label></td>
					<td><form:password path="password" class="from-control" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Sign-In"
						class="btn btn-success text-light" /></td>
					<td><input type="reset" value="Cancel" class="btn btn-danger" />
					</td>
				</tr>
			</table>
			<p class="text-danger font-weight-bold">${error}</p>
		</form:form>
	</div>
</body>
</html>