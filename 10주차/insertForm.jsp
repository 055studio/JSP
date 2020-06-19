<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사용자 입력 폼</h1>
	<form action="insertPro.jsp" method="post">
		ID : <input type="text" name="id"><br>
		SUBJECT : <input type="text" name="subject"><br>
		CONTENT : <input type="text" name="content"><br>
		WRITER : <input type="text" name="writer"><br>
		REGDATE : <input type="text" name="regdate"><br>
		<input type="submit" value="입력완료">
		<input type="reset" name="다시 작성">
	</form>
</body>
</html>
