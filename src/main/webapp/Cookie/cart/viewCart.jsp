<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 장바구니</title>
</head>
<body>

	<h2>상품 장바구니 보기</h2>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
	
		Cookie[] cookies = request.getCookies();
		String savedCart = "";
	
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("cart")) {
					savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품 목록
				}
			}
		}
		
		if (savedCart == "") {
			out.println("장바구니가 비어 있습니다.");
		} else {
			//out.println(savedCart); // 상품 목록 출력
			String[] carts = savedCart.split("/");
			for (String cart : carts) {
				out.println("* " + cart + "<br>");
			}
		}

	%>
	<a href="removeCart.jsp">장바구니 비우기</a>
	<%
		
	%>
	<br>
	<a href="productList.jsp">상품 선택 페이지로 돌아가기</a>
</body>
</html>