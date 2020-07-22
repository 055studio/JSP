<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>세션로그인</h1>

		<form action="sessionLoginPro2.jsp" method="post">
			<div class="form-group">
				ID :
				<input class="form-control" type="text" name="id">
				<br>
			</div>
			<div class="form-group">
				PASSWORD :
				<input class="form-control" type="password" name="pwd">
				<br>
			</div>
			<input class="btn btn-primary" type="submit" value="확인">
			<input class="btn btn-primary" type="reset" value="다시 작성">
		</form>
	</div>

</body>
</html>