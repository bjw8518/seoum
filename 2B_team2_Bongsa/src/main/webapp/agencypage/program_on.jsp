<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>공고 관리</title>
<meta name="generator" content="Nicepage 4.18.4, nicepage.com">
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
<body class="u-body bg-light u-xl-mode" data-lang="en">
	<!-- 헤더 -->
	<div class="container-fluid navbar navbar-expand-lg w-100 border-bottom bg-white">
		<div class="container conw_96">
			<div class="collapse navbar-collapse f_13" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link py-3 active" href="program_on.do">공고 관리</a></li>
					<li class="nav-item"><a class="nav-link py-3 active" href="applicant_un.do">신청 현황</a></li>
					<li class="nav-item"><a class="nav-link py-3 active" href="agency_modify.do">기관 정보 관리</a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li> -->
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid  f_13 ">
		<div class="container my-0">
			<div class="row">
				<div class="rounded border col-2 my-3 bg-white mx-2 p-3" style="height: fit-content;">
					<ul class=" list-group list-group-flush ">
						<li class="list-group-item"><h5 class="">공고 관리</h5></li>
						<li class="list-group-item"><a href="program_on.do" class="nav-link">진행중인 공고</a></li>
						<li class="list-group-item"><a href="program_end.do" class="nav-link ">지난 공고 조회</a></li>
						<li class="list-group-item"><a href="program_reg.do" class="nav-link ">새로운 공고 등록</a></li>
						<li class="list-group-item"></li>
					</ul>
				</div>
				<div class="col-9 rounded border my-3 bg-white flex-grow-1">
					<div class=" p-3">
						<h4 class="mt-3">진행중인 공고</h4>
						<span>진행중인 공고를 확인할수 있습니다, 공고를 수정 또는 취소 할수 있습니다.</span>
						<hr>
						<table class="table">
							<colgroup>
								<col style="width: 5%; text-align: center;">
								<col style="width: 50%">
								<col style="width: 12%; text-align: center;">
								<col style="width: 12%; text-align: center;">
								<col style="width: 12%; text-align: center;">
								<col style="width: 7%; text-align: center;">
							</colgroup>
							<thead class="bg-light align-middle text-center">
								<tr style="height: 47px;">
									<th class="">번호</th>
									<th class="">제목</th>
									<th class="">봉사기간</th>
									<th class="">봉사시간</th>
									<th class="">모집기간</th>
									<th class="">관리</th>
								</tr>
							</thead>
							<tbody class="">
								<c:choose>
									<c:when test="${empty programlist}">
										<tr height="500">
											<td colspan="6" class="align-middle">
												<div class="row text-center">
													<h4>공고가 없습니다.</h4>
													<span>지금 새로운 공고를 등록해 보세요</span> <a href="program_reg.do">등록하기</a>
												</div>
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${programlist }" var="pg">
											<tr style="height: 42px;" class="align-middle">
												<td class="">${pg.p_id }</td>
												<td class="">${pg.p_title }</td>
												<td class="">${pg.p_startdate }<br /> ~${pg.p_enddate }
												</td>
												<td class="">${pg.p_starttime }<br /> ~${pg.p_endtime }
												</td>
												<td class="">${pg.p_open }<br /> ~${pg.p_close }
												</td>
												<td class=""><a href="program_modify.do?p_id=${pg.p_id }">관리</a></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>

						</table>
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