<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String code = request.getParameter("code");
String name = request.getParameter("name");
int price = Integer.parseInt(request.getParameter("price"));
String content = request.getParameter("content");
int pstock = Integer.parseInt(request.getParameter("pstock"));
//int lkup = Integer.parseInt(request.getParameter("lkup"));
pageContext.setAttribute("code", code);
String userId = request.getParameter("userId");
userId = "root";
%>
<!DOCTYPE html>
<html style="margin: 0px">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {

		}) //b1
		$('#b2').click(function() {
			pstock = $('#sstock').val()
			if (pstock > 0)
				alert('상품을 바로 구매합니다')
			else
				alert('현재는 상품이 모두 품절되었습니다')
		}) //b2
	})
</script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body id="body">
	<nav id="top">
		<div id="mainLogo">
			<a href="MainPage.jsp"> 로고 </a>
		</div>
		<div>
			<form action="">
				<input type="text" name="search"> <input type="submit"
					value="검색">
			</form>
		</div>
		<div id="loginSession">
			<%
				if (session.getAttribute("userId") == null) {
			%>
			로그인을 해주세요!
			<%
				} else {
			%>
			${userId}님 환영합니다.
			<%
				}
			%>
		</div>
	</nav>
	<nav id="leftMenu">
		<div>
			<h3>
				<a href="MainPage.jsp"> 메인페이지 </a>
			</h3>
		</div>
		<br>
		<hr color="white">
		<div>
			<div class="leftMenuTitle">로그인</div>
			<div id="loginFaded" class="leftMenuContent">
				<a href="UserLogin.jsp"> 로그인 </a>
			</div>
			<div class="leftMenuContent">
				<a href="UserInformation.jsp"> 회원정보 </a>
			</div>
			<div class="leftMenuContent">
				<a href="UserLogout.jsp"> 로그아웃 </a>
			</div>
		</div>
		<hr color="white">
		<div>
			<div class="leftMenuTitle">미디어</div>
			<div class="leftMenuContent">미디어 메뉴1</div>
			<div class="leftMenuContent">미디어 메뉴2</div>
		</div>
		<hr color="white">
		<div>
			<div class="leftMenuTitle">쇼핑몰</div>
			<div class="leftMenuContent">
				<a href="sall">전체 쇼핑몰</a>
			</div>
			<div class="leftMenuContent">
				<a href="foot">축구 쇼핑몰</a>
			</div>
			<div class="leftMenuContent">
				<a href="base">야구 쇼핑몰</a>
			</div>
			<div class="leftMenuContent">
				<a href="basket">농구 쇼핑몰</a>
			</div>
		</div>
		<br>
	</nav>
	<div id="content">
		<%
			if (userId=="root") {
		%>
		<a
			href="shop_update.jsp?code=<%=code%>&price=<%=price%>&content=<%=content%>&pstock=<%=pstock%>"
			style="float: right;">상품수정</a><br>
		<%
			}
		%>
		<table border="1">
			<tr>
				<td rowspan="3"><img src='resources/img/<%=code%>.jpg'></td>
				<td colspan="2"><%=name%></td>
			</tr>
			<tr>
				<td colspan="2"><%=price%>원</td>
			</tr>
			<tr>
				<td><input type="hidden" id="sstock" value=<%=pstock%>><br>
				<input type="button" id="b1" value="장바구니"></td>
				<td><br>
				<input type="button" id="b2" value="바로 구매"></td>
			</tr>
			<tr>
				<td colspan="3"><%=content%></td>
			</tr>
		</table>
		<hr>
		댓글<br>
			<c:forEach var="vo" items="${list}">
				<c:if test="${vo.code eq code}">
				<form action="cdelete">
			${vo.scomment} <input type="hidden" name="code" value=<%=code%>>
					<input type="hidden" name="scomment" value=${vo.scomment}>
					<input name="scpw" style="float: right;" value="비밀번호를 입력해주세요" onFocus="this.value=''; return true;">
					<input type="submit" style="float: right;" value="삭제">
					<br>
					<hr>
					<br>
					</form>
				</c:if>
			</c:forEach>
		<form action="ccreate">
			<input type="hidden" name="code" value=<%=code%>>
			<textarea rows="5" cols="110" name="scomment"></textarea>
			<br> 비밀번호 : <input name="scpw"> <input type="submit"
				style="float: right;" value="등록"><br>
			<hr>
		</form>
	</div>
</body>
</html>