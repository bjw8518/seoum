<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>마이페이지진입</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
<body class="u-body bg-light u-xl-mode" data-lang="en">
	<!-- 헤더 -->
	<div class="container-fluid navbar navbar-expand-lg w-100 border-bottom bg-white" >
		<div class="container conw_96">
			<div class="collapse navbar-collapse f_13" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link py-3 active " href="program_on.do">공고 관리</a></li>
					<li class="nav-item"><a class="nav-link py-3 active" href="applicant_un.do">신청 현황</a></li>
					<li class="nav-item"><a class="nav-link py-3 active" href="agency_modify.do">기관 정보 관리</a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li> -->
				</ul>
			</div>
		</div>
	</div>
	<div class="container-sm conw_96 f_13">
		<div class="row border bg-white p-3 m-3">
			<div class="list-group list-group-flush">
				<a href="#" class="list-group-item list-group-item-action p-3" aria-current="true">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">${user.mem_name }</h5>
						<small>수정</small>
					</div>
					<p class="mb-1">${user.mem_addrs }</p> <small>${user.mem_phone }</small>
				</a> <a href="#" class="list-group-item list-group-item-action p-3">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">최근 공고와 신청</h5>
					</div>
					<p class="mb-1">최근 올리신 공고를 확인해보세요, 신청관리에서 신청도 확인할수 있습니다.</p> <small class="text-muted"></small>
				</a> <a href="#" class="list-group-item list-group-item-action p-3">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">기관 봉사 후기 확인</h5>
						<small class="text-muted">확인</small>
					</div>
					<p class="mb-1">최근 완료된 봉사활동 봉사자의 후기를 확인해볼수 있습니다. </p> <small class="text-muted">준비중</small>
				</a>
			</div>
		</div>
	</div>
	
	<!-- 	<footer
 -->	
</body>
</html>