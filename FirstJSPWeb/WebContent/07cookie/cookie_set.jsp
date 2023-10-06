<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1 -->
<%
	//쿠키는 내장 객체가 아니기 때문에 만들어서 사용해야 함.
	
	//쿠키 생성 방법
	//1. 쿠키 객체 생성 - 생정자 매개변수(쿠키이름, 쿠키 값)
	Cookie idCoo = new Cookie("user_id","aaa123");
	Cookie nameCoo = new Cookie("user_name", "홍길동");
	
	//2. 쿠키 설정(시간)
	idCoo.setMaxAge(60*60); //1시간, 단위 초
	nameCoo.setMaxAge(20); //20s
	
	//3. 응답 객체(response)에 쿠키 탑재
	response.addCookie(idCoo);
	response.addCookie(nameCoo);
	
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie_set.jsp</title>
	</head>
	<body>
		<a href="cookie_get.jsp">쿠키 정보 확인하기</a>
	</body>
</html>