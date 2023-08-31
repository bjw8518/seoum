<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="Kodinger">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>비밀번호 찾기</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/sw_login.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="./resources/js/findpw.js?var=123" charset="UTF-8"></script>
</head>

<body class="my-login-page">

	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand" style="box-shadow: none;"></div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">아이디 찾기</h4>
							<form action="findid.do" method="POST" class="" novalidate="">
								<div class="mb-3 row">
									<div class="">
										<input type="text" class="form-control" id="user_nm"
											name="mem_name" placeholder="이름(기관명)"> 
									</div>
								</div>
								<div class="mb-3 row">

									<div class="input-group mb-1 col">
										<input type="text" class="form-control " id="user_email"
											placeholder="이메일"><span id="middle">@</span><input
											type="text" class="form-control " id="domain-txt" disabled
											value="naver.com"> <select class="form-select"
											id="domain-list">
											<option value="1">직접입력</option>
											<option value="naver.com" selected>naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="korea.com">korea.com</option>
											<option value="gmail.com">gmail.com</option>
										</select> <input type="hidden" id="totalemail" name="mem_email"
											value="">
										<div id="validationServerUsernameFeedback"
											class="invalid-feedback ">존재하지 않는 이메일 주소. 다시 확인 해주세요.</div>

									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" id="find_pw"
										class="btn btn-primary btn-block">아이디 찾기</button>
								</div>
								<div class="mt-4 text-center">
									다른 도움이 필요하세요? <a href="join.do">회원가입</a> / <a href="findpw.do"
											class="float-right">비밀번호 찾기 </a>
									
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
		<script type="text/javascript"  charset="UTF-8">
		$(document).ready(function() {
			const urlParams = new URLSearchParams(window.location.search);
			const msg = urlParams.get('pw');
			if (msg != null && msg != "") {
				alert(msg);
			}
			;
		})
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/sw_login.js"></script>
</body>
</html>
