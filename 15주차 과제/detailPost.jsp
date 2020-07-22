<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
String id = request.getParameter("boardId");
String subject = request.getParameter("subject");
String writer = request.getParameter("writer");
String content = request.getParameter("content");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<style type="text/css">
body {
	background: #6593e8;
}

#outer {
	width: 1200px;
	overflow: auto;
	margin-bottom: 100px;
	margin-top: 100px;
	border: 1px solid white;
	box-shadow: 0 0 25px black;
	padding-bottom: 25px;
	background: white;
}
</style>

<title>Insert title here</title>

</head>
<body>

	<%
		if (session.getAttribute("loginStatus") == "true") {
		String targetPage = "/topbar/topbar2.jsp";
	%>
	<header id="top">
		<jsp:include page="<%=targetPage%>"></jsp:include>
	</header>
	<%
		} else {
		String targetPage = "/topbar/topBar.jsp";
	%>
	<header id="top">
		<jsp:include page="<%=targetPage%>"></jsp:include>
	</header>
	<%
		}
	%>

	<div id="outer" class="container text-center">

		<jsp:include page="board_info.jsp"></jsp:include>

	</div>

	<!-- Optional JavaScript -->

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>