package cs.dit.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.MemberDAO;
import cs.dit.dto.MemberDTO;

public class MInsertCommand implements MCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO dto = new MemberDTO();	//DB에 데이터를 저장하기 위해 DTO 객체 생성
		
		dto.setId(request.getParameter("id"));		//DTO에 폼에서 전달된 데이터를 저장
		dto.setPwd(request.getParameter("pwd"));
		dto.setName(request.getParameter("name"));
		dto.setEmail(request.getParameter("email"));
		
		MemberDAO dao = new MemberDAO();	
		dao.insert(dto);			//DB에 DTO객체를 저장하기 위한 메소드 insert 호출
	}
}

