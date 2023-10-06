<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//여러개의 파라미터를 받아야하기 때문에 배열로 받을 수 있는 getParameterValues로 받는다
	String[] intro = request.getParameterValues("intro");
	String major = request.getParameter("major");
	String phone = request.getParameter("phone");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		아이디 : <%=id %><br>
		비밀번호 : <%=pw %><br>
		관심분야 : <%=Arrays.toString(intro) %><br>
		전공 : <%=major %><br>
		통신사 : <%=phone %><br>
		이름 : <%=name %><br>
		주소 : <%=addr %><br>
	</body>
</html>