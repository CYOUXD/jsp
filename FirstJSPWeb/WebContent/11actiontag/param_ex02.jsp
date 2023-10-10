<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 8 -->
    <%
    request.setCharacterEncoding("utf-8");
    %>
    <jsp:forward page="param_ex03.jsp">
		<jsp:param value="똘똘이 스머프" name="nick" />
	    <!-- 이 값을 넘길때 페이지 인코딩만 있고 태그 인코딩이 없어서 ??? ???로 뜬다. --> 
	</jsp:forward>
	<!-- param 태그는 forward 혹은 include 시에 파라미터 값을 추가해서 넘길 때 사용 -->