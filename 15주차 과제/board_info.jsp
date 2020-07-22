<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="board.*"%>

<%
	request.setCharacterEncoding("utf-8");

String boardNum = request.getParameter("boardNum");

board_DAO bDao = new board_DAO();

String[] boardInfo;
boardInfo = bDao.board_Search(boardNum);

String idAtt = (String) session.getAttribute("id");

session.setAttribute("boardId", boardNum);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<style type="text/css">
.container {
	width: 2000px;
	overflow: auto;
	margin-bottom: 100px;
	margin-top: 100px;
	border: 1px solid white;
	box-shadow: 0 0 25px black;
	padding-bottom: 25px;
	background: white;
}
</style>

</head>
<body>

	<div class="container text-center">

		<table class="table">
			<thead>
				<tr>
					<th class="text-center">
						제목 :
						<%=boardInfo[1]%></th>
				</tr>
				<tr>
					<th class="text-center">
						작성자 :
						<%=boardInfo[3]%></th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>
						<%=boardInfo[2]%></td>
				</tr>

				<tr>
					<td>

						<%
							if (idAtt.equals(boardInfo[3])) {
						%>
						<input class="btn btn-outline-success mx-1" type="submit" value="수정" onClick="location.href='updatePost.jsp?id=<%=boardNum%>&subject=<%=boardInfo[1]%>&content=<%=boardInfo[2]%>&writer=<%=boardInfo[3]%>'">
						<input class="btn btn-outline-success mx-1" type="submit" value="삭제" onClick="location.href='deletePostPro.jsp?id=<%=boardNum%>'">
						<%
							} else {
						%>
						<a class="btn btn-outline-warning mx-1" onclick="alert('권한이 없습니다.');" href="#">게시글 수정</a>
						<a class="btn btn-outline-warning mx-1" onclick="alert('권한이 없습니다.');" href="#">게시글 삭제</a>
						<%
							}
						%>

					</td>
				</tr>

				<tr>
					<td class="footer"><jsp:include page="board_comment.jsp"></jsp:include></td>
				</tr>

			</tbody>

		</table>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>