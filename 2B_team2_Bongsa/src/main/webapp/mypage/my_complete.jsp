<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>myfin</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/mypage/css/modal_style.css">
<script src="${pageContext.request.contextPath}/mypage/js/review_modal.js"></script>
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
		<div class="Mcontainer container conw_96">
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
							<h4 class="mt-3">완료한 봉사</h4>
							<hr>
							<table class="table">
								<colgroup>
									<col style="width: 5%; text-align: center;">
									<col class="align-middle" style="width: 40%">
									<col class="align-middle" style="width: 15%; text-align: center;">
									<col style="width: 10%; text-align: center;">
									<col style="width: 10%; text-align: center;">
									<col style="width: 10%; text-align: center;">
								</colgroup>
								<thead class="bg-light align-middle text-center">
									<tr style="height: 47px;">
										<th class="">번호</th>
										<th class="">제목</th>
										<th class="">봉사기관명</th>
										<th class="">봉사일시</th>
										<th class="">상태</th>
										<th class="">후기</th>
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
													<td class="">${ap.ap_aname }</td>
													<td class="">${ap.ap_pdate }<br />${ap.ap_ptime }
													</td>
													<td class="">${ap.ap_state }</td>
													<td class=""><c:catch>
															<c:choose>
																<c:when test="${ap.ap_rv eq null }">
																	<a href="#" class="modalbtn" data-applyinfo="${ap.ap_id},${ap.ap_pid},${ap.ap_aid},${ap.ap_mid}" data-bs-toggle="modal" data-bs-target="#staticBackdrop">후기작성</a>
																</c:when>
																<c:otherwise>
																	<a href="#" class="">후기작성완료</a>
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
	</div>
	<!-- basic modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="staticBackdropLabel">후기작성하기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="">
						<form class="hoogie" method="post" action="insertreview.do" id="appli_form">
							<input type="hidden" name="r_apid" value="" /> <input type="hidden" name="r_pid" value="" /> <input type="hidden" name="r_aid" value="" /> <input type="hidden" name="r_mid" value="" />
							<ul class="list-group">
								<li class="list-group-item">
									<h4>분위기</h4>
									<div class="labbox d-flex flex-wrap">
										<input id="free" type="checkbox" name="r_free" value="자유로운 분위기" /> <label class="d-inline-flex" for="free">&#128518; 자유로운 분위기</label> <input id="time" type="checkbox" name="r_time" value="종료시간을 준수해요" /> <label class="d-inline-flex" for="time">&#128336;종료시간을 준수해요</label> <input id="first" type="checkbox" name="r_first" value="처음이여도 잘 알려줘요" /> <label class="d-inline-flex" for="first">&#128516;처음이여도 잘 알려줘요</label> <input id="learn" type="checkbox" name="r_learn" value="친절해요" /> <label class="d-inline-flex" for="learn">&#128129;친절해요</label>
									</div>
								</li>
								<li class="list-group-item">
									<h4>시설</h4>
									<div class="labbox d-flex flex-wrap">
										<input id="ez_locate" type="checkbox" name="ez_locate" value="위치를 찾기 편해요" /> <label class="d-inline-flex" for="ez_locate">&#128681위치를 찾기 편해요</label> <input id="bathroom" type="checkbox" name="bathroom" value="화장실이 깨끗해요" /> <label class="d-inline-flex" for="bathroom">&#128701;화장실이 깨끗해요</label> <input id="locate_clean" type="checkbox" name="locate_clean" value="시설이 청결해요" /> <label class="d-inline-flex" for="locate_clean">&#128521;시설이 청결해요</label> <input id="answer" type="checkbox" name="answer" value="문의에 답변이 빨라요" /> <label class="d-inline-flex" for="answer">&#128168;문의에 답변이 빨라요</label>
									</div>
								</li>
								<li class="list-group-item">
									<h4>봉사내용</h4>
									<div class="labbox d-flex flex-wrap">
										<input id="satisfied" type="checkbox" name="satisfied" value="만족감과 뿌듯함이 큰 활동이에요" /> <label class="d-inline-flex" for="satisfied">&#128582;만족감과 뿌듯함이 큰 활동이에요</label> <input id="memory" type="checkbox" name="r_memory" value="좋은 추억을 쌓을수있어요" /> <label class="d-inline-flex" for="memory">&#128106;좋은 추억을 쌓을수있어요</label> <input id="soez" type="checkbox" name="soez" value="쉽고 단순한 일이에요" /> <label class="d-inline-flex" for="soez">&#128076;쉽고 단순한 일이에요</label> <input id="safety" type="checkbox" name="safety" value="안전한 일이에요" /> <label class="d-inline-flex" for="safety">&#128588;안전한 일이에요</label>
									</div>
								</li>
								<li class="list-group-item">
									<div class="form-floating">
										<span style="font-size: 13px; color: #aaa;">봉사활동 어떠셨나요? 의견을 작성해 주세요. 작성해주신 의견은 기관에 전달됩니다.</span>
										<textarea name="r_content" class="form-control" placeholder="" id="floatingTextarea2" style="height: 100px"></textarea>
									</div>
								</li>
							</ul>
							<input type="button" id="liveTBtn" class="btn btn-secondary" value="작성 완료">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						</form>
					</div>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</body>
</html>