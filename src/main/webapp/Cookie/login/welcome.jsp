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
		// 쿠키에 저장된 값 가져오기 (클라이언트 서버에 있음)
		Cookie[] cookies = request.getCookies(); // 쿠키 반환타입은 배열
	
		for(Cookie cookie : cookies) {
			String cValue = cookie.getValue(); // 배열 쿠키의 첫번째 값 가져오기
			if (cValue.equals("admin")) {
				out.println(cValue + "님 로그인 성공하셨습니다. <br>");
			}
		}
	%>
</body>
</html>