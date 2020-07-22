<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<style type="text/css">
body {
	height: 100%;
	width: 100%;
}

header, main, footer {
	display: block;
}

header {
	color: white;
	z-index: 20;
}

main {
	height: 500px;
	z-index: 10;
}

#center {
	width: 1200px;
	overflow: auto;
	margin-bottom: 100px;
	margin-top: 100px;
	border: 1px solid white;
	box-shadow: 0 0 5px black;
	padding-bottom: 25px;
	background: white;
}

#bottom {
	bottom: 0;
}

.footer {
	position: fixed;
	width: 100%;
	height: 50px;
	background-color: #96DFD8;
}

*, ::after, ::before {
	box-sizing: border-box;
}
</style>

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

	<div class="container text-center" id="center">
		<jsp:include page="board_center.jsp"></jsp:include>
	</div>

	<footer id="bottom" class="footer text-center mt-3 py-2">
		<jsp:include page="bottom.jsp"></jsp:include>
	</footer>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>