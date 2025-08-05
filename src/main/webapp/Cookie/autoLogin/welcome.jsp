<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		// 세션에 저장된 값으로 불러오기
		String id = (String) session.getAttribute("user");
		
		// 로그인 한 상태가 아니라면 로그인 페이지로 이동 시키기
		if (id == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<h4><%= id %>님 로그인 성공하셨습니다.</h4>
	<hr>
	<a href="logout.jsp">로그아웃</a>

</body>
</html>