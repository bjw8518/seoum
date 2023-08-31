<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>신청현황 미신청</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/agencypage/js/apply_modal.js?var=123"></script>
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
	<div class="container-fluid navbar navbar-expand-lg w-100 border-bottom bg-white">
		<div class="container conw_96"  style="position:relative; right: 180px; top: 2px;">
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
				<div class="rounded border bg-white col-2 my-3 mx-1 p-3" style="height: fit-content;">
					<ul class=" list-group list-group-flush ">
						<li class="list-group-item"><h5 class="">신청 관리</h5></li>
						<li class="list-group-item"><a href="applicant_un.do" class="nav-link">미승인 신청</a></li>
						<li class="list-group-item"><a href="applicant_agree.do" class="nav-link ">승인된 신청</a></li>
						<li class="list-group-item"><a href="applicant_complete.do" class="nav-link ">완료된 봉사</a></li>
						<li class="list-group-item"></li>
					</ul>
				</div>
				<div class="col-9 bg-white rounded border my-3 flex-grow-1">
					<div class=" p-3">
						<h4 class="mt-3">미승인 신청</h4>
						<span>미승인 신청을 확인할수 있습니다. 승인 또는 반려 처리를 해주세요</span>
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
									<th class="">봉사일자</th>
									<th class="">신청자</th>
									<th class="">상태</th>
									<th class="">관리</th>
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
											<tr style="height: 42px;" class="align-middle text-center">
												<td class="">${ap.ap_id }</td>
												<td class="">${ap.ap_ptitle }</td>
												<td class="">${ap.ap_pdate }<br/>${ap.ap_ptime }</td>
												<td class="">${ap.ap_mname }</td>
												<td class="">${ap.ap_state }</td>
												<td class=""><c:catch>
														<c:choose>
															<c:when test="${ap.ap_state eq '신청(미승인)' }">
																<a href="" class="modalbtn" data-applyinfo="${ap.ap_id },${ap.ap_ptitle}, ${ap.ap_pdate},${ap.ap_ptime },${ap.ap_mname},${ap.ap_mrole},${ap.ap_state}" id="applyModalbtn" data-bs-toggle="modal" data-bs-target="#exampleModal">관리</a>
															</c:when>
															<c:otherwise>
																<a title="반려된 신청은 수정이 불가합니다.">관리</a>
															</c:otherwise>
														</c:choose>
													</c:catch></td>
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
					<form action="applicant_confirm.do" method="post" id="appli_form">
						<input type="hidden" class="form-control-plaintext" id="apid_val" name="ap_id" value="">
						<div class="mb-3 row">
							<label for="p_name" class="col-sm-3 col-form-label">봉사활동명</label>
							<div class="col-sm-8">
								<p id="ptitle"></p>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="mem_name" class="col-sm-3 col-form-label">신청일정</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control-plaintext" id="ap_pdate" name="ap_pdate" value="">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="mem_name" class="col-sm-3 col-form-label">신청자명</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control-plaintext" id="mem_name" name="ap_mname" value=" ">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="ap_state" class="col-sm-3 col-form-label">상태</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control-plaintext" id="ap_state" name="" value=""> <input type="hidden" class="form-control-plaintext" id="set_ap_state" name="ap_state" value="">
							</div>
						</div>
						<div class="row justify-content-center">
							<div class="form-check col-4 m-3">
								<input class="form-check-input appli_ck" type="radio" id="confirm_ck" value="확정(승인)" name="state_val" checked> <label class="form-check-label" for="confirm_ck"> 승인 </label>
							</div>
							<div class="form-check col-4 m-3">
								<input class="form-check-input appli_ck" type="radio" id="rejec_ck" value="반려" name="state_val"> <label class="form-check-label" for="rejec_ck"> 반려 </label>
							</div>
						</div>
						<div class="mb-3 row" id="nowhy" style="display: none">
							<div class="col-sm-10">
								<select id="apck_rs" class="form-select form-select-sm mb-3" aria-label=".form-select-lg example" name="ap_rejec">
									<option value="">반려사유를 선택해주세요</option>
									<option value="일정변경">일정변경</option>
									<option value="인원초과">인원초과</option>
									<option value="기타">기타</option>
								</select>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary subbtn" id="liveTBtn">저장</button>
						</div>
						<div class="position-absolute top-50 start-50 translate-middle p-3 " style="z-index: 100">
							<div id="liveToast" class="toast align-items-center text-white bg-danger border-0" role="alert" aria-live="assertive" aria-atomic="true">
								<div class="d-flex">
									<div class="toast-body">반려사유를 선택해주세요!</div>
									<button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 미확정->확정처리 모달끝 -->
	</div>
	<!--content_nee end  -->
	<!-- 	<footer
 -->	
</body>
</html>