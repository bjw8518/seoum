<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>마이페이지</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<style type="text/css">
.conw_96 {
	position: relative;

	margin: 0 auto;
	height: 56px;
}

.f_13 {
	font-size: 13px;
}
</style>
</head>
<body class="u-body u-xl-mode bg-light">
	<!-- <header -->
	<%@include file="/header.jsp"%>
	<div class="container-fluid bg-white navbar navbar-expand-lg w-100 border-bottom ">
		<div class="Mcontainer container">
			<div class="collapse navbar-collapse f_13" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link py-3 active" aria-current="page" href="my_applicant.do?ap_mid=${user.mem_id }">나의 봉사 현황</a></li>
					<li class="nav-item"><a class="nav-link py-3 active" href="my_modify.do">내 정보 수정</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container conw_96 my-0 f_13">
		<div class="row border p-3 m-3 bg-white">
			<div class="list-group list-group-flush">
				<a href="#" class="list-group-item list-group-item-action p-3" aria-current="true">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">${user.mem_name }님</h5>
						<small>수정</small>
					</div>
					<p class="mb-1"></p> <small>${user.mem_id }(봉사자 계정) | ${user.mem_phone } | ${user.mem_email }</small>
				</a> <a href="#" class="list-group-item list-group-item-action p-3">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">나의 봉사 내역</h5>
					</div>
					<p class="mb-1">내 봉사 내역</p> <small class="text-muted"> 봉사내역을 확인해보세요.</small>
				</a> <a href="#" class="list-group-item list-group-item-action p-3">
					<div class="d-flex w-100 justify-content-between">
						<h5 class="mb-1">봉사 리뷰 </h5>
						<small class="text-muted">더 보기</small>
					</div>
					<p class="mb-1">더 많은 리뷰 보기</p> <small class="text-muted">많은 봉사들 리뷰를 확인해보세요.</small>
				</a>
			</div>
		</div>
	</div>
	</div>
	<!-- 	<footer
 -->
</body>
</html>