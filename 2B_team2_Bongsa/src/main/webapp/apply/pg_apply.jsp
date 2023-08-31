<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>봉사 신청</title>
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/vol-list.css" media="screen">
<meta name="generator" content="Nicepage 4.18.5, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<meta name="theme-color" content="#1847b8">
<meta property="og:title" content="봉사 신청">
<meta property="og:type" content="website">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">봉사활동 신청</h4>
				<form class="validation-form" novalidate method="post" action="apply.do">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label>봉사활동 제목</label> <input type="text" readonly class="form-control" name="ap_ptitle" value="${apform.p_title }"> <input type="hidden" name="ap_pid" value="${apform.p_id}" required>
						</div>
						<div class="col-md-6 mb-3">
							<label>봉사활동 기관</label> <input type="text" readonly class="form-control" name="ap_aname" value="${apform.p_agname }"> <input type="hidden" name="ap_aid" value="${apform.p_agencyid}" required>
						</div>
					</div>
					<div class="mb-3">
						<label>봉사활동 일정(수기, 수정예정)</label> <input readonly type="text" class="form-control" name="ap_pdate" value="${apform.p_startdate}" required>
						<div class="invalid-feedback">일정을 입력해주세요.</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label>봉사활동 시간</label> <input type="text" readonly class="form-control" name="ap_ptime" value="${apform.p_starttime }" required>
						</div>
						<div class="col-md-6 mb-3">
							<label>봉사활동 유형</label> <input type="text" readonly class="form-control" name="ap_mrole" value="${apform.p_target }" required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label>신청자 이름</label> <input type="text" class="form-control" name="ap_mname" value="${user.mem_name }" required> <input type="hidden" name="ap_mid" value="${loginUser.mem_id}">
							<div class="invalid-feedback">
								입력해주세요.
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<label>신청자 연락처</label> <input type="text" class="form-control" name="ap_mphone" value="${user.mem_phone }" required>
							<div class="invalid-feedback">
								입력해주세요.
							</div>
						</div>
						<div class="mb-3">
							<label>신청 날짜</label> <input type="date" class="form-control" name="ap_applyDate"  max=${apform.p_enddate} min=${apform.p_startdate} value="" required>
							<div class="invalid-feedback">
								날짜를 선택해주세요.
							</div>
						</div>
					</div>
					<hr class="mb-4">

					<div class="col-12">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="aggrement" required>
							<label class="form-check-label" for="aggrement">
								개인정보 수집 및 이용에 동의합니다.
							</label>
							<div class="invalid-feedback">
								약관에 동의해주세요
							</div>
						</div>
					</div>
			</div>
			<div class="mb-4"></div>
				<input class="btn btn-primary btn-lg btn-block" type="submit">봉사 신청</input>
			</form>
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 봉사활동 서움</p>
	</footer>
	</div>
	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
	$(document).ready(function () {
		var msg ='${msg}';
		if (msg!=null&&msg!='') {
			alert(msg);
		}
	});

  </script>
</body>
</html>