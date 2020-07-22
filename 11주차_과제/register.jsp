<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>회원가입</title>

<style type="text/css">
</style>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>



<body class="text-center">

	

		<header id="top">
			<jsp:include page="../final/topBar.jsp"></jsp:include>
		</header>
		
		<form action="registerPro.jsp" method="post">

		<div class="container my-5">
			<div class="py-5 mt-5">
				<h2>회원가입</h2>
				<p class="lead">가입 정보를 기입해 주세요</p>
			</div>

			<div class="row d-flex justify-content-center">
				<div class="col-md-8 order-md-1">
					<form class="needs-validation" novalidate="">
						<div class="mb-3">
							<label for="firstName">아이디</label>
							<input type="text" class="form-control" id="firstName" placeholder="" value="" required="" name="id">
							<div class="invalid-feedback">Valid first name is required.</div>
						</div>
						<div class="mb-3">
							<label for="lastName">비밀번호</label>
							<input type="text" class="form-control" id="lastName" placeholder="" value="" required="" name="pwd">
							<div class="invalid-feedback">Valid last name is required.</div>
						</div>

						<div class="mb-3">
							<label for="username">이름</label>
							<div class="input-group">
								<input type="text" class="form-control" id="username" placeholder="Username" required="" name="name">
								<div class="invalid-feedback" style="width: 100%;">Your username is required.</div>
							</div>
						</div>

						<div class="mb-3">
							<label for="email">이메일</label>
							<input type="email" class="form-control" id="email" placeholder="you@example.com" name="email">
							<div class="invalid-feedback">Please enter a valid email address for shipping updates.</div>
						</div>

						<div class="mb-3">
							<label for="address">주소</label>
							<input type="text" class="form-control" id="address" placeholder="1234 Main St" required="" name="address">
							<div class="invalid-feedback">Please enter your shipping address.</div>
						</div>

						<hr class="mb-4">
						<input class="btn btn-outline-dark btn-lg btn-block" type="submit" value="회원가입" />
					</form>
				</div>
			</div>

			<footer class="my-5 pt-5"> </footer>
		</div>
	</form>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>