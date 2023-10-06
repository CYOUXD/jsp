<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>path_quiz</title>
	</head>
	<body>
		<!-- 현재 위치에서 a 태그를 이용하여 경로 이동 -->
		<!-- req_vido.jsp 페이지로 상대 경로로 이동 -->
		<a href="../../request/req_video.jsp">req_vido.jsp 페이지로 상대 경로로 이동</a><br>
		<!-- req_video.jsp 페이지로 절대 경로로 이동 -->
		<a href="/FirstJSPWeb/request/req_video.jsp">req_vido.jsp 페이지로 절대 경로로 이동</a><br>
		
		<!-- testServlet.jsp 페이지로 상대 경로 이동 -->
		<a href="../../servlet/testServlet.jsp">testServlet.jsp 페이지로 상대 경로로 이동</a><br>
		<!-- testServlet.jsp 페이지로 절대 경로 이동 -->
		<a href="/FirstJSPWeb/servlet/testServlet.jsp">testServlet.jsp 페이지로 절대 경로로 이동</a><br>
		
		<!-- first 유튜브 이미지 경로 참조 -->
		<img alt="" src="../../img/first.png" width="100" height="100">
	</body>
</html>