<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<h4>로그아웃 되었습니다.</h4>
	<a href="login.jsp">로그인 바로가기</a>
</body>
</html>