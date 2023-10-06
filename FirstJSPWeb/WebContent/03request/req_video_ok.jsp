<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	//Integer sel = Integer.parseInt(num);
	//null 값을 제외하지 않으면 오류가 발생한다. null은 parseInt할 수 없어서 발생하는 오류
	Integer sel = 0;
	if(num != null) sel = Integer.parseInt(num);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_video_ok 결과</title>
	</head>
	<body>
		<%
		if(num == null) {
		%>
			잘못된 접근입니다.
		<%
		}else if(sel == 1){ 	//num을 비교할 때 (num.equals("1"))
		%>
			<div align="center">
				<h2>크라임씬 동영상</h2>
				<p>첫번째, 캠핑장 살인사건</p>
				<hr>
				<iframe width="1271" height="715" src="https://www.youtube.com/embed/NJo9ShudkzU" 
				title="[크라임씬3][7-1] 캠핑장 살인 사건｜평화로운 캠핑장에서 일어난 의문의 살인사건! (CRIME SCENE 3)" 
				frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
		<%
		}else if(sel == 2) {
		%>
			<div align="center">
				<h2>크라임씬 동영상</h2>
				<p>두번째, 섬마을 살인사건</p>
				<hr>
				<iframe width="1271" height="715" src="https://www.youtube.com/embed/N5WF0K9xkJE" 
				title="(60분) 팔뚝섬의 전설로 내려오던 당나무의 저주? 그물에 걸린 팔이 잘린 사체😨 섬마을 살인사건 | 크라임씬3 | JTBC 170707 방송" 
				frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
		<%
		}
		%>
	</body>
</html>