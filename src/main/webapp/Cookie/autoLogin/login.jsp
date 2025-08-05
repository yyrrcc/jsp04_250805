<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 쿠키 가져오기(쿠키는 배열형임)
		
		String savedId = ""; // 지역변수인 경우 가져다가 못 쓰니까 외부에서 초기화 시켜주기
		
		// 처음 사이트 방문하거나 유효시간이 지난 경우 cookies == null
		if (cookies != null) { // 쿠키가 존재할 때
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("saveId")) {
					savedId = cookie.getValue(); // "saveId"로 지정된 실제 아이디 값 가져오기
				}
			}
		}
	%>
	<h2>회원 로그인</h2>
	<hr/>
	<form action="loginOk.jsp" method="post">
		아이디 <input type="text" name="loginId" value="<%= savedId %>"><br/>
		비밀번호 <input type="password" name="loginPw"><br/>
		<!-- 체크박스가 체크된 채로 아이디 저장을 하게 되면 로그아웃을 하게 되어도 체크박스의 체크가 계속 남아 있게 -->
		<input type="checkbox" name="rememberId" <%= (savedId.isEmpty() ? "" : "checked") %>> 아이디 저장<br/>
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>