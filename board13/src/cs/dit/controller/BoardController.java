package cs.dit.controller;


import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.BoardDAO;
import cs.dit.dto.BoardDTO;


@WebServlet("*.do")
public class BoardController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      BoardDAO dao = new BoardDAO();
      BoardDTO dto = new BoardDTO();
      String viewPage =null;
      
      String uri = request.getRequestURI();    
      String com= uri.substring(uri.lastIndexOf("/")+ 1, uri.lastIndexOf(".do")); //command :insert
      
      if(com !=null && com.trim().equals("list")) {
         List<BoardDTO> dtos = dao.list();
         request.setAttribute("dtos", dtos);
         viewPage = "/WEB-INF/bview/bList.jsp";
      }else if(com !=null && com.trim().equals("insertForm")) {
         viewPage = "/WEB-INF/bview/bInsertForm.jsp";
         
      }else if(com !=null && com.trim().equals("insert")) {
         dto.setSubject(request.getParameter("subject"));
         dto.setContent(request.getParameter("content"));
         dto.setWriter(request.getParameter("writer"));
         dao.insert(dto);
         viewPage ="list.do";
      }else if(com !=null && com.trim().equals("view")) {
         String bcode = request.getParameter("bcode");
         dto = dao.view(bcode);
         
         request.setAttribute("dto", dto);
         viewPage = "/WEB-INF/bview/bView.jsp";
      }else if(com !=null && com.trim().equals("view2")) {
          String bcode = request.getParameter("bcode");
          dto = dao.view(bcode);
          
          request.setAttribute("dto", dto);
          viewPage = "/WEB-INF/bview/binfo.jsp";
       }
      else if(com !=null && com.trim().equals("update")){
        dto.setBcode(request.getParameter("bcode"));
         dto.setSubject(request.getParameter("subject"));
         dto.setContent(request.getParameter("content"));
         dto.setWriter(request.getParameter("writer"));
         dto.setRegDate(Timestamp.valueOf(request.getParameter("regDate")));
         dao.update(dto);
         viewPage = "list.do";
      }
      else if(com !=null && com.trim().equals("delete")){
         String bcode = request.getParameter("bcode");
         dao.delete(bcode);
         viewPage = "list.do";
      }else if(com !=null && com.trim().equals("index")) {
         viewPage = "/WEB-INF/bview/index.html";
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