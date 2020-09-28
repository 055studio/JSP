package filter;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("*.do")
public class LoginFilter implements filter {
	
	protected void doFilter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpServletRequest h_request=(HttpServletRequest)request; HttpSession
		h_session = h_request.getSession();
		
		String uri = h_request.getRequestURI();
		
		if(id==null || id.trim().length()==0) {
			HttpServletResponse h_response = (HttpServletResponse)response;
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
