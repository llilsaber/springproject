<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="margin: 0px">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
					쇼핑몰 메뉴1
				</div>
				<div class="leftMenuContent">
					쇼핑몰 메뉴2
				</div>
			</div>
			<br>			
		</nav>
		<div id="content">
			본문
		</div>
	</body>
</html>