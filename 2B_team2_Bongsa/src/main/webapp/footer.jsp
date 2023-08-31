<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="name" value="${sessionScope }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<footer id="footer" class="footer">

        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-5 col-md-12 footer-info">
                    <a href="index.jsp" class="logo d-flex align-items-center">
                        <span>서로도움</span>
                    </a>
                </div>

                <div class="col-lg-2 col-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="About.jsp">서움소개</a></li>
                         <li><a href="login.jsp">로그인</a></li>
                        <li><a href="notice.jsp">공지사항</a></li>
            
                    </ul>
                </div>

                <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
                    <h4>Contact Us</h4>
                    <p>
                        <strong>인천 폴리텍대학 5기술관</strong><br>
                        <strong>전화:</strong> +1 5589 55488 55<br>
                        <strong>이메일:</strong> info@example.com<br>
                    </p>

                </div>

            </div>
        </div>

        <div class="container mt-4">
            <div class="copyright">
                &copy; Copyright <strong><span>Seoum</span></strong>. All Rights Reserved
            </div>
        </div>

    </footer>

<!-- </body>
</html> -->