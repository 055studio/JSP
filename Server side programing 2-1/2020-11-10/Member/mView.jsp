<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%@ page import = "cs.dit.dao.*, cs.dit.dto.*, java.util.List, java.sql.Date" %>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>게시판</title>
	<link rel="stylesheet" type="text/css" href="css/board.css">
</head>
<body>
<div class="container">
	<h2>상세보기</h2>
	<br/>
	<form action="update.do" method="post">
		<input type="hidden" name="id" value="${dto.id}">
		<table class="table table-striped table-hover">
			<tr>
				<th>id</th><td>${dto.id}</td>
				<th>password</th><td><input type="password" value="${dto.pwd}" name="pwd"></td>
			</tr>
			<tr>
				<th>name</th><td><input type="text" value="${dto.name}" name="name"></td>
				<th>email</th><td><input type="text" value="${dto.email}" name="email"></td>
			</tr>
			<tr>
				<th>joinDate</th><td colspan="3"><input type="text" value="${dto.joinDate}" name="joinDate"></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value ="멤버 수정" >
					<input type="button" value ="멤버 삭제" onclick ="location.href='delete.do?id=${dto.id}'">
					<input type="button" value ="멤버 목록" onclick ="location.href='list.do'">
					<input type="button" value ="멤버 등록" onclick ="location.href='insertForm.do'">
				</td>
			</tr>
		</table><br><br>
	</form>
</div>
</body>
</html>