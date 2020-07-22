<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="board.*"%>
<%@page import="java.util.ArrayList"%>

<%
	int numOfPages = 5;
int numOfRecords = 10;

board_DTO dto = new board_DTO();
board_DAO dao = new board_DAO();

String page_ = request.getParameter("p");
int p = 1;

if (page_ != null && !page_.equals(""))
	p = Integer.parseInt(page_);

ArrayList<board_DTO> dtos = dao.getProBoardList("후기", p, numOfRecords);

int count = dao.getProCount("후기");

int startNum = p - ((p - 1) % numOfPages);
int lastNum = (int) Math.ceil((double) count / numOfRecords);
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
</style>

</head>
<body>

	<form action=""></form>

	<div class="container text-center">

		<br>
		<h2 class="font-weight-bold">상품 후기 게시판</h2>
		<!-------------------------------------------게시판 테이블----------------------------- -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th>게시글 번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>선택</th>
				</tr>
			</thead>

			<!-------------------------------------------게시판 테이블 값----------------------------- -->
			<tbody>


				<%
					for (int i = 0; i < dtos.size(); i++) {
					dto = dtos.get(i);
				%>

				<tr onClick="location.href='board_info.jsp?boardNum=<%=dto.getBoardNum()%>'">
					<a>
						<td><%=dto.getBoardNum()%></td>
						<td><%=dto.getBoardSubject()%></td>
						<td><%=dto.getBoardWrite()%></td>
						<td><%=dto.getBoardRegDate()%></td>
						<td>
							<input type="checkbox" name="check" value="">
						</td>
					</a>
				</tr>
				<%
					}
				%>



			</tbody>
			<!-------------------------------------------/게시판 테이블 값----------------------------- -->
		</table>

		<!-------------------------------------------/게시판 테이블----------------------------- -->


		<!-------------------------------------------게시판 페이지 이동----------------------------- -->
		<div class="text-center position-relative">
		
			<div>
				<span><%=p %></span>&nbsp;&nbsp;/ <%=lastNum %> pages
			</div>
		
			<div class="d-flex justify-content-start d-inline float-left">
				<ul class="pagination">

					<%
						if (startNum > 1) {
					%>
					<li class="page-item">
						<a class="page-link" href="?p=<%=startNum - 1%>">Prev</a>
					</li>
					<%
						} else {
					%>
					<li class="page-item">
						<a class="page-link" style="color: gray" onclick="alert('이전 페이지가 없습니다')" href="#">Prev</a>
					</li>
					<%
						}

					for (int i = 0; i < numOfPages; i++) {

						if (p == (startNum + i))
							pageContext.setAttribute("colorValue", "orange");
						else
							pageContext.setAttribute("colorValue", "gray");

						if (startNum + i <= lastNum) {
					%>
					<li class="page-item">
						<a class="page-link" style="color:${colorValue}" href="?p=<%=startNum+i%>"><%=startNum + i%></a>
					</li>
					<%
						}

					}
					if (startNum + numOfPages <= lastNum) {
					%>
					<li class="page-item">
						<a class="page-link" href="?p=<%=startNum + 5%>">Next</a>
					</li>
					<%
						} else {
					%>
					<li class="page-item">
						<a class="page-link" style="color: gray" onclick="alert('다음 페이지가 없습니다')" href="#">Next</a>
					</li>
					<%
						}
					%>

				</ul>
			</div>
			<!-------------------------------------------/게시판 페이지 이동----------------------------- -->
			<div class="d-flex justify-content-end d-inline float-right">
				<!-------------------------------------------게시글 작성----------------------------- -->
				<%
					if (session.getAttribute("loginStatus") == "true") {
				%>
				<a class="btn btn-outline-dark mx-1" href="insertPost.jsp">게시글 등록</a>
				<%
					} else {
				%>
				<a class="btn btn-outline-dark mx-1" onclick="alert('권한이 없습니다. 회원이라면 로그인 해 주십시오.');" href="../LOGIN/main.jsp">게시글 등록</a>
				<%
					}
				%>

			</div>

		</div>

	</div>




</body>
</html>