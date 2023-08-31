<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>회원정보 수정</title>
<link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/myfin.css" media="screen">

<script class="u-script" type="text/javascript" src="js/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="js/nicepage.js"
	defer=""></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/chack.js"></script>
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
<%@include file="/header.jsp" %>
	<!-- <header -->
	<div class="text-center">
		<nav class="navbar navbar-expand-lg w-100 border-bottom">
			<div class="container conw_96">
				<div class="collapse navbar-collapse f_13" id="navbarNav">
					<ul class="navbar-nav ">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="my_applicant.do">나의 봉사 현황</a></li>
						<li class="nav-item active"><a class="nav-link" href="my_modify.do">내
								정보 수정</a></li>
					</ul>
				</div>
			</div>
		</nav>


		<div class="container conw_96 f_13">
			<div class="row">
				<div class="rounded border col-3 m-3 p-3">
					<ul class=" list-group list-group-flush ">
						<li class="list-group-item"><h5 class="">내 정보 수정</h5></li>
						<li class="list-group-item"><a href="my_modify.do" class="nav-link">회원
								정보 수정</a></li>
						<!-- 						<li class="list-group-item"><a href="#"
							class="nav-link ">비밀번호 수정</a></li>
						<li class="list-group-item"><a href="#"
							class="nav-link ">?</a></li> -->
						<li class="list-group-item"></li>
					</ul>
				</div>



				<div class="col-8 rounded border m-3">
					<h4 class="mt-3 text-start">내 정보 수정</h4>
					<form action="">
						<div class="mb-3 row">
							<label for="user_id" class="col-form-label col-sm-2">아이디</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-sm"
									id="user_id" name="mem_id" placeholder="" value="${user.mem_id } " readonly>
							</div>
						</div>
						<div class="mb-3 row">
							<div class="col row">
								<label for="user_pw" class="col-form-label col-sm-4">비밀번호</label>
								<div class="col-sm-8">
									<input type="text" class="form-control form-control-sm"
										id="user_pw" name="mem_pw" placeholder="" value="${user.mem_pw } ">
								</div>
							</div>
							<div class="col row">
								<label for="user_id" class="col-form-label col-sm-4">확인</label>
								<div class="col-sm-8">
									<input type="text" class="form-control form-control-sm"
										id="user_pw_ck" name="mem_pwck" placeholder="" value="${user.mem_pw } ">


								</div>
							</div>

						</div>
						<div class="mb-3 row">
							<label for="user_nm" class="col-form-label col-sm-2">이름</label>
							<div class="col-sm-10">
								<input type="text" class="form-control form-control-sm"
									id="user_nm" name="mem_name" placeholder="" value="${user.mem_name } ">
							</div>
						</div>

						<div class="mb-3 row">
							<label for="user_id" class="col-form-label col-sm-2">연락처</label>
							<div class="col-sm-10 row">
								<div class="input-group mb-1 col">
									<input type="text" class="form-control form-control-sm"
										id="user_phone1" name="mem_phone1" placeholder=""
										aria-describedby="basic-addon2" value="${user.mem_id } ">
								</div>

								<div class="input-group mb-1 col">
									<input type="text" class="form-control form-control-sm"
										id="user_phone2" name="mem_phone2" placeholder="" value="${user.mem_id } ">

								</div>

								<div class="input-group mb-1 col">
									<input type="text" class="form-control form-control-sm"
										id="user_phone3" name="mem_phone3" placeholder="" value="${user.mem_id } ">

								</div>
							</div>
						</div>
						<div class="mb-3 row">
							<label for="user_email" class="col-form-label col-sm-2">이메일</label>
							<div class="col-sm-10">
								<div class="input-group mb-1 col">
									<input type="text" name="str_email01"
										class="form-control form-control-sm" id="user_email"
										name="mem_email" value="${user.mem_email } "> @ <input type="text"
										name="str_email02" class="form-control form-control-sm"
										id="user_email_ac" disabled value="naver.com"> <select
										name="selectEmail" class="form-select form-select-sm"
										id="selectEmail">
										<option value="1">직접입력</option>
										<option value="naver.com" selected>naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="empas.com">empas.com</option>
										<option value="dreamwiz.com">dreamwiz.com</option>
										<option value="freechal.com">freechal.com</option>
										<option value="lycos.co.kr">lycos.co.kr</option>
										<option value="korea.com">korea.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hanmir.com">hanmir.com</option>
										<option value="paran.com">paran.com</option>
									</select>
								</div>
							</div>
						</div>


						<div class="mb-3 row">
							<label for="user_addr" class="col-form-label col-sm-2">주소</label>
							<div class="col-sm-10 mb-3 row">
								<div class="input-group mb-1 col">
									<input type="text" class="form-control form-control-sm"
										placeholder="우편번호" name="mem_adrpost">
									<button class="btn btn-outline-secondary btn-sm" type="button"
										id="button-addon2">우편번호 찾기</button>
								</div>
								<div class="input-group mb-1 col">
									<input type="text" class="form-control form-control-sm"
										placeholder="주소지" id="user_addr" name="mem_addr" value="${user.mem_addrs } ">
								</div>
							</div>
							<div class="mb-3 row col-sm-10 offset-md-2">
								<input type="text" class="form-control form-control-sm"
									id="user_dtaddr" placeholder="상세주소" name="mem_dtaddr" value="${user.mem_dtaddrs } ">
							</div>
						</div>

						<div class="mb-3 row">
							<label for="user_id" class="col-form-label col-sm-2">생년월일</label>
							<div class="col-sm-10 row">
								<div class="input-group input-group-sm mb-1 col">
									<input type="text" class="form-control form-control-sm"
										id="user_id" placeholder=""> <span
										class="input-group-text form-control-sm"
										id="inputGroup-sizing-sm">년</span>
								</div>
								<div class="input-group input-group-sm mb-1 col">
									<input type="text" class="form-control form-control-sm"
										id="user_id" placeholder=""> <span
										class="input-group-text " id="inputGroup-sizing-sm">월</span>
								</div>
								<div class="input-group input-group-sm mb-1 col">
									<input type="text" class="form-control form-control-sm"
										id="user_id" placeholder=""> <span
										class="input-group-text" id="inputGroup-sizing-sm">일</span>
								</div>
							</div>
						</div>
						<div class="mb-3 row">
							<div class="col row">
								<label for="user_id" class="col-form-label col-sm-4">성별</label>
								<div class="col-sm-8">
									<select name="selectEmail" class="form-select form-select-sm"
										id="selectEmail">
										<option value="1">직접입력</option>
										<option value="1">직접입력</option>
									</select>
								</div>
							</div>
							<div class="col row">
								<label for="user_id" class="col-form-label col-sm-4">회원구분</label>
								<div class="col-sm-8">

									<select name="selectEmail" class="form-select form-select-sm"
										id="selectEmail">
										<option value="1">직접입력</option>
										<option value="1">직접입력</option>
									</select>

								</div>
							</div>
						</div>
						<div class="col-auto">
							<input type="button" class="btn btn-primary btn-sm"
								onclick="formCheck()" value="수정">
						</div>


					</form>
				</div>
			</div>
		</div>
	</div>




</body>
</html>


<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						// if(data.userSelectedType === 'R'){
						//     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						//     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						//     if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						//         extraAddr += data.bname;
						//     }
						//     // 건물명이 있고, 공동주택일 경우 추가한다.
						//     if(data.buildingName !== '' && data.apartment === 'Y'){
						//         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						//     }
						//     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						//     if(extraAddr !== ''){
						//         extraAddr = ' (' + extraAddr + ')';
						//     }
						//     // 조합된 참고항목을 해당 필드에 넣는다.
						//     document.getElementById("sample6_extraAddress").value = extraAddr;

						// } else {
						//     document.getElementById("sample6_extraAddress").value = '';
						// }

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>

