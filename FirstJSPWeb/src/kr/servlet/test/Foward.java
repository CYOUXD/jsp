package kr.servlet.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forward")
public class Foward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Foward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		
		//request에 1회성으로 사용하기 위한 값을 강제 저장할 수 있음(request = 다음 페이지까지 정보가 유효함)
		//setAttribute("변수명", 값);
		request.setAttribute("name", "홍길동"); //1. 강제 저장(setAttribute())
		//이전에 넘긴 id 값을 request로 받아왔기 때문에 이전 페이지에서 넘어온 request는 여기서 수명이 다한다. 
		//그러므로 여기서 setAttribute를 해도 수명이 다했기 때문에 다음 페이지로 넘어갈 수 없다.
		
		//response로 데이터를 전달
		//response.sendRedirect("forward_ex04.jsp"); 
		//request 값을 넘길 수 없으므로 redirect로 바로 다른 페이지로 넘어가면 안되고 데이터도 넘기고 페이지도 이동 할 수 있도록 하단의 처리를 해준다.
		
		//2. 포워드 처리
		RequestDispatcher dp = request.getRequestDispatcher("11actiontag/forward_ex04.jsp");
		dp.forward(request, response); //자바에서 forward 하는 방법
		//= request로 들어 온 값을 response로 전달함
	}

}
