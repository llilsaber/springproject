<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우사의 확률 시뮬레이터</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {
		$('#button1').click(function() {
			var arr = []
			for (i = 0; i < 6; i++) {
				data = Math.random() * (45 - 1 + 1) + 1
				data2 = data - data % 1
				y = 0
				for (x = 0; x < 6; x++) {
					if (arr[x] == data2)
						y = y + 1
				}
				if (y > 0)
					i = i - 1
				else
					arr[i] = data2
			}
			div = $('div')
			div.append(arr + '<br>')
			return data
		})
	})
</script>
</head>
<body>
	<button id="button1">lotto</button>
	<br> 받은 로또 번호
	<div></div>
	메이플
	<br>
	<a href="maple_ability.jsp">어빌리티</a>&nbsp;
	<a>코잼작</a>&nbsp;
	<a>주문서작</a>&nbsp;
	<a>큐브작</a>&nbsp;
	<a>스타포스</a>
</body>
</html>