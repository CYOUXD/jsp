<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 5 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_make_tag.jsp</title>
	</head>
	<body>
		<h2>액션 태그로 자바 bean 사용</h2>
		<jsp:useBean id="user" class="com.bean.User" scope="request" />
		<jsp:setProperty property="id" name="user" value="apple" />
		<jsp:setProperty property="name" name="user" value="홍성대" />
		<jsp:forward page="bean_use_tag.jsp" /> <!-- 요청된 정보로 이 페이지를 불러옴 -->
	</body>
</html>