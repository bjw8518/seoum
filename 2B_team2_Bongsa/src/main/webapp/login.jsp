<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="author" content="Kodinger">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>로그인</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/sw_login.css">
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">로그인</h4>
							<form action="login.do" method="POST" class="my-login-validation" novalidate="">
								<div class="form-group">
									<label for="user_id">아이디</label> <input id="user_id" type="text" class="form-control" name="mem_id" value="" required autofocus>
									<!-- <div class="invalid-feedback">
										Email is invalid
									</div> -->
								</div>
								<div class="form-group">
									<label for="password">비밀번호 </label> <input id="password" type="password" class="form-control" name="mem_pw" required data-eye>
									<!-- 								    <div class="invalid-feedback">
								    	Password is required
							    	</div> -->
							    	<a href="findpw.do" class="float-right"> 비밀번호 찾기 </a>
								</div>
								<!-- <div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">
										<label for="remember" class="custom-control-label">Remember Me</label>
									</div>
								</div> -->
								
								<div class="form-group pt-3">
									<button type="submit" class="btn btn-primary btn-block">로그인</button>
								</div>
								<div class="mt-4 text-center">
									처음이시라면? <a href="join.do">회원가입</a>
								</div>
							</form>
						</div>
					</div>
					<!-- 					<div class="footer">
						Copyright &copy; 2017 &mdash; Your Company 
					</div> -->
				</div>
			</div>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/sw_login.js"></script>
</body>
</html>
