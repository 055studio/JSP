<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학생 정보</title>
</head>
<body>
	<h2>학생 정보</h2>
	<hr>
	<jsp:useBean id="Member" class="ch10.Member"></jsp:useBean>
	<jsp:setProperty property="*" name="Member"/>

	<table border="1">
	<tr>
	<td>학번 </td>
	<td>${pageScope.Member.id }</td>
	</tr>
	<tr>
	<td>이름 </td>
	<td>${pageScope.Member.name }</td>
	 </tr>
	<tr>
	<td>학년 </td>
	<td>${pageScope.Member.grade }</td>
	 </tr>
	 <tr>
	<td>선택과목 </td>
	<td>${pageScope.Member.subject }</td>
	 </tr>
	</table>
</body>
</html>
