<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 및 Servlet 연동</title>
	</head>
	<body>
		<a href="testJSP.jsp">testJSP로 이동</a><br>
		<a href="../apple">testServlet으로 이동</a><br>
		<a href="../orange">testServlet2로 이동</a>
		<!-- URL 설정을 /로 시작했기 때문에 최상위에서 이동해야 한다. /apple = 최상위에서 접근 할 수 있는 apple로 설정한 것 -->
		<!-- 웹에서 이 파일의 위치가 있는 디렉토리 기준 경로가 http://localhost:8080/FirstJSPWeb/servlet/testServlet.jsp 이기 때문에
			../를 쓰면  최상위인 FirstJSPWeb으로 이동하게 되고 그 후에 apple와 orange로 이동할 수 있게 된다.
			최상위에서 서블릿으로 이동해야 경로가 보이지 않아서 보안성이 조금 높아진다.
		 -->
	</body>
</html>