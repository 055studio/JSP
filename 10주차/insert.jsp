<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd = "1111";

	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con = DriverManager.getConnection(url, user, pwd);

	String sql = "INSERT INTO BOARD VALUES(?,?,?,?,?)";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, request.getParameter("id"));
	pst.setString(2, request.getParameter("subject"));
	pst.setString(3, request.getParameter("content"));
	pst.setString(4, request.getParameter("writer"));
	pst.setString(5, request.getParameter("regdate"));


	int i = pst.executeUpdate();
	pst.close();
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
