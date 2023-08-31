<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>신청현황 미신청</title>
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
<body class="u-body u-xl-mode" data-lang="en">
	<!-- 헤더 -->
	<%@include file="/header.jsp"%>

	<div class="content_nee">
		<nav class="navbar navbar-expand-lg w-100 border-bottom">
			<div class="container conw_96">
				<div class="collapse navbar-collapse f_13" id="navbarNav">
					<ul class="navbar-nav ">
						<li class="nav-item"><a class="nav-link "
							href="program_on.do">공고 관리</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="applicant_un.do">신청 현황</a></li>
						<li class="nav-item"><a class="nav-link"
							href="agency_modify.do">기관 정보 관리</a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li> -->
					</ul>
				</div>
			</div>

		</nav>



		<div class="container conw_96 f_13">
			<div class="">
				<div class="row">
					<div class="rounded border col-3 m-3 p-3">
						<ul class=" list-group list-group-flush ">
							<li class="list-group-item"><h5 class="">신청 관리</h5></li>
							<li class="list-group-item"><a href="applicant_un.do"
								class="nav-link">미승인 신청</a></li>
							<li class="list-group-item"><a href="applicant_agree.do"
								class="nav-link ">승인된 신청</a></li>
							<li class="list-group-item"><a href="applicant_complete.do"
								class="nav-link ">완료된 봉사</a></li>
							<li class="list-group-item"></li>
						</ul>
					</div>

					<div class="col-8 rounded border m-3 ">
						<div class=" p-3">
							<h4 class="mt-3">미승인 신청</h4>
							<table class="table">
								<thead class="bg-light">
									<tr style="height: 47px;">
										<th class="">번호</th>
										<th class="">제목</th>
										<th class="">봉사일자</th>
										<th class="">신청일자</th>
										<th class="">신청인원</th>
										<th class="">관리</th>
									</tr>
								</thead>
								<tbody class="">
									<tr style="height: 42px;">
										<td class=""></td>
										<td class=""></td>
										<td class=""></td>
										<td class=""></td>
										<td class=""></td>
										<td class=""><a href="">관리</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--content_nee end  -->


	<!-- 	<footer
 -->
</body>
</html>