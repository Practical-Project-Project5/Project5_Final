
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Form</title>
</head>
<body>

<h1>View Form</h1>
<table id="edit">
    <tr><td>userid:</td><td>${u.userid}</td></tr>
    <tr><td>username:</td><td>${u.username}</td></tr>
    <tr><td>email:</td><td>${u.username}</td></tr>
    <tr><td>githubname:</td><td>${u.githubname}</td></tr>
    <tr><td>intro:</td><td>${u.intro}</td></tr>

</table>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>

</body>
</html>