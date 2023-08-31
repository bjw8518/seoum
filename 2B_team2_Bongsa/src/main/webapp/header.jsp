
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="name" value="${sessionScope }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Seoum</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/vendor/aos/aos.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" type="text/css">
<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header id="header" class="header d-flex align-items-center">
		<div class="container-fluid container-xl d-flex align-items-center justify-content-between">
			<a href="index.do" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo --> <!-- <img src="assets/img/logo.png" alt=""> -->
				<h1>
					서움<span>.</span>
				</h1>
			</a>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="About.jsp">서움소개</a></li>
					<li><a href="notice.jsp">공지사항</a></li>
					<li><a href="vol_list.do" id="sele" onclick="window.open('selenium.jsp')" target="_blank"]>봉사정보</a></li>
					<c:catch>
						<c:choose>
							<c:when test="${empty name }">
								<li><a href="login.do">로그인</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item dropdown"><a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown"> ${user.mem_name} </a>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="mypage.do">마이페이지</a></li>
										<li><a class="dropdown-item" href="logout.do">로그아웃</a></li>
									</ul></li>
							</c:otherwise>
						</c:choose>
					</c:catch>
				</ul>
			</nav>
			<!-- .navbar -->
			<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
		</div>
	</header>
	<!-- </body>
</html> -->