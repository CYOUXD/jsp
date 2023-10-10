<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    <%
    request.setCharacterEncoding("utf-8");    
    %>
    <jsp:useBean id="user" class="com.bean.User" scope="request" />
     --%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>quiz03.jsp</title>
	</head>
	<body>
	<!-- 
		<h2>"<jsp:getProperty property="id" name="user" />님의 회원 가입을 축하합니다. 비밀 번호는<jsp:getProperty property="pw" name="user" />입니다."</h2>
	 -->
	 <!-- 선생님 ver -->
	 <!-- scope의 page와 request의 차이 - page면 값을 이 페이지에서 다시 넣어야하고 request면 넘어온 값을 사용할 수 있다. -->
	 <jsp:useBean id="user" class="com.bean.User" scope="request" />
	 <jsp:getProperty property="id" name="user" />님 회원 가입을 축하합니다.<br>
	 비밀 번호는 <jsp:getProperty property="pw" name="user" />입니다.
	</body>
</html>