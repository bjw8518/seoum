<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>마이페이지진입</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/myfin.css" media="screen">
<script class="u-script" type="text/javascript" src="js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 4.18.4, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">


<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="myfin">
<meta property="og:type" content="website">



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
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<!-- <header -->
	<div>
		<nav class="navbar navbar-expand-lg w-100 border-bottom">
			<div class="container conw_96">
				<div class="collapse navbar-collapse f_13" id="navbarNav">
					<ul class="navbar-nav ">
						<li class="nav-item"><a class="nav-link "
							href="program_on.do">공고 관리</a></li>
						<li class="nav-item"><a class="nav-link "
							href="applicant_un.do">신청 현황</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="agency_modify.do">기관 정보 관리</a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li> -->
					</ul>
				</div>
			</div>

		</nav>


		<div class="container conw_96 f_13">
			<div class="row border p-3 m-3">
				<div class="list-group list-group-flush">
					<a href="#" class="list-group-item list-group-item-action p-3"
						aria-current="true">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1">기관이름</h5>
							<small>수정</small>
						</div>
						<p class="mb-1">기관 정보 요약</p> <small>연락처?</small>
					</a> <a href="#" class="list-group-item list-group-item-action p-3">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1">너무 졸리당..</h5>

						</div>
						<p class="mb-1">Some placeholder content in a paragraph.</p> <small
						class="text-muted">And some muted small print.</small>
					</a> <a href="#" class="list-group-item list-group-item-action p-3">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1">List group item heading</h5>
							<small class="text-muted">3 days ago</small>
						</div>
						<p class="mb-1">Some placeholder content in a paragraph.</p> <small
						class="text-muted">And some muted small print.</small>
					</a>
				</div>

			</div>
		</div>
	</div>


	<!-- 	<footer
 -->
</body>
</html>