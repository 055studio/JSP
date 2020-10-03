package cs.dit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);

		if (session != null && session.getAttribute("ID") != null) {

			session.invalidate();

			out.print("<!DOCTYPE html>");

			out.print("<html>");

			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("<title>로그아웃 결과</title>");
			out.print("</head>");

			out.print("<body>");
			out.print("<h3>로그아웃되었습니다.</h3>");
			out.print("</body>");

			out.print("</html>");

		} else {
			
			out.print("<!DOCTYPE html>");

			out.print("<html>");

			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("<title>로그아웃 결과</title>");
			out.print("</head>");

			out.print("<body>");
			out.println("<h3>현재 로그인 상태가 아닙니다.</h3>");
			out.print("</body>");

			out.print("</html>");

		}

		out.close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		String Id = request.getParameter("ID");
		String Pw = request.getParameter("PW");

		if (login(Id, Pw, request)) {
			
			out.print("<!DOCTYPE html>");

			out.print("<html>");

			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("<title>로그인 결과</title>");
			out.print("</head>");

			out.print("<body>");
			out.print("<h3>로그인 완료하였습니다.</h3>");
			out.print("</body>");

			out.print("</html>");
			
		} else {
			
			out.print("<!DOCTYPE html>");

			out.print("<html>");

			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("<title>로그인 결과</title>");
			out.print("</head>");

			out.print("<body>");
			out.print("<h3>현재 로그인 상태입니다.</h3>");
			out.print("</body>");

			out.print("</html>");

		}

	}

	public boolean login(String id, String pw, HttpServletRequest request) {

		HttpSession session = request.getSession();

		if (session.isNew() || session.getAttribute("ID") == null) {

			session.setAttribute("ID", id);
			session.setAttribute("PW", pw);

			return true;

		} else {

			return false;

		}

	}

}
