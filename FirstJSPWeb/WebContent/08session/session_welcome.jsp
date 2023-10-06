<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 5 -->
<%
//로그인이 안되어 있을 때 접근 할 수 없다.
if(session.getAttribute("user_id") == null) {
	response.sendRedirect("session_login.jsp");
}

String id = (String)session.getAttribute("user_id");
String nick = (String)session.getAttribute("user_name");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_welcome.jsp</title>
	</head>
	<body>
		<h2><%=id %>님(<%=nick %>) 환영합니다.</h2>
		<a href="session_logout.jsp">로그아웃</a>
	</body>
</html>