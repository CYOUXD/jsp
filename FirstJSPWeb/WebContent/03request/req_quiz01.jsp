<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_quiz</title>
	</head>
	<body>
		<%--
			1. form 태그를 이용하여 post 형식으로 이름, 키와 몸무게를 입력 받음
			2. req_quiz_result.jsp로 데이터를 전송
			3. 해당 페이지에서는 넘어간 값을 BMI 지수로 처리
			4. BMI 공식 kg/(cm/100*cm/100)
				-> String 형식으로 넘어가기 때문에 파싱 처리해야 함.
				req_quiz_result.jsp에서는 이름, 키, 몸무게 BMI 지수를 출력
				if를 통해서 BMI 지수가 25이상이면 과체중, 18이하라면 저체중, 나머지는 정상으로 출력
		 --%>
		 <form action="req_quiz_result.jsp" method="post">
		 	이름 : <input type="text" name="name" size="10"><br>
		 	키 : <input type="text" name="height" size="10"><br>
		 	몸무게 : <input type="text" name="weight" size="10"><br>
		 	<input type="submit" value="확인">
		 </form>
	</body>
</html>