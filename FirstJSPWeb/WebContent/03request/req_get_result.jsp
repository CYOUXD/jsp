<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name"); //반환타입이 String이므로 String으로 받음
	String number = request.getParameter("number");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request_get_result</title>
	</head>
	<body>
		이름 : <%=name %><br>
		숫자 : <%=number %>
	</body>
</html>