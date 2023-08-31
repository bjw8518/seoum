<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>나의 봉사 신청</title>

<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/mypage/js/user_apply_modal.js?var=123"></script>

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
	<div class="container-fluid bg-white navbar navbar-expand-lg w-100 border-bottom">
		<div class="Mcontainer container conw_96" >
			<div class="collapse navbar-collapse f_13" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link py-3 active" aria-current="page" href="my_applicant.do">나의 봉사 현황</a></li>
					<li class="nav-item"><a class="nav-link py-3 active" href="my_modify.do">내 정보 수정</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container conw_96 f_13 my-0">
		<div class="container-fluid  f_13 ">
			<div class="container conw_96 my-0">
				<div class="row">
					<div class="rounded border bg-white col-2 my-3 mx-2 p-3" style="height: fit-content;">
						<ul class=" list-group list-group-flush ">
							<li class="list-group-item"><h5 class="">나의 봉사 현황</h5></li>
							<li class="list-group-item"><a href="my_applicant.do" class="nav-link">신청한 봉사</a></li>
							<li class="list-group-item"><a href="my_complete.do" class="nav-link ">완료한 봉사</a></li>
							<li class="list-group-item"></li>
						</ul>
					</div>
					<div class="col-9 rounded border m-3 bg-white ">
						<div class=" p-3">
							<h4 class="mt-3">신청한 봉사</h4>
							<table class="table">
								<colgroup>
									<col style="width: 5%; text-align: center;">
									<col class="align-middle" style="width: 40%">
									<col class="align-middle" style="width: 15%; text-align: center;">
									<col style="width: 10%; text-align: center;">
									<col style="width: 10%; text-align: center;">
									<col style="width: 10%; text-align: center;">
									<col style="width: 7%; text-align: center;">
								</colgroup>
								<thead class="bg-light align-middle text-center">
									<tr style="height: 47px;">
										<th class="">번호</th>
										<th class="">제목</th>
										<th class="">봉사기관명</th>
										<th class="">봉사일시</th>
										<th class="">신청일시</th>
										<th class="">상태</th>
										<th class="">확인</th>
									</tr>
								</thead>
								<tbody class="">
									<c:choose>
										<c:when test="${empty applylist}">
											<tr height="500">
												<td colspan="6" class="align-middle">
													<div class="row text-center">
														<h4 class="">봉사내역이 없습니다.</h4>
													</div>
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${applylist }" var="ap">
												<tr style="height: 42px;" class="align-middle">
													<td class="align-middle">${ap.ap_id }</td>
													<td class="align-middle">${ap.ap_ptitle }</td>
													<td class="align-middle">${ap.ap_aname }</td>
													<td class="">${ap.ap_pdate }<br />${ap.ap_ptime }</td>
													<td class="">${ap.ap_applyDate}</td>
													<td class="align-middle">${ap.ap_state }</td>
													<td class="align-middle"><a href="" class="modalbtn" 
													data-applyinfo="${ap.ap_id },${ap.ap_ptitle},${ap.ap_aname},${ap.ap_pdate},${ap.ap_ptime },${ap.ap_applyDate },${ap.ap_state}" id="applyModalbtn" data-bs-toggle="modal" data-bs-target="#exampleModal">상세</a></td>
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
		</div>
		<!-- 미확정->확정처리 모달 시작 -->
		<!-- 아이디값 넣기  -->
		<div class="modal fade " id="exampleModal" tabindex="-1" onshow="" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title fs-5" id="exampleModalLabel">봉사신청 관리</h3>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="applicant_cancle.do" method="post" id="appli_form">
							<input type="hidden" class="form-control-plaintext" id="apid_val" name="ap_id" value="">
							<div class="mb-3 row">
								<label for="p_name" class="col-sm-3 col-form-label">봉사활동명</label>
								<div class="col-sm-8">
									<p id="ptitle"></p>
								</div>
							</div>
							<div class="mb-3 row">
								<label for="mem_name" class="col-sm-3 col-form-label">기관명</label>
								<div class="col-sm-8">
									<input type="text" readonly class="form-control-plaintext" id="aname" name="ap_aname" value="">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="mem_name" class="col-sm-3 col-form-label">봉사일시</label>
								<div class="col-sm-8">
									<input type="text" readonly class="form-control-plaintext" id="pdate" name="ap_pdate" value="">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="mem_name" class="col-sm-3 col-form-label">신청일시</label>
								<div class="col-sm-8">
									<input type="text" readonly class="form-control-plaintext" id="apdate" name="ap_applyDate" value="">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="ap_state" class="col-sm-3 col-form-label">상태</label>
								<div class="col-sm-8">
									<input type="text" readonly class="form-control-plaintext" id="apstate" name="" value=""> <input type="hidden" class="form-control-plaintext" id="set_ap_state" name="ap_state" value="">
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary subbtn" id="liveTBtn">신청 취소</button>
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >확인</button>
								
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- 개인회원 상세 보기 모달끝 -->
		</div>
		<!--  -->
		<!-- 	<footer
 -->
</body>
</html>