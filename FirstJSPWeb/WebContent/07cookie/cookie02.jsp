<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 4 -->
<%
/*
show 쿠키가 있다면 쿠키가 가지고 있는 값을 화면에 출력
없으면 쿠키 값이 없습니다. 출력
*/
Cookie[] arr = request.getCookies();
String date = null;
if(arr != null){ //쿠키 존재 여부 확인
	for(int i=0; i<arr.length; i++){
		if(arr[i].getName().equals("show")) { //다른데서 사용한 쿠키가 남아있을 수 있으니 확인해야 함
			date = arr[i].getValue();
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
		<!-- 
			쿠키 값이 없으면, "쿠키 값이 없습니다. 
			show 쿠키가 있는 경우에는 "마지막 접속 날짜 : ~~~"가 출력되게 해주세요.
		-->
		<%
		if(date != null) {
		%>
			마지막 접속 날짜 : <%=date %>
		<%
		}else {
		%>
			쿠키 값이 없습니다.
		<%
		}
		%>
	</body>
</html>