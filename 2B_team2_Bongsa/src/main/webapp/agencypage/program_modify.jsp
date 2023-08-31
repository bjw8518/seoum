<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>봉사 수정</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/agencypage/js/program_modify.js?"></script>
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
				<div class="rounded border col-2 my-3 mx-1 p-3 bg-white" style="height: fit-content;">
					<ul class=" list-group list-group-flush ">
						<li class="list-group-item"><h5 class="">공고 관리</h5></li>
						<li class="list-group-item"><a href="program_on.do" class="nav-link">진행중인 공고</a></li>
						<li class="list-group-item"><a href="program_end.do" class="nav-link ">지난 공고 조회</a></li>
						<li class="list-group-item"><a href="program_reg.do" class="nav-link ">새로운 공고 등록</a></li>
						<li class="list-group-item"></li>
					</ul>
				</div>
				<div class="col-9 rounded border my-3 mx-auto flex-grow-1 bg-white">
					<div class=" p-3">
						<h4 class="mt-3">공고 수정</h4>
						<span>공고 내용을 수정 할 수 있습니다. </span>
						<hr>
						<form action="program_modify.do?p_id=${pg.p_id }" method="post">
							<table class="table table-responsive">
								<colgroup>
									<col style="width: 10%; text-align: center;">
									<col style="width: 40%">
									<col style="width: 10%; text-align: center;">
									<col style="width: 40%">
								</colgroup>
								<tbody>
									<tr>
										<td class="table-secondary"><label for="tt">제목</label></td>
										<td colspan="3"><input type="text" class="w-100 form-control" name="p_title" class="form-control" value="${pg.p_title}" id="tt"></td>
									</tr>
									<tr>
										<td class="table-secondary"><label for="">기관명</label></td>
										<td><input type="text" class="form-control" class="w-100" name="mem_name" value="${ user.mem_name}" readonly></td>
										<td class="table-secondary"><label for="">담당자</label></td>
										<td><input type="text" class="w-100 form-control" name="ap_pmanager" value="${pg.p_manager}"></td>
									</tr>
									<tr>
										<td class="table-secondary"><label for="">주소</label></td>
										<td colspan="3"><input type="text" class="w-100 form-control" name="p_addrs" value="${user.mem_addrs}" readonly></td>
									</tr>
									<tr>
										<td class="table-secondary"><label for="">시작일</label></td>
										<td><input type="date" class="form-control" name="p_startdate" value="${pg.p_startdate}"></td>
										<td class="table-secondary"><label for="">종료일</label></td>
										<td><input type="date" class="form-control" name="p_enddate" value="${pg.p_enddate}"></td>
									</tr>
									<tr>
										<td class="table-secondary"><label for="">모집시작일</label></td>
										<td><input type="date" name="p_open" class="form-control" value="${pg.p_open}"></td>
										<td class="table-secondary"><label for="">모집종료일</label></td>
										<td><input type="date" class="form-control" name="p_close" value="${pg.p_close}"></td>
									</tr>
									<tr>
										<td class="table-secondary"><label for="">시작시간</label></td>
										<td><input type="time" class="form-control" name="p_starttime" value="${pg.p_starttime}"></td>
										<td class="table-secondary"><label for="">종료시간</label></td>
										<td><input type="time" class="form-control" name="p_endtime" value="${pg.p_endtime}"></td>
									</tr>
									<tr>
										<td class="table-secondary"><label for="dayw">활동요일</label></td>
										<td><input type="checkbox" class="" name="p_dayweeks" id="mon" value="월"><label for="mon">월</label> <input type="checkbox" class="" name="p_dayweeks" id="tue" value="화"><label for="tue">화</label> <input type="checkbox" class="" name="p_dayweeks" id="wed" value="수"><label for="wed">수</label> <input type="checkbox" class="" name="p_dayweeks" id="thu" value="목"><label for="thu">목</label> <input type="checkbox" class="" name="p_dayweeks" id="fri" value="금"><label for="fri">금</label> <input type="checkbox" class="" name="p_dayweeks" id="sat" value="토"><label for="sat">토</label> <input type="checkbox" class="" name="p_dayweeks" id="sun" value="일"><label for="sun">일</label> <input type="hidden" value="${pg.p_dayweek}" name="p_dayweek"></td>
										<td class="table-secondary"><label for="">모집인원</label></td>
										<td>
											<div class="input-group">
												<input type="text" class="form-control" name="p_demand" value="${pg.p_demand }"><span>명/일</span>
											</div>
										</td>
									</tr>
									<tr>
										<td class="table-secondary"><label id="">봉사구분</label></td>
										<td><select name="p_onoff"><c:forEach items="${onOffList}" var="option">
													<option value="${option.value }" <c:if test="${user.mem_role eq option.value }">selected</c:if>>${option.value }</option>
												</c:forEach>
										</select></td>
										<td class="table-secondary"><label id="">봉사자유형</label></td>
										<td><input type="checkbox" id="ty1" name="p_type" value="성인"><label for="ty1">성인</label> <input type="checkbox" id="ty2" name="p_type" value="청소년"><label for="ty2">청소년</label> <input type="checkbox" id="ty3" name="p_type" value="무관"><label for="ty3">무관</label> <input type="hidden" name="p_target" value="${pg.p_target }"></td>
									</tr>
									<tr>
										<td class="table-secondary"><label id="">내용</label></td>
										<td colspan="3"><div class="row p-3">
												<textarea id="summernote" name="p_content" >${pg.p_content}</textarea>
												<script>
													$('#summernote')
															.summernote(
																	{
																		placeholder : '공고의 상세 내용을 입력하세요',
																		tabsize : 2,
																		height : 200,

																		toolbar : [
																				[
																						'style',
																						[ 'style' ] ],
																				[
																						'font',
																						[
																								'bold',
																								'underline',
																								'clear' ] ],
																				[
																						'color',
																						[ 'color' ] ],
																				[
																						'para',
																						[
																								'ul',
																								'ol',
																								'paragraph' ] ],
																				[
																						'table',
																						[ 'table' ] ],
																				[
																						'insert',
																						[
																								'link',
																								'picture',
																								'video' ] ],
																				[
																						'view',
																						[
																								'fullscreen',
																								'codeview',
																								'help' ] ] ]
																	});
												</script>
											</div></td>
									</tr>
								</tbody>
							</table>
							<div>
								<input type="submit" value="완료"><input type="button" value="취소">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 
	ooter -->	
</body>
</html>