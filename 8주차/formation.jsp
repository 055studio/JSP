<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학생 정보 입력</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목 입력 폼</h2>
	<hr>
	<form action="formationEL.jsp" method="post">
		학번 : <input type="text" name="id"><br>
		이름 : <input type="text" name="name"><br>
		학년 : <input type="radio" name="grade" value="1학년" checked/>1학년
		      <input type="radio" name="grade" value="2학년">2학년<br>
		선택과목 : <select name="subject">
							<option value="">과목 선택</option>
							<option value="JSP">JSP</option>
							<option value="클라우드">클라우드</option>
							<option value="모바일앱">모바일앱</option>
							<option value="시스템">시스템<ption>
							<option value="자료구조">자료구조</option>
						</select><br>
		<input type="submit" name="id" value="확인"><br>
	</form>
</body>
</html>
