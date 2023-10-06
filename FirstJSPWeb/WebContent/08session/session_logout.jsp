<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 6 -->
<%
	//로그아웃 처리(세션 정보 삭제)
	//session.removeAttribute("user_id"); //특정 정보 삭제
	session.invalidate(); //세션 정보 전체 삭제
	response.sendRedirect("session_login.jsp");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_logout.jsp</title>
	</head>
	<body>
		
	</body>
</html>