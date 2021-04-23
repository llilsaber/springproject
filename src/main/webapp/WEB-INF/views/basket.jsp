<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
		<%
String userId = request.getParameter("userId");
		userId = "root";
%>
<html style="margin: 0px">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
</script>
		<link rel="stylesheet" type="text/css" href="resources/css/style.css">
	</head>
	<body id="body">
		<nav id="top">
			<div id="mainLogo">
				<a href="MainPage.jsp">
					로고
				</a>
			</div>
			<div>
				<form action="">
					<input type="text" name="search">
					<input type="submit" value="검색">
				</form>
			</div>
			<div id="loginSession">
				<% if(session.getAttribute("userId") == null) {%>
					로그인을 해주세요!
				<%} else {%>
					${userId}님 환영합니다.
				<%} %>
			</div>
		</nav>
		<nav id="leftMenu">
			<div>
				<h3>
					<a href="MainPage.jsp">
						메인페이지
					</a>
				</h3>
			</div><br>
			<hr color="white">
			<div>
				<div class="leftMenuTitle">
					로그인
				</div>
				<div id="loginFaded" class="leftMenuContent">
					<a href="UserLogin.jsp">
						로그인
					</a>
				</div>
				<div class="leftMenuContent">
					<a href="UserInformation.jsp">
						회원정보
					</a>
				</div>
				<div class="leftMenuContent">
					<a href="UserLogout.jsp">
						로그아웃
					</a>
				</div>
			</div>
			<hr color="white">
			<div>
				<div class="leftMenuTitle">미디어</div>
				<div class="leftMenuContent">
					미디어 메뉴1
				</div>
				<div class="leftMenuContent">
					미디어 메뉴2
				</div>
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
			<% if(userId == "root") {%>
			<a href="shop_create.jsp" style="float: right;">상품추가</a><br>
				<%} else {%>
		<a style="float: right;">관리자로 로그인을 해주세요!</a><br>
		<%} %>
			<c:forEach var="vo" items="${list}">
<c:if test="${vo.sksc eq 'basketb'}">
			<a href="call?code=${vo.code}&name=${vo.name}&price=${vo.price}&content=${vo.content}&pstock=${vo.pstock}" title="${vo.name}"><img src="resources/img/${vo.code}.jpg" width=300 height="300"></a>
</c:if>			
</c:forEach>
		</div>
	</body>
</html>