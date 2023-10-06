<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 4 -->
    <%
    //forward로 넘어온 값을 얻는 방법
    String name = (String)request.getAttribute("name");
    //String aaa = request.getParameter("name");
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward_ex04.jsp</title>
	</head>
	<body>
		forward로 넘어온 값 : <%=name %>		
	</body>
</html>