<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>공고 등록</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/agencypage/js/program_reg.js?var=123"></script>
<style type="text/css">
.conw_96 {
	position: relative;
	width: 960px;
	margin: 0 auto;
	height: 56px;
}

.table-responsive tr {
	table-layout: fixed;
}

.f_13 {
	font-size: 13px;
}
</style>
</head>
<body class="u-body u-xl-mode bg-light" data-lang="en">
	<!-- 헤더 -->
	<div class="container-fluid bg-white navbar navbar-expand-lg w-100 border-bottom">
		<div class="container my-0">
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
	<div class="container  rounded border bg-white  my-3 mx-auto col-8">
		<div class=" p-3">
			<h4 class="mt-3">새로운 공고 등록</h4>
			<hr>
			<form action="program_reg.do?p_agencyid=${user.mem_id}" method="post" id="reg_go">
				<table class="table table-responsive" style="table-layout: fixed;">
					<colgroup>
						<col style="width: 10%; text-align: center;">
						<col style="width: 40%">
						<col style="width: 10%; text-align: center; ">
						<col style="width: 40%">
					</colgroup>
					<tbody>
						<tr>
							<td class="table-secondary"><label for="tt">제목</label></td>
							<td colspan="3"><input type="text" class="w-100 invalid form-control" name="p_title" class="form-control" value="" id="tt" placeholder="공고 제목"></td>
						</tr>
						<tr>
							<td class="table-secondary"><label for="">기관명</label></td>
							<td><input type="text" class="form-control" class="w-100" name="p_agname" value="${user.mem_name}" readonly></td>
							<td class="table-secondary"><label for="">담당자</label></td>
							<td><input type="text" class="w-100 form-control" name="p_manager" value="" placeholder="담당자명"></td>
						</tr>
						<tr>
							<td class="table-secondary"><label for="">주소</label></td>
							<td colspan="2"><input type="text" class=" form-control" name="p_agaddrs" value="${user.mem_addrs}" readonly></td>
							<td colspan="1"><input type="text" class=" form-control" name="p_dtaddrs" value="${user.mem_dtaddrs}" readonly></td>
						</tr>
						<tr>
							<td class="table-secondary"><label for="">시작일</label></td>
							<td><input type="date" class="form-control" name="p_startdate" value=""></td>
							<td class="table-secondary"><label for="">종료일</label></td>
							<td><input type="date" class="form-control" name="p_enddate" value=""></td>
						</tr>
						<tr>
							<td class="table-secondary"><label for="">모집시작일</label></td>
							<td><input type="date" name="p_open" class="form-control" value=""></td>
							<td class="table-secondary"><label for="">모집종료일</label></td>
							<td><input type="date" class="form-control" name="p_close" value=""></td>
						</tr>
						<tr>
							<td class="table-secondary"><label for="">시작시간</label></td>
							<td><input type="time" class="form-control" name="p_starttime" value=""></td>
							<td class="table-secondary"><label for="">종료시간</label></td>
							<td><input type="time" class="form-control" name="p_endtime" value=""></td>
						</tr>
						<tr>
							<td class="table-secondary"><label for="dayw">활동요일</label></td>
							<td><input type="checkbox" class="" name="p_dayweeks" value="월" id="mon"><label for="mon">월</label> 
							<input type="checkbox" value="화" class="" name="p_dayweeks" id="tue"><label for="tue">화</label> 
							<input type="checkbox" class="" name="p_dayweeks" id="wed" value="수"><label for="wed">수</label> 
							<input type="checkbox" class="" name="p_dayweeks" id="thu" value="목"><label for="thu">목</label> 
							<input type="checkbox" class="" name="p_dayweeks" id="fri" value="금"><label for="fri">금</label> 
							<input type="checkbox" class="" name="p_dayweeks" id="sat" value="토"><label for="sat">토</label> 
							<input type="checkbox" class="" name="p_dayweeks" id="sun" value="일"><label for="sun">일</label> 
							<input type="hidden" name="p_dayweek" id="totalday" value=""></td>
							<td class="table-secondary"><label for="">모집인원</label></td>
							<td><div class="input-group">
									<input type="number" class="form-control" name="p_demand" value=""><span>명/일</span>
								</div></td>
						</tr>
						<tr>
							<td class="table-secondary"><label id="">봉사구분</label></td>
							<td><select name="p_onoff" class="form-select">
									<option value="오프라인">오프라인</option>
									<option value="온라인">온라인</option>
							</select></td>
							<td class="table-secondary"><label id="">봉사자유형</label></td>
							
							<td><input type="checkbox" id="ty1" name="p_type" value="성인"><label for="ty1">성인</label> 
										<input type="checkbox" id="ty2" name="p_type" value="청소년"><label for="ty2">청소년</label> 
										<input type="checkbox" id="ty3" name="p_type" value="무관"><label for="ty3">무관</label>
										<input type="hidden" name="p_target" value="">
										</td>
						</tr>
						<tr>
							<td class="table-secondary"><label id="">내용</label></td>
							<td colspan="3">
								<div class="row p-3">
									<textarea id="summernote" name="p_content"></textarea>
									<script>
										$('#summernote').summernote(
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
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
					<input type="button" class="btn" id="regBtn" value="등록">
				</div>
			</form>
		</div>
	</div>
	</div>
	<!-- 	<footer
 -->
</body>
</html>
