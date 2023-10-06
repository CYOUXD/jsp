<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	double h = Double.parseDouble(request.getParameter("height"));
	double w = Double.parseDouble(request.getParameter("weight"));

	double bmi = w/((h/100)*(h/100));
	bmi = (int)(bmi*100)/100.0;
 %>
<%--	선생님 ver
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	double h = Double.parseDouble(request.getParameter("kie"));
	double w = Double.parseDouble(request.getParameter("weight"));
	
	// BMI 공식
	double bmi = w / (h/100 * h/100);
	
	//소수점 2자리까지 출력
	bmi = (int)(bmi * 100) / 100.0;
	
--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BMI 결과</title>
	</head>
	<body>
		이름 : <%=name %><br>
		키 : <%=h %><br>
		몸무게 : <%=w %><br>
		bmi : <%=bmi %><br>
		<%		
		if(bmi >= 25) {
		%>
			과체중 입니다.
		<%
		}else if(bmi<=18) {
		%>
			저체중 입니다.
		<%
		}else {
		%>
			정상 입니다.
		<%
		}
		%>
	</body>
</html>