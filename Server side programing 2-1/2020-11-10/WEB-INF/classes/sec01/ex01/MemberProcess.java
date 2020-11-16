package sec01.ex01;

import java.io.IOException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberProcess
 */
/* @WebServlet("*.do") */
public class MemberProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO memberDAO;
	
	public void init() throws ServletException {
		memberDAO =new MemberDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		request.setCharacterEncoding("utf-8");
		//System.out.println("uri =" +uri);  //
		String command = uri.substring(uri.lastIndexOf("/")+ 1, uri.lastIndexOf(".do"));

		if(command !=null && command.trim().equals("insert")) {
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			
			MemberDTO dto = new MemberDTO();
			dto.setId(id);
			dto.setPwd(pwd);
			dto.setName(name);
			dto.setEmail(email);
			
			MemberDAO dao= new MemberDAO();
					
			boolean check =dao.insertMember(dto);

			if(check) {
				response.sendRedirect("sucess.html");
			}else {
				response.sendRedirect("fail.html");
			}
			
		}else if(command.trim().equals("update")) {
			
		}
		
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


}
