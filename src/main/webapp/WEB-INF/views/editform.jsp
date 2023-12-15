<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
		  crossorigin="anonymous">
	<style>
		body {
			background-color: #ffffff;
			padding: 20px;
		}

		h1 {
			color: #0a0a0c;
			font-size: 35px;
		}

		form {
			margin-top: 20px;
		}

		table {
			width: 100%;
			max-width: 500px;
			margin-bottom: 20px;
			background-color: #ffffff;
			border: 1px solid #dee2e6;
			border-radius: 10px;
			overflow: hidden;
		}

		td {
			padding: 10px;
			border-bottom: 1px solid #dee2e6;
		}

		textarea {
			width: calc(100% - 20px);
			padding: 10px;
		}

		button {
			margin-right: 10px;
		}
	</style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="#">Let's Project</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="#">Meeting</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Project</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Study</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Info</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

<div class="container">
	<div class="container mt-4">
		<h1>Edit Form</h1>
		<form:form modelAttribute="u" method="POST" action="../editok">
			<form:hidden path="seq"/>
			<table id="edit">
				<tr><td>title:</td><td><form:input path="title" /></td></tr>
				<tr><td>userid:</td><td><form:input path="userid" /></td></tr>
				<tr><td>username:</td><td><form:input path="username"  /></td></tr>
				<tr><td>email:</td><td><form:input path="email"  /></td></tr>
				<tr><td>githubname:</td><td><form:input path="githubname"  /></td></tr>
				<tr><td>introduction:</td><td><form:textarea cols="50" rows="3" path="intro" /></td></tr>
				<tr><td>stack:</td><td><form:input path="stack"  /></td></tr>
				<tr><td>project:</td><td><form:textarea cols="50" rows="3" path="project"  /></td></tr>
			</table>
			<tr><td colspan="2">
					<button type="button" onclick="history.back()" class="btn btn-secondary">Cancel</button>
					<button type="submit" class="btn btn-primary">Edit Post</button></td></tr>
		</form:form>
		<div style="margin-bottom: 20px;"></div>
	</div>

	<!-- Bootstrap JS and Popper.js (Required for Bootstrap) -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
