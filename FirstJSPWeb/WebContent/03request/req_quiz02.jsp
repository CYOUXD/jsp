<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_quiz02.jsp</title>
	</head>
	<body>
		<%--
			a 태그를 클릭했을 때에 req_quiz02_ok.jsp에 학생 번호를 출력하세요
			a 태그로 "x번 학생" 링크를 30개(1~30) 생성
			클릭하면 "xx번 학생 출력" 출력되게 만들기
		--%>
		<%
		for(int i=1; i<=30; i++) {
		%>
			<a href="req_quiz02_ok.jsp?num=<%=i%>"><%=i%>번째 학생</a><br>
		<%	
		}
		%>
	</body>
</html>