<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";

	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con = DriverManager.getConnection(url, user, passwd);
	String sql = "UPDATE BOARD SET SUBJECT=?, CONTENT=?, WRITER=?, REGDATE=? WHERE ID=?";

	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("subject"));
	pstmt.setString(2, request.getParameter("content"));
	pstmt.setString(3, request.getParameter("writer"));
	pstmt.setString(4, request.getParameter("regdate"));
	pstmt.setString(5, request.getParameter("id"));

	int i = pstmt.executeUpdate();

	pstmt.close();
	con.close();
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
