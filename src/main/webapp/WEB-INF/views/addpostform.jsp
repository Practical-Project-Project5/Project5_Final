<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table>
<tr><td>userid:</td><td><input type="text" name="userid"/></td></tr>
<tr><td>username:</td><td><input type="text" name="username"/></td></tr>
<tr><td>email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>githubname:</td><td><input type="text" name="githubname"/></td></tr>
<tr><td>intro:</td><td><textarea cols="50" rows="5" name="intro"></textarea></td></tr>
</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>