<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>myfin</title>
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
<body>
	<!-- <header -->
	<div>
		<nav class="navbar navbar-expand-lg w-100 border-bottom">
			<div class="container conw_96">
				<div class="collapse navbar-collapse f_13" id="navbarNav">
					<ul class="navbar-nav ">
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="#">공고 관리</a></li>
						<li class="nav-item"><a class="nav-link" href="#">신청 현황</a></li>
						<li class="nav-item"><a class="nav-link" href="#">기관 정보
								관리</a></li>
						<li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li>
					</ul>
				</div>
			</div>

		</nav>


		<div class="container conw_96 f_13">
			<div class="">
				<div class="row">
					<div class=" rounded border m-3 ">
						<div class=" p-3">
							<h4 class="mt-3">새로운 공고 등록</h4>
							<form action="service_ask.do" method="post">
								<table class="table table-responsive">

									<tbody>
										<tr>
											<td class="table-secondary"><label for="" id="">제목</label></td>
											<td colspan="3"><input type="text" class="w-100" name="p_title"
												value="" required></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">기관명</label></td>
											<td><input type="text" class="w-100" name="" value="${user.mem_name}"
												readonly></td>
											<td class="table-secondary"><label for="">담당자</label></td>
											<td><input type="text" class="w-100" name="" value=""
												></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">주소</label></td>
											<td colspan="3"><input type="text" class="w-100" name=""
												value="${user.mem_dtaddrs}" readonly></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">시작일</label></td>
											<td><input type="date" name="p_startdate" value="" required></td>
											<td class="table-secondary"><label for="">종료일</label></td>
											<td><input type="date" name="p_enddate" value="" required></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">모집시작일</label></td>
											<td><input type="date" name="p_open" value="" required></td>
											<td class="table-secondary"><label for="">모집종료일</label></td>
											<td><input type="date" name="p_close" value="" required></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">시작시간</label></td>
											<td><input type="time" name="p_start_time" value="" required></td>
											<td class="table-secondary"><label for="">종료시간</label></td>
											<td><input type="time" name="p_end_time" value="" required></td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">활동요일</label></td>
											<td>
												<input type="checkbox" class="" name="p_dayweek" value="월">
												<label for="">월</label>

												<input type="checkbox" class=""  name="p_dayweek" value="화">
												<label for="">화</label>

												<input type="checkbox" class=""  name="p_dayweek" value="수">
												<label for="">수</label>

												<input type="checkbox" class=""  name="p_dayweek" value="목">
												<label for="">목</label>

												<input type="checkbox" class=""  name="p_dayweek" value="금">
												<label for="">금</label>

												<input type="checkbox" class=""  name="p_dayweek" value="토">
												<label for="">토</label>

												<input type="checkbox" class=""  name="p_dayweek" value="일">
												<label for="">일</label>
											</td>
											<td class="table-secondary"><label for="">모집인원</label></td>
											<td><input type="text" class="" name="p_demand" value="" required>명/일</td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">봉사구분</label></td>
											<td><select name ="p_onoff" required>
													<option value="오프라인">오프라인</option>
													<option value="온라인">온라인</option>

											</select></td>
											<td class="table-secondary"><label for="">봉사자유형</label></td>
											<td><input type="radio" class="" name="p_target" value=성인" required >
												<label for="">성인</label>
												<input type="radio" class="" name="p_target" value="청소년">
												<label for="">청소년</label>
												<input type="radio" class="" name="p_target" value="무관">
												<label for="">무관</label>
											</td>
										</tr>
										<tr>
											<td class="table-secondary"><label for="">내용</label></td>
											<td colspan="3">
												<textarea rows="10" cols="80" type="radio" class="" name="p_content" required></textarea>
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


	<!-- 	<footer
 -->
</body>
</html>

