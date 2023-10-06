<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 5 -->
    <%
    //1. 리스트 2개를 생성(좌석을 저장한 리스트(원본), 사본을 저장할 리스트)
    List<String> list = new ArrayList<>();
    List<String> temp = new ArrayList<>();
    
    //2. app에 이미 예약 현황이 있다면 원본 리스트에 저장
    if(application.getAttribute("seats") != null){
    	list = (List<String>)application.getAttribute("seats");
    };
    
    //3. reserve.jsp에서 넘어온 값을 확인
    String[] arr = request.getParameterValues("seats");
    
    //4. 3번에서 넘어온 값을 list에 포함되어 있는지 확인 
    //		-> 포함되지 않은 경우의 값을 사본에 저장
    //		단, 중복된 경우 사본에 값을 추가하는 것을 중지!
    for(String s : arr){
    	if(list.contains(s)) { //이미 예약된 좌석
			break;    		
    	}else { //예약되지 않은 경우
    		temp.add(s);
    	}
    }
    
    //5. 3번에서 넘어온 값과 4번에서 만들어진 사본의 값의 길이가 같다면 
	if(arr.length == temp.size()) {
		list.addAll(temp);
	}
    
    //6. application에 "seats"에 대한 값을 저장
    application.setAttribute("seats", list);
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div align="center">
			<h2>예약 신청 결과</h2>
			<p>
				<b>선택한 좌석</b>
				<br>
				<%
				for(String s : arr){ %>
					[<%=s %>]	
				<%
				}
				%>
				<b>예약신청 결과</b>
				<!-- 성공/실패 출력 -->
				<%=arr.length == temp.size() ? "성공":"실패" %>
				
				<br>
				<!-- 실패 이유 출력 -->
				<%if(arr.length != temp.size()) { %>
					이미 예약된 좌석이 있습니다.
				<%
				}
				%>
			</p>
			
			<a href="reserve.jsp">다시 예약하기</a>
		</div>
	</body>
</html>