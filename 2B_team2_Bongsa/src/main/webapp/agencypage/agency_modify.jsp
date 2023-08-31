<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>기관정보 수정</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/agencypage/js/ac_modify.js"></script>
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
<body class="u-body u-xl-mode bg-light" data-lang="en">
	<!-- 헤더 -->
	<div class="container-fluid bg-white navbar navbar-expand-lg w-100 border-bottom" style="color:#000;">
		<div class="container conw_96" style="position:relative; right: 180px; top: 2px;">
			<div class="collapse navbar-collapse f_13" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link py-3 active " href="program_on.do">공고 관리</a></li>
					<li class="nav-item"><a class="nav-link py-3 active " href="applicant_un.do">신청 현황</a></li>
					<li class="nav-item"><a class="nav-link py-3 active  " href="agency_modify.do">기관 정보 관리</a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">뭐하지 ㅎㅎ</a></li> -->
				</ul>
			</div>
		</div>
	</div>
	<div class="container  rounded border bg-white  my-3 mx-auto col-4">
		<div class=" p-3">
			<h4 class="mt-3">기관 정보 수정</h4>
			<span>기관 정보를 수정 할 수 있습니다. </span>
			<hr>
			<form action="agency_modify.do" method="post" id="agencymodify">
				<input type="hidden" neme="mem_select" value="${user.mem_select }">
				<div class="mb-3 row">
					<div class="">아이디</div>
					<div class="">
						<input type="text" class="form-control" id="user_id" aria-describedby=validationServerUsernameFeedback name="mem_id" placeholder="아이디" value="${user.mem_id }" disabled>
						<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
					</div>
				</div>
				<div class="mb-3 row">
					<div class="">비밀번호</div>
					<div class="col row">
						<div class="">
							<input type="password" class="form-control " id="user_pw" name="mem_pw" placeholder="비밀번호" value="${user.mem_pw }">
							<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
						</div>
					</div>
					<div class="col row">
						<div class="">
							<input type="password" class="form-control " id="user_pw_ck" name="mem_pwck" placeholder="비밀번호 확인" value="${user.mem_pw }">
							<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
						</div>
					</div>
				</div>
				<div class="mb-3 row">
					<div class="">이름</div>
					<div class="">
						<input type="text" class="form-control " id="user_nm" name="mem_name" placeholder="이름(기관명)" value="${user.mem_name } ">
						<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
					</div>
				</div>
				<div class="mb-3 row">
					<div class="">연락처</div>
					<div class="">
						<input type="tel" class="form-control " id="user_tel" name="mem_phone" placeholder="연락처" value="${user.mem_phone }">
						<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
					</div>
				</div>
				<div class="mb-3 row">
					<div class="">이메일</div>
					<div class="">
						<div class="input-group mb-1 col">
							<input type="text" class="form-control " id="user_email" placeholder="이메일" value="${fn:split(user.mem_email,'@')[0] }"><span id="middle">@</span>
							<input type="text" class="form-control " id="domain-txt" disabled value="${fn:split(user.mem_email,'@')[1] }"> <select class="form-select" id="domain-list"  value="${fn:split(user.mem_email,'@')[1] }">
								<option value="1">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="korea.com">korea.com</option>
								<option value="gmail.com">gmail.com</option>
							</select> <input type="hidden" id="totalemail" name="mem_email" value="">
							<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
						</div>
					</div>
				</div>
				<div class=" row">
					<div class="">주소</div>
					<div class="mb-3 row col">
						<div class="input-group col">
							<input type="text" class="form-control " placeholder="우편번호" value="${user.mem_post } " name="mem_adrpost" id="u_post">
							<button class="btn btn-outline-secondary btn-sm" type="button" id="button-addon2">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
							</button>
						</div>
						<div class="input-group row col">
							<input type="text" class="form-control " placeholder="주소지" value="${user.mem_addrs } " name="mem_addrs" id="u_addr">
						</div>
					</div>
					<div id="validationServerUsernameFeedback" class="invalid-feedback addrmsg"></div>
					<div class="mb-3 row mx-0">
						<input type="text" class="form-control " id="u_dtaddr" placeholder="상세주소" name="mem_dtaddrs" value="${user.mem_dtaddrs } ">
					</div>
				</div>
				<div class="mb-3 row">
					<div class="">회원구분</div>
					<div class="">
						<select name="mem_role" class="form-select " id="selectRole">
							<c:forEach items="${roleOptionList2}" var="option">
								<option value="${option.value }" <c:if test="${user.mem_role eq option.value }">selected</c:if>>${option.value }</option>
							</c:forEach>
						</select>
						<div id="validationServerUsernameFeedback" class="invalid-feedback "></div>
					</div>
				</div>
				<div class="col-auto">
					<input type="button" class="btn btn-primary btn-sm" id="subbtn" value="수정">
				</div>
			</form>
		</div>
	</div>

	<!-- 푸터~~ -->
</body>
</html>