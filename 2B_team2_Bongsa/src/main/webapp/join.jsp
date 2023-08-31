<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>회원가입 임시</title>
<link rel="stylesheet" href="css/myfin.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/sw_login.css">
<script type="text/javascript" src="/resources/js/check.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="./resources/js/joincheck.js?var=123"></script>
<style type="text/css">
.conw_96 {
	position: relative;
	width: 960px;
	margin: 0 auto;
	height: 56px;
}

.f_13 {
	font-size: 13px;
}

.bg-f {
	background: #fff;
}
</style>
</head>
<body class="my-login-page">
	<!-- <header -->
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand" style="box-shadow: none; height: 0;">
						<!-- <img src="resources/images/logo.png" alt="logo"> -->
					</div>
					<div class="card fat">
						<div class="card-body">
							<!-- <div class="col-7 rounded border m-3 mt-5 bg-f align-middle p-3">
								 -->
							<h4 class="card-title">회원가입</h4>
							<form action="join.do" method="post" id="userJoin">
								<div class="mb-3">
									<div class="form-check form-check-inline">
										<input class="form-check-input u_sel" type="radio" id="inlineRadio1" value="1" name="mem_select" checked> <label class="form-check-label" for="inlineRadio1">개인회원</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input u_sel" type="radio" id="inlineRadio2" value="2" name="mem_select"> <label class="form-check-label" for="inlineRadio2">기업계정</label>
									</div>
								</div>
								<div class="mb-3 row">
									<div class="">
										<input type="text" class="form-control" id="user_id" aria-describedby=validationServerUsernameFeedback name="mem_id" placeholder="아이디">
										<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
									</div>
								</div>
								<div class="mb-3 row">
									<div class="col row">
										<div class="">
											<input type="password" class="form-control " id="user_pw" name="mem_pw" placeholder="비밀번호">
											<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
										</div>
									</div>
									<div class="col row">
										<div class="">
											<input type="password" class="form-control " id="user_pw_ck" name="mem_pwck" placeholder="비밀번호 확인">
											<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
										</div>
									</div>
								</div>
								<div class="mb-3 row">
									<div class="">
										<input type="text" class="form-control " id="user_nm" name="mem_name" placeholder="이름(기관명)">
										<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
									</div>
								</div>
								<div class="mb-3 row">
									<div class="">
										<input type="tel" class="form-control " id="user_tel" name="mem_phone" placeholder="연락처">
										<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
									</div>
								</div>
								<div class="mb-3 row">
									<div class="">
										<div class="input-group mb-1 col">
											<input type="text" class="form-control " id="user_email" placeholder="이메일"><span id="middle">@</span><input type="text" class="form-control " id="domain-txt" disabled value="naver.com"> <select class="form-select" id="domain-list">
												<option value="1">직접입력</option>
												<option value="naver.com" selected>naver.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="nate.com">nate.com</option>
												<option value="korea.com">korea.com</option>
												<option value="gmail.com">gmail.com</option>
											</select> <input type="hidden" id="totalemail" name="mem_email" value="">
											<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
										</div>
									</div>
								</div>
								<div class=" row">
									<div class="mb-3 row col">
										<div class="input-group col">
											<input type="text" class="form-control " placeholder="우편번호" name="mem_adrpost" id="u_post">
											<button class="btn btn-outline-secondary btn-sm" type="button" id="button-addon2">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
											</button>
										</div>
										<div class="input-group row col">
											<input type="text" class="form-control " placeholder="주소지" name="mem_addrs" id="u_addr">
										</div>
									</div>
									<div id="validationServerUsernameFeedback" class="invalid-feedback addrmsg"></div>
									<div class="mb-3 row mx-0">
										<input type="text" class="form-control " id="u_dtaddr" placeholder="상세주소" name="mem_dtaddrs">
									</div>
								</div>
								<div class="mb-3 row" id="ubday">
									<div >
										<div class="input-group  mb-1 col" >
											<input type="text" class="form-control" id="user_by" placeholder="년"> <input type="text" class="form-control " id="user_bm" placeholder="월"> <input type="text" class="form-control " id="user_bd" placeholder="일"> <input type="hidden" id="totalBday" name="mem_bday" value="">
											<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
										</div>
									</div>
								</div>
								<div class="mb-3 row">
									<div class="">
										<select name="mem_role" class="form-select " id="selectRole" value="구분">
											<option value="구분">구분</option>
											<option value="성인">성인</option>
											<option value="청소년">청소년</option>
											<option value="기타">기타</option>
										</select>
										<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-auto">
										<input type="button" id="joinbtn" class="btn btn-primary btn-sm" onclick="joincheck();" value="가입">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
