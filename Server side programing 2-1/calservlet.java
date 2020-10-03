package cs.dit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		String cal = request.getParameter("cal");
		
		int result = calculate(val1, val2, cal);

		PrintWriter out = response.getWriter();

		out.print("<!DOCTYPE html>");

		out.print("<html>");

		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("<title>계산 결과</title>");
		out.print("</head>");

		out.print("<body>");
		out.print("계산 결과:" + result);
		out.print("</body>");

		out.print("</html>");
		
		

	}
	
	public int calculate(int val1, int val2, String cal) {
		
		int calResult = 0;
		
		if(cal.equals("+")) {
			calResult = val1 + val2;
		}else if(cal.equals("-")) {
			calResult = val1 - val2;
		}else if(cal.equals("X")) {
			calResult = val1 * val2;
		}else if(cal.equals("/")) {
			calResult = val1 / val2;
		}
		
		return calResult;
	}

}
