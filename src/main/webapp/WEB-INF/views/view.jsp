
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
    <tr><td>Title:</td><td>${u.title}</td></tr>
    <tr><td>Writer:</td><td>${u.writer}</td></tr>
    <tr><td>Content:</td><td>${u.content}</td></tr>
    <tr><td>Category:</td><td>${u.category}</td></tr>

</table>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>

</body>
</html>