<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>

	<h2>상품을 선택하세요.</h2>
	<hr>
	<form action="addToCart.jsp">
		<select name="product">
			<option value="phone">스마트폰</option>
			<option value="laptop">노트북</option>
			<option value="ipad">아이패드</option>
			<option value="airpods">에어팟</option>
		</select>
		<input type="submit" value="장바구니에 담기">
	</form>
	<hr>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>