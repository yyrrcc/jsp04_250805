<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 유효시간 설정</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		for (Cookie cookie : cookies) {
			cookie.setMaxAge(60*60*24*7); // 쿠키의 유효시간 설정, 초단위, 7일
			response.addCookie(cookie);
		}
		
		for (Cookie cookie : cookies) {
			cookie.setMaxAge(0); // 모든 쿠키 삭제, 유효시간은 0으로
			response.addCookie(cookie);
		}
		
		// 다시 클라이언트 서버로 보내줘야 함
		
	%>
</body>
</html>