<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>뿌리는거 되는지 확인하려고 만든 페이지</h2>

봉사제목 <div>${apply.ap_ptitle }</div>
봉사기관 <div>${apply.ap_aname }</div>
봉사날짜 <div>${apply.ap_pdate }</div>
봉사시간<div>${apply.ap_ptime }</div>

신청자이름<div>${apply.ap_mname }</div>
신청자연락처<div>${apply.ap_mphone }</div>
신청 상태<div>${apply.ap_state }</div>

<a href="apply_cancle.do" >취소테스트 버튼</a>
<div></div>
</body>
</html>