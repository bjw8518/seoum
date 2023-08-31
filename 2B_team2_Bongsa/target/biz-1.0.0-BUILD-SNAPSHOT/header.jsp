 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="name" value="${sessionScope.userid }" />
    <%--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 --%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
                <a class="navbar-brand" href="#!">서움로고</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">서움 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">공지사항</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">봉사활동</a></li>
                        <c:if test="${name ne null} "> <li class="nav-item"><a class="nav-link" href="mypage.do"></a></li> </c:if>
                        
                        <c:if test="${name eq null} "><li class="nav-item"><a class="nav-link" href="login.do">로그인</a></li></c:if>
                    </ul>
                </div>
            </div>
        </nav>

<!-- </body>
</html> -->