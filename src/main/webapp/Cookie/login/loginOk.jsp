<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	
	<%!
		String id;
		String pw;
		// 쿠키는 내장객체가 아니라 직접 선언해서 사용해야함.
	%>
	<% 
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("loginId");
		pw = request.getParameter("loginPw");
		
		if (id.equals("admin") && pw.equals("1234")) {
			session.setAttribute("sID", id); // 세션에 아이디값 저장
			Cookie cookie = new Cookie("cID", id); // Cookie(String name, String value), 쿠키 생성
			response.addCookie(cookie); // 서버에서 클라이언트로 보내야 하기 때문에 response (응답), 생성한 쿠키 전달			
			response.sendRedirect("welcome.jsp"); 
		} else {
			System.out.println("로그인 실패!");
			response.sendRedirect("login.jsp");
		}
	%>



</body>
</html>