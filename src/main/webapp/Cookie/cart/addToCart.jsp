<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 상품 추가</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String product = request.getParameter("product");
		
		Cookie[] cookies = request.getCookies(); // 기존 쿠키가 있다면 가져오기
		String savedCart = "";
		String newCart = "";
		
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("cart")) {
					savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품 목록
				}
			}
		}
		
		if (savedCart == "") {
			newCart = product; // 새로운 객체 = 문자열+문자열 
		} else {
			newCart = savedCart + "/" + product;
		}
		
		Cookie cartCookie = new Cookie("cart", newCart);	
		cartCookie.setMaxAge(60*5); // 5분
		response.addCookie(cartCookie);
	%>
	<a href="productList.jsp">상품 추가하기</a><br>
	<a href="viewCart.jsp">장바구니 보기</a>
	
	
</body>
</html>