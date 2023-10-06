<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 3 -->
<%
/*
Date 클래스를 사용하여 웹페이지 접근 시간을 xxxx년 xx월 xx일 형태로 생성
날짜 형식을 문자열 형태로 show라는 이름의 쿠키로 생성
show 쿠키를 coolie02.jsp에서 확인 할 수 있게 만들어 주세요.
*/
Date time = new Date();
SimpleDateFormat date = new SimpleDateFormat("yyyy년MM월dd일");//띄어쓰기가 들어가면 유효하지 않은 문자 에러가 남

Cookie show = new Cookie("show", date.format(time));

show.setMaxAge(30);

response.addCookie(show);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie01.jsp</title>
	</head>
	<body>
		<a href="cookie02.jsp">쿠키에 저장된 값을 확인해 보기</a>
	</body>
</html>