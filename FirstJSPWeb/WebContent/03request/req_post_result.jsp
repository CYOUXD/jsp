<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 인코딩을 하지 않으면 바이트 타입 아스키 코드로 전송된다. -->
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String number = request.getParameter("number");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_post_result</title>
	</head>
	<body>
		이름 : <%=name %><br>
		숫자 : <%=number %>
	</body>
</html>