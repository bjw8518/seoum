<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>로그인 임시</title>

<link rel="stylesheet" href="css/myfin.css" media="screen">

<script class="u-script" type="text/javascript" src="js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<script type="text/javascript" src="/resources/js/chack.js"></script>
<style type="text/css">
body {
	background-color: #ebecee;
}

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
<body>
	<%@include file="/header.jsp"%>
	<!-- <header -->
	<div class="text-center">


		<div class="container conw_96 f_13">
			<div class="row justify-content-center align-items-center">


				<div class="col-7 rounded border m-3 mt-5 bg-f align-middle">
					<h4 class="mt-3">로그인</h4>

					<form action="login.do" method="post">

						<div class="mb-3 row p-2">
							<label for="user_id" class="col-form-label col-sm-2">아이디</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-sm "
									id="user_id" name="mem_id" placeholder="">
							</div>
						</div>

						<div class="mb-3 row p-2">
							<label for="user_pw" class="col-form-label col-sm-2">비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control form-control-sm "
									id="user_pw" name="mem_pw" placeholder="">
							</div>
						</div>

						<div class="row m-5">
							<input type="submit" class="btn btn-primary btn-sm mx-auto"
								style="width: 300px" value="로그인">
						</div>


					</form>
				</div>
			</div>
		</div>
	</div>




</body>
</html>



