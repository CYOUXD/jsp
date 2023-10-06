<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 4 -->
<%
/*
	1. 아이디, 비밀번호, 닉네임 받기
	2. 조건 : 아이디와 비밀번호가 서로 동일하면 user_id 이름으로 id를 세션에 저장
			user_name 이름으로 nick 세션에 저장
			session_welcome 페이지로 이동해서 "id님(이름) 님 환영합니다." 출력
			
			아이디와 비밀번호가 틀린 경우 다시 로그인 페이지로 리다이렉트
*/
request.setCharacterEncoding("utf-8");
//세션은 쿠키와 달리 오브젝트라서 내부 값이 뭔지 모르므로 한글처리를 해준다.
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String nick = request.getParameter("nick");

//인증
if(id.equals(pw)) {
	//로그인 성공
	session.setAttribute("user_id", id);
	session.setAttribute("user_name", nick);	
	response.sendRedirect("session_welcome.jsp");
}else {
	//로그인 실패
	response.sendRedirect("session_login.jsp");
	
	//자바스크립트로 구현
	
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_login_ok.jsp</title>
	</head>
	<body>
	
	</body>
</html>