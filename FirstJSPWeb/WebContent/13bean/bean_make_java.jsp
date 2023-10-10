<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 3 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_make_java.jsp</title>
	</head>
	<body>
		<h2>자바 코드를 이용해서 bean을 사용</h2>
		<%@ page import="com.bean.User" %>
		<%
		User user = new User();
		user.setId("apple");
		user.setName("김또리");
		
		//자바 코드를 사용 다음 페이지로 넘겨줄 때 request 강제 저장
		request.setAttribute("user", user);	//user를 통채로 전달
		
		RequestDispatcher dp = request.getRequestDispatcher("bean_use_java.jsp");
		dp.forward(request, response);
		%>
	</body>
</html>