<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>

<%@ page import="board.*"%>

<%
	request.setCharacterEncoding("utf-8");

board_DAO bDao = new board_DAO();
board_DTO bDto = new board_DTO();

String subject = request.getParameter("subject");
String content = request.getParameter("content");
String writer = request.getParameter("writer");
String division = "후기";

bDto.setBoardSubject(subject);
bDto.setBoardContent(content);
bDto.setBoardWrite(writer);
bDto.setBoardDivision(division);

bDao.board_insert(bDto);

%>

<script>
	alert("게시글 작성완료.");
	location.href = "board_main.jsp";
</script>