<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>기관정보 수정</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/mypage.css" media="screen">
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

<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "images/default-logo.png"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="mypage">
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
 <%@include file="/header.jsp" %>

	<div>
		<nav class="navbar navbar-expand-lg w-100 border-bottom">
			<div class="container conw_96">
				<div class="collapse navbar-collapse f_13" id="navbarNav">
					<ul class="navbar-nav ">
						<li class="nav-item"><a class="nav-link" href="program_on.do">공고 관리</a></li>
						<li class="nav-item"><a class="nav-link" href="applicant_un.do">신청 현황</a></li>
						<li class="nav-item"><a class="nav-link " href="program_on.do">기관 정보
								관리</a></li>
						<li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li>
					</ul>
				</div>
			</div>

		</nav>


		<div class="col-8 rounded border m-3 ">
						<div class=" p-3">
							<h4 class="mt-3">공고 수정</h4>
							<form action="program_reg.do" method="post">
								<table class="table table-responsive">

									<tbody>
										<tr>
											<td class="table-secondary"><label for="tt">제목</label></td>
											<td colspan="3"><input type="text" class="w-100"
												name="p_title" value="" id="tt"></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">기관명</label></td>
											<td><input type="text" class="w-100" name="p_name"
												value="<%-- ${ } --%>" readonly></td>
											<td class="table-secondary"><label for="">담당자</label></td>
											<td><input type="text" class="w-100" name="p_manager"
												value="<%-- ${}  --%>" readonly></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">주소</label></td>
											<td colspan="3"><input type="text" class="w-100"
												name="p_addr" value="" readonly></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">시작일</label></td>
											<td><input type="date" name="p_startdate" value=""></td>
											<td class="table-secondary"><label for="">종료일</label></td>
											<td><input type="date" name="p_enddate" value=""></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">모집시작일</label></td>
											<td><input type="date" name="p_open" value=""></td>
											<td class="table-secondary"><label for="">모집종료일</label></td>
											<td><input type="date" name="p_close" value=""></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">시작시간</label></td>
											<td><input type="time" name="p_starttime" value=""></td>
											<td class="table-secondary"><label for="">종료시간</label></td>
											<td><input type="time" name="p_endtiem" value=""></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="dayw">활동요일</label></td>
											<td><input type="checkbox" class="" name="p_dayweek"
												id="mon"><label for="mon">월</label> <input
												type="checkbox" class="" name="p_dayweek" id="tue"><label
												for="tue">화</label> <input type="checkbox" class=""
												name="p_dayweek" id="wed"><label for="wed">수</label>
												<input type="checkbox" class="" name="p_dayweek" id="thu"><label
												for="thu">목</label> <input type="checkbox" class=""
												name="p_dayweek" id="fri"><label for="fri">금</label>
												<input type="checkbox" class="" name="p_dayweek" id="sat"><label
												for="sat">토</label> <input type="checkbox" class=""
												name="p_dayweek" id="sun"><label for="sun">일</label></td>
											<td class="table-secondary"><label for="">모집인원</label></td>
											<td><input type="text" class="" name="p_count" value="">명/일</td>
										</tr>
										<tr>
											<td class="table-secondary"><label id="">봉사구분</label></td>
											<td><select name="p_onoff">
													<option value="on">오프라인</option>
													<option value="off">온라인</option>

											</select></td>
											<td class="table-secondary"><label id="">봉사자유형</label></td>
											<td><input type="checkbox" class="" name="p_type"
												value="1"><label for="">성인</label> <input
												type="checkbox" class="" name="p_type" value="2"><label
												for="">청소년</label> <input type="checkbox" class=""
												name="p_type" value="3"><label for="">무관</label></td>
										</tr>
										<tr>
											<td class="table-secondary"><label id="">내용</label></td>
											<td colspan="3">
												<div id="summernote">Hello Summernote</div> <script
													type="text/javascript">
													$('#summernote')
															.summernote(
																	{
																		placeholder : 'Hello Bootstrap 5',
																		tabsize : 2,
																		height : 100
																	});
												</script>
											</td>
										</tr>

									</tbody>
								</table>
								<div>
									<input type="submit" value="완료"><input type="button"
										value="취소">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    
<!-- 푸터~~ -->
  
</body>
</html>