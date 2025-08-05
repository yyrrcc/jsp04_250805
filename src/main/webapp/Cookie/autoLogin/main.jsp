<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 쿠키 가져오기
		String id = "";
		String pw = "";
		
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("saveId")) {
					id = cookie.getValue();
				}
				if (cookie.getName().equals("savePw")) {
					pw = cookie.getValue();
				}
			}
		}
		
		// 로그인 성공 처리
		if (id.equals("admin") && pw.equals("1234")) {
			session.setAttribute("user", id);
			out.println(id + "님, 자동 로그인 완료!");
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>