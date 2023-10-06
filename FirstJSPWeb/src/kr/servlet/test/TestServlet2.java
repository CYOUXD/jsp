package kr.servlet.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/TestServlet2")
public class TestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("web.xml을 이용한 URL 맵핑 처리"); //이걸 사용하려면 어노테이션 지워야 함
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
