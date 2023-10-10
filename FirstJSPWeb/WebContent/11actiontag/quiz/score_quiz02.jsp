<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name = request.getParameter("name");
    int ko = Integer.parseInt(request.getParameter("korean"));
    int en = Integer.parseInt(request.getParameter("eng"));
    int ma = Integer.parseInt(request.getParameter("math"));
    
    double avg = (ko+en+ma)/3.0;
    String goPage = ""; 
    if(avg>=60) {
    	//URI 절대값 - 프로젝트 부터 시작하는 주소. 웹 루트 부터 기본 값을 가짐.
    	goPage = "/11actiontag/quiz/score_quiz03.jsp";
    	//goPage = "score_quiz03.jsp";
    }else {
    	goPage = "score_quiz04.jsp";
    }
    %>
  	<!-- forward로 넘기는거라 name은 안넘겨도 다음 페이지에서 request로 받아 올 수 있다. -->
    <jsp:forward page="<%=goPage %>">
    	<jsp:param value="<%=name %>" name="name"/>
    	<jsp:param value="<%=avg %>" name="avg"/>
    </jsp:forward>