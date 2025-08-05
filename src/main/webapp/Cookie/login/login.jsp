<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<h2>회원 로그인</h2>
	<hr/>
	<form action="loginOk.jsp" name="loginCheck" method="post">
		아이디 <input type="text" name="loginId"><br/>
		비밀번호 <input type="password" name="loginPw"><br/>
		<input type="submit" value="로그인">
		<input type="reset" value="다시 입력하기">
	</form>
	
</body>
</html>