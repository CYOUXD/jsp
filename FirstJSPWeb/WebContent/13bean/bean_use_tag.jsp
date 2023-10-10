<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 6 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_use_tag.jsp</title>
	</head>
	<body>
		<h2>액션 태그로 자바 bean 사용</h2>
		<jsp:useBean id="user" class="com.bean.User" scope="request" />
		<jsp:getProperty property="id" name="user"/>
		<jsp:getProperty property="name" name="user"/>
	</body>
</html>