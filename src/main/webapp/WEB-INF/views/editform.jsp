<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
<form:hidden path="seq"/>
<table id="edit">
<tr><td>userid:</td><td><form:input path="userid" /></td></tr>
<tr><td>username:</td><td><form:input path="username"  /></td></tr>
<tr><td>email:</td><td><form:input path="email"  /></td></tr>
<tr><td>githubname:</td><td><form:input path="githubname"  /></td></tr>
<tr><td>intro:</td><td><form:textarea cols="50" rows="5" path="intro" /></td></tr>

</table>
	<tr><td colspan="2"><input type="submit" value="Edit Post"/>
	<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</form:form>

</body>
</html>