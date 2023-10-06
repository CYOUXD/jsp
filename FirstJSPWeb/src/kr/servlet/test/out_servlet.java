package kr.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/out_servlet")
public class out_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public out_servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 서블릿에서 out 객체를 사용하는 방법
		 * 화면으로 자바스크립트 형태를 써서 보낼 때 사용함.
		 */
		//화면으로 응답 보낼 문서에 대한 정보 기술(HTTP헤더 정보)
		response.setContentType("text/html; charset=UTF-8"); //해당 형식으로 보내겠다는 의미
		
		PrintWriter out = response.getWriter();
		
		out.println("<p>안녕</p>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
