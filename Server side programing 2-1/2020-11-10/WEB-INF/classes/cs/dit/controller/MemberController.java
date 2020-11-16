package cs.dit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.command.MCommand;
import cs.dit.command.MDeleteCommand;
import cs.dit.command.MInsertCommand;
import cs.dit.command.MListCommand;
import cs.dit.command.MUpdateCommand;
import cs.dit.command.MViewCommand;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String viewPage =null;
		MCommand command = null;
		
		String uri = request.getRequestURI(); 	//uri :/member-mvc/list.do
		String com= uri.substring(uri.lastIndexOf("/")+ 1, uri.lastIndexOf(".do")); //command :insert
		
		if(com !=null && com.trim().equals("list")) {
			command = new MListCommand();
			command.execute(request, response);
			viewPage = "mList.jsp";
		}else if(com !=null && com.trim().equals("insertForm")) {
			viewPage = "mInsertForm.jsp";
			
		}else if(com !=null && com.trim().equals("insert")) {
			command = new MInsertCommand();
			command.execute(request, response);
			viewPage ="list.do";
		}else if(com !=null && com.trim().equals("view")) {
			command = new MViewCommand();
			command.execute(request, response);
			viewPage = "mView.jsp";
		}
		else if(com !=null && com.trim().equals("update")){
			command = new MUpdateCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}
		else if(com !=null && com.trim().equals("delete")){
			command = new MDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

}
