<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 2 -->
<%
	//전달 받은 쿠키를 사용하는 JSP
	
	//쿠키 사용하기
	//쿠키는 요청시 자동으로 전송되고 request에 자동 저장됨
	Cookie[] arr = request.getCookies();
	
	if(arr != null){ //쿠키가 null일 수도 있으니 조건 정해 줌
		for(int i=0; i<arr.length; i++) {
			out.println(arr[i].getName()+"<br>"); //쿠키 이름 얻기
			out.println(arr[i].getValue()+"<br>"); //쿠키 값 얻기
		}
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 값 확인(cookie_get.jsp)</title>
	</head>
	<body>

	</body>
</html>