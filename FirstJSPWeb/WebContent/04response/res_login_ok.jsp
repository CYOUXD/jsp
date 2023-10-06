<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 5 -->
<%
/*
	1번 페이지(login.jsp)에서 넘어온 id, pw 값을 받아서 처리
	id가 abc1234이고 비밀번호가 asd123이라면 로그인 성공이라고 간주하고
	login_welcome.jsp로 리다이렉트
	
	id가 틀린 경우 login_id_fail.jsp로 리다이렉트
	pw가 틀린 경우 login_pw_fail.jsp로 리다이렉트
*/
	//request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	/*
	if(id.equals("abc1234") && pw.equals("asd123")) {
		response.sendRedirect("login_welcome.jsp");
	}else if(!id.equals("abc1234") && pw.equals("asd123")) {
		response.sendRedirect("login_id_fail.jsp");
	}else if(id.equals("abc1234") && !pw.equals("asd123")) {
		response.sendRedirect("login_pw_fail.jsp");
	}
	*/
	
	//선생님 ver
	if(id.equals("abc1234")) {
		if(pw.equals("asd123")) {
			response.sendRedirect("login_welcome.jsp");
		} else {
			response.sendRedirect("login_pw_fail.jsp");
		}		
	}else{
		response.sendRedirect("login_id_fail.jsp");
	}

%>