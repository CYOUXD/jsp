<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1 -->
<%--
로그인 정보를 입력하는 JSP. 구성을 Form 태그를 사용
--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 페이지</title>
		<style type="text/css">
			/*style 적용*/
			.wrap {
				width:257px;
				margin:0 auto;
				text-align:center;
			}
			.btn {
				width:60px;
				height:50px;
				background-color:#ff05;
			}
		</style>
		<!-- 
			style에서 일반 태그명을 선택자로 또는 클래스, 아이디를 선택자로 사용
			일반 태그를 사용할 때는 태그명을 그대로 사용.
			class를 선택자로 사용하는 경우에는 "."을 앞에 붙여서 사용
			id를 선택자로 사용하는 경우에는 "#"을 앞에 붙여서 사용
			
			** 클래스와 id의 차이점
			id는 특정 태그를 가리키는 용도로 페이지에 하나만 존재함.
			class는 특정 그룹을 가리키는 용도로 사용. 그룹이기 때문에 단일한 값을 가리키지는 않음.
		 -->
	</head>
	<body>
		<!-- 
		css 사용하는 태표적 방법
		- 태그에 직접 선언해서 사용하는 방법
		- head 태그에 css 선언하고, 아래 태그에 class 또는 id로 해당 속성을 디자인 해 사용
		- 외부 css 파일을 생성한 후에 불러오는 방법(link 태그 사용)
		 -->
		 <div class="wrap">
		 	<h2>리다이렉트 로그인 연습</h2>
		 	<hr>
		 	<form action="res_login_ok.jsp" method="post">
		 		<table border="1">
		 			<tr> <!-- rowspan, colspan -->
		 				<td>
		 					<input type="text" name="id" placeholder="아이디">
		 				</td>
		 				<td rowspan="2">
		 					<input type="submit" value="로그인" class="btn">
		 				</td>
		 			</tr>
		 			<tr>
		 				<td>
		 					<input type="password" name="pw" placeholder="비밀번호">
		 				</td>
		 			</tr>
		 		</table>
		 	</form>
		 </div>
	</body>
</html>