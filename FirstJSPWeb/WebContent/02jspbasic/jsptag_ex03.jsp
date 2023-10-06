<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//ArrayList<Integer> list = new ArrayList<>();
	//while(list.size() < 6) {
	//	Random rn = new Random();
	//	list.add(rn.nextInt(45)+1);
	//}
	
	//선생님 ver 깃허브에서 가져와서 정리하기
	// 리스트 객체 생성
	List<Integer> list = new ArrayList<>();
	Random ran = new Random();
	while(list.size() < 6){
		int num = ran.nextInt(45)+1;
		if(!list.contains(num)){
			list.add(num);
		}
	}
	Collections.sort(list); //Collections의 정렬 기능
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jsptag_ex03 로또 결과 출력하기</title>
	</head>
	<body>
		<!-- 
		ArrayList를 사용하여 1~45까지 랜덤한 번호를 발생시키고 리스트에 담으세요.
		
		body태그에서 
		이번주 로또번호 [1, 2, 3, 4, 5, 6] 형식으로 출력
		
		중복 및 오름차순 정렬로 결과를 출력하세요.
		 -->
		 <%=list.toString() %>
	</body>
</html>