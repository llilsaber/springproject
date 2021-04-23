<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 상품 등록</title>
<style>
</style>
</head>
<body style="text-align: center;">
	<p style="font-family: courier; font-weight: bold; font-size: 40px;">상품등록</p>
	<hr>
	<form action="screate">
						상품코드: <input id="code" name="code"> &nbsp;
						상품명: <input name="name">
					<hr>
						관련 스포츠<br>
						<input type="radio" value="footb" name="sksc">축구 &nbsp;
						<input type="radio" value="baseb" name="sksc">야구 &nbsp;
						<input type="radio" value="basketb" name="sksc">농구
					<hr>
						관련 용품<br>
						<input type="radio" value="dress" name="pksc">옷 &nbsp;
						<input type="radio" value="cheer" name="pksc">응원도구 &nbsp;
						<input type="radio" value="commemoration" name="pksc">기념상품 &nbsp;
						<input type="radio" value="sportt" name="pksc">스포츠도구
					<hr>
						가격: <input name="price">(단위: 원) &nbsp;물량: <input name="pstock">(단위: 개)
					<hr>
						상품 세부설명<br>
						<textarea rows="20" cols="97" name="content"></textarea><br>
						<input type="hidden" name="lkup" value=0>
		<input type="submit" style="float: right;" value="상품등록">
	</form>
	<br><a href="sall">메인으로</a>
</body>
</html>

