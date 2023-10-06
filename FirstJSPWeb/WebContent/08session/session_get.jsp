<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 2 -->
    <% //지역 변수라서 실행할 때 마다 다시 불러옴
/*
    세션에 저장된 값을 브라우저가 종료되기 전까지 도는 기본 시간 30분까지 어느 페이지에서나
    사용이 가능함.
  getAttribute("세션이름")메서드로 불러옴
*/
	String id = (String)session.getAttribute("id"); 
    //세션에 담겨서 전달되기 때문에 오브젝트로 반환됨. 세션에 넣을 때 제한 없이 집어 넣을 수 있다.
	//session.getAttribute()의 타입이 오브젝트이기 때문에 스트링으로 캐스팅해야 함.
    String name = (String)session.getAttribute("name");
    
    //세션 유지 시간 확인
    int time = session.getMaxInactiveInterval();
    
    //세션 유지시간 변경
    session.setMaxInactiveInterval(3600);
    int time2 = session.getMaxInactiveInterval();
    
    //특정 세션 삭제
    session.removeAttribute("id");
    
    //모든 세션 삭제
    session.invalidate(); //세션을 삭제해도 시간은 다른 변수에 넘겼기 때문에 보여진다.
    
    
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_get.jsp</title>
	</head>
	<body>
		아이디 : <%=id %><br>
		이름 : <%=name %><br>
		유지시간(처음) : <%=time %><br>
		유지시간(변경) : <%=time2 %>
		
	</body>
</html>