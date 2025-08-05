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
		String rememberId;
	%>
	<% 
		request.setCharacterEncoding("UTF-8");
	
		id = request.getParameter("loginId");
		pw = request.getParameter("loginPw");
		rememberId = request.getParameter("rememberId"); // 체크박스 값
		// System.out.println(rememberId); // 찍어보니 값이 on, null 로 온다
		
		if (id.equals("admin") && pw.equals("1234")) {
			if (rememberId != null) { // 체크박스에 체크가 된 상태라면
				Cookie cookie = new Cookie("saveId", id); // 쿠키 생성(이름, 가져온 값)
				cookie.setMaxAge(60*3); // (60*3)분동안 쿠키 유지
				response.addCookie(cookie); // 생성한 쿠키를 클라이언트에게 전달	
			} else { // 체크박스에 체크가 안 된 상태라면 쿠키 삭제
				Cookie cookie = new Cookie("saveId", id); 
				cookie.setMaxAge(0); // 유효시간 0으로 만들면서 쿠키 삭제
				response.addCookie(cookie);
			}
			session.setAttribute("user", id); // 세션에 값 저장
			response.sendRedirect("welcome.jsp"); 
		} else {
			response.sendRedirect("login.jsp");
		}
	%>



</body>
</html>