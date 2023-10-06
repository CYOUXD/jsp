<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 7 -->
<%
//이 페이지는 인가된 사용자가 접근해야 하는 페이지이다.
/*
Cookie[] arr = request.getCookies();
String name = arr[1].getValue();
*/
//선생님 ver
Cookie[] arr = request.getCookies();
String name = null;

if(arr != null) {
	for(int i=0; i<arr.length; i++) {
		if(arr[i].getName().equals("user_id")) {
			name = arr[i].getValue();			
		}
	}
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%=name %>님 환영합니다.
	</body>
</html>