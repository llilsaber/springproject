<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<%
String code = request.getParameter("code");
int price = Integer.parseInt(request.getParameter("price"));
int pstock = Integer.parseInt(request.getParameter("pstock"));
String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 상품 수정</title>
<style>
</style>
</head>
<body style="text-align: center;">
	<p style="font-family: courier; font-weight: bold; font-size: 40px;">상품 수정</p>
	<hr>
	<form action="supdate">
						상품코드: <input type="text" name="code" value=<%=code %> readonly/>
					<hr>
						가격: <input name="price" value=<%=price %>>(단위: 원) &nbsp;물량: <input name="pstock" value=<%=pstock %>>(단위: 개)
					<hr>
						상품 세부설명<br>
						<textarea rows="20" cols="97" name="content"><%=content %></textarea><br>
		<input type="submit" style="float: right;" value="상품수정">
	</form>
</body>
</html>

