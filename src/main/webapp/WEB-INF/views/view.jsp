<jsp:useBean id="u" scope="request" type="com.example.project.ProjectVO"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

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

<div class="container mt-4">
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
            <div class="btn-group float-start">
                <!--<button type="button" onclick="history.back()" class="btn btn-outline-secondary">Cancel</button>-->
            </div>
            <div class="btn-group float-end">
                <button type="button" onclick="history.back()" class="btn btn-outline-secondary">Cancel</button>
                <!--<a href="editform/${u.seq}" class="btn btn-outline-secondary">Edit</a>
							<button class="btn btn-outline-secondary" onclick="delete_ok(${u.seq})">Delete</button>-->
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js (Required for Bootstrap) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
