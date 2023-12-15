<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.project.ProjectDAO, com.example.project.ProjectVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>PP1 Final Project</title>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<style>
		.edit-img {
			margin-top: 4px;
			width: 20px;
			height: 20px;
			margin-right: 5px;
		}
		.footer-line {
			margin-top: 30px;
			border-top: 1px solid #ccc;
		}
		.project-info {
			font-size: 12px;
			margin-top: 10px;
			color: #555;
		}
	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
	</script>
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

<!-- Header -->
<div class="container mt-4">
	<div class="row">
		<div class="col-md-6">
			<h2 class="mb-4">Let's Start New Project</h2>
		</div>
		<div class="col-md-6 text-end">
			<a class="btn btn-primary mb-4" href="add">Add</a>
		</div>
	</div>

	<!-- Bootstrap Row and Columns -->
	<div class="row row-cols-1 row-cols-md-2 g-4">
		<c:forEach items="${list}" var="u">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">User ID: ${u.userid}</h5>
						<p class="card-text">${u.username}</p>
						<p class="card-text">Email: ${u.email}</p>
						<p class="card-text">GitHub Name: ${u.githubname}</p>
						<p class="card-text">Introduction: ${u.intro}</p>
						<p class="card-text">Project: ${u.project}</p>
						<p class="card-text">Stack: ${u.stack}</p>
						<p class="card-text">${u.regdate}</p>
					</div>
					<div class="card-footer">
						<a href="view/${u.seq}" class="btn btn-outline-secondary">More</a>
						<div class="btn-group float-end">
							<a href="editform/${u.seq}" class="btn btn-outline-secondary">Edit</a>
							<button class="btn btn-outline-secondary" onclick="delete_ok(${u.seq})">Delete</button>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="footer-line"></div>
	<div class="project-info">
		<p>@실전 프로젝트 project5 team 22 최동빈, 최예라</p>
</div>

<!-- Bootstrap JS and Popper.js (Required for Bootstrap) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
