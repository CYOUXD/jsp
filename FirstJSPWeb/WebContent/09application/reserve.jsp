<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 4 -->
    <%
    //인증 처리 여부 확인
	if(session.getAttribute("auth_ok") == null) {
		response.sendRedirect("auth.jsp");
	}
    
    //이미 예약 현황이 있다면 예약 좌석을 disabled
	List<String> list = new ArrayList<>();
	if(application.getAttribute("seats") != null) {
		list = (List<String>)application.getAttribute("seats");	
	}
    
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>reserve.jsp</title>
	</head>
	<body>
		<div align="center">
			<h2>콘서트 예약</h2>
			<h4>예약할 좌석을 선택하세요</h4>
			<hr>
			<h4>좌석 배치도</h4>
			<form action="reserve_ok.jsp" name="form">
				<%
				for(char a='A';a<='Z';a++) {
					%>
					<span style="padding-left:10px;"><%=a %></span>
					<%
				}
				%>
				<br>
				<%
				for(int i=1;i<=6;i++) {

					%>
					<span><%=i %></span>
					<%
					for(char j='A';j<='Z';j++){
						%>
						<%
						if(list.contains(j+"-"+i)) {//예약 내역이 있을 때 
						%>
							<input type="checkbox" name="seats" value="<%=j %>-<%=i %>" checked="checked" disabled="disabled" onclick='getCheckboxValue(event)'>
						<%
						}else { //예약 내역이 없을 때
						%>					
							<input type="checkbox" name="seats" value="<%=j %>-<%=i %>" onclick='getCheckboxValue(event)'>
						<%
						}
					}
					%>
					<br>
					<%
					if(i==3){
						%>
						<br>
						<%
					}
				}
				%>
				<br>
				<input type="button" value="예약" id="btn" onClick='btnClick()'>
				<input type="reset" value="취소">
			</form>
		</div>
		<script>			
			let btn = document.getElementById("btn");
			function getCheckboxValue(event)  {
			  if(event.target.checked)  {
			    btn.setAttribute("type", "submit");
			  }else {				
			    return false;
			  }
			}
			function btnClick() {
				let dv = event.currentTarget;
				if(dv.getAttribute("type") == "button") {
					alert("좌석을 선택하세요");
				}else {
					return false;
				}
			}
		</script>
	</body>
</html>