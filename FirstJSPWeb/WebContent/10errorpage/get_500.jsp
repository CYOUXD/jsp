<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 8 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>500 에러 발생</title>
	</head>
	<body>
		<%		
		String num = request.getParameter("num");
		int result = Integer.parseInt(num);
		%>
	</body>
</html>