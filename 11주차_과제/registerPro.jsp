<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");

//1. Context객체 생성
Context initCtx = new InitialContext();

//2. Data Source 생성
DataSource ds = (DataSource) initCtx.lookup("java:comp/env/jdbc/PGW");

//3. CP에서 Connection 가져오기
Connection conn = ds.getConnection();

PreparedStatement pstmt = conn.prepareStatement("INSERT INTO USERINFO VALUES(?, ?, ?, ?, ?, 'USER')");
pstmt.setString(1, request.getParameter("id"));
pstmt.setString(2, request.getParameter("pwd"));
pstmt.setString(3, request.getParameter("name"));
pstmt.setString(4, request.getParameter("email"));
pstmt.setString(5, request.getParameter("address"));

// 5.SQL 실행
pstmt.executeUpdate();

// 6. 객체 해제
pstmt.close();
conn.close();

response.sendRedirect("register.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>