<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="board.*"%>

<%
	request.setCharacterEncoding("utf-8");

board_DAO bDao = new board_DAO();
board_DTO bDto = new board_DTO();

String id = (String) session.getAttribute("boardId");

bDao.board_delete(id);
%>
<script>
	alert("삭제 완료");
	location.href = "../PROPOST/board_main.jsp";
</script>
