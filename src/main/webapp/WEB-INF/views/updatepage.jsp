<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TODO Application for ${name}</title>
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
	<div class="container">
		<div class="container-fluid">
			<h1>ToDo's Application</h1>
			<div class="container-fluid">
				<h3>Update ToDo's</h3>
				<hr />
				<form:form action="updatePage" method="POST" modelAttribute="todo">
					<table class="mx-auto">
						<tr>
							<td><form:hidden path="id" /></td>
							<td><form:hidden path="user" /></td>
						</tr>
						<tr>
							<th><form:label path="desc">Description</form:label></th>
							<td><form:input path="desc" class="form-control" /></td>
						</tr>
						<tr>
							<th><form:label path="targetDate">Target Date</form:label></th>
							<td><form:input path="targetDate" class="form-control" /></td>
						</tr>
						<tr>
							<td colspan="2"><form:checkbox path="isDone" />&nbsp;&nbsp;<form:label
									path="isDone">Is Done</form:label></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="Update"
								class="btn btn-success" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>