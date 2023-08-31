<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@include file="/header.jsp"%>
	<%@include file="/chat.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>

</head>
<!-- ======= Hero Section ======= -->
    <section id="hero" class="hero">
        <div class="container position-relative">
            <div class="row gy-5" data-aos="fade-in">
                <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
                    <h2>도우며 사는 삶<br><span>서움</span></h2>
                    <p style="font-size:22px; font-family:'함초롬바탕 확장'";>간단하고도 슬기로운 봉사신청/구인 웹사이트</p>
                </div>
            </div>
        </div>

        <div class="icon-boxes position-relative">
            <div class="container position-relative">
                <div class="row gy-4 mt-5">

                    <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="100" onclick="location.href='About.jsp'">
                        <div class="icon-box">
                            <div class="icon"><i class="bi bi-easel"></i></div>
                            <h4 class="title"><a href="#############" class="stretched-link">소개</a></h4>
                        </div>
                    </div>
                    <!--End Icon Box -->

   				    <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="500" onclick="location.href='vol_list.do'">
                        <div class="icon-box">
                            <div class="icon"><i class="bi bi-list-task"></i></div>
                            <h4 class="title"><a href="#############" class="stretched-link">봉사 목록</a></h4>
                        </div>
                    </div>

                    <!--End Icon Box -->
                    
                           <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="200" onclick="location.href='service_ask.do'">
                        <div class="icon-box">
                            <div class="icon"><i class="bi bi-window"></i></div>
                            <h4 class="title"><a href="#############" class="stretched-link">봉사등록(기관용)</a></h4>
                        </div>
                    </div>

                    <!--End Icon Box -->

               	   <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="300" onclick="location.href='notice.jsp'">
                        <div class="icon-box">
                            <div class="icon"><i class="bi bi-exclamation-triangle"></i></div>
                            <h4 class="title"><a href="#############" class="stretched-link">공지사항</a></h4>
                        </div>
                    </div>
                    <!--End Icon Box -->

                </div>
            </div>
        </div>

        </div>
    </section>
    <!-- End Hero Section -->

    <main id="main">

        <!-- ======= About Us Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>서움에 대해</h2>
                    <p style="font-size:22px; font-family:'HY견고딕'";>서움은 봉사의 부담감을 없애기 위해 만들어진 봉사활동 사이트 입니다.<br> 대부분의 봉사자들의 부담감을 줄여, 더욱더 많은 봉사를 할수 있게 하며<br>그에따른 봉사활동 처들도 많은 이들의 도움을 얻을수 있게 됩니다.</p>
                </div>

                <div class="d-grid gap-2 col-6 mx-auto" style="padding-bottom:50px">
                    <button class="btn" type="button" onclick = "location.href = 'About.jsp' " style="background-color: #ffb947">자세히 알아보기</button>
                </div>



                <div class="row gy-4">
                    <div class="col-lg-6" style="text-align: center">
                        <img src="${pageContext.request.contextPath}/resources/images/iphone.png" class="img-fluid rounded-4 mb-4" alt="" height="430" width="322">
                    </div>
                    <div class="col-lg-6">
                        <div class="content ps-0 ps-lg-5">
                            <p style="font-size:22px; font-family:'HY견고딕'";>
                                컴퓨터가 없을땐?<br> 모바일 에서도 간단하게
                                <p style="font-size:20px; font-family:'HY견고딕'";>
                                    많은 사람들이 스마트폰을 소유하며, 스마트폰을 이용하여 삶을 살고있습니다. 스마트폰이 인간이 다루는 기기의 대부분의 시간을 소요하고 있다고 해도 과언이 아니죠. 그런분들을 위하여 굳이 컴퓨터를 키지않고도 간단하게, 사용을 할수있게 모바일에서도 불편하기 않도록 아름답게 만들었습니다.
                                </p>
                                <ul>
                                    <li><i class="bi bi-check-circle-fill"></i><p style="font-size:17px; font-family:'HY견고딕'";>모바일을 위한 최신 디자인 적용 및 사용자 편의성을 위해 제작되었습니다</li>
                                    <li><i class="bi bi-check-circle-fill"></i><p style="font-size:17px; font-family:'HY견고딕'";>홈페이지를 구성하는 각각의 요소들이 PC, 스마트폰, 태블릿 등 최적화 된 형태의 홈페이지의 환경을 제공합니다.</li>
                                    <li><i class="bi bi-check-circle-fill"></i><p style="font-size:17px; font-family:'HY견고딕'";>디바이스의 종류와 화면 크기에 상관없이 실시간으로 반응하여 웹 페이지에 최적화된 화면 구성으로 보여주는 ‘반응형 웹사이트’로 제작되었습니다.</li>
                                </ul>
                        </div>
                    </div>
                </div>

            </div>
        </section>

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
              <div class="section-header">
                    <h2>Contact</h2>
                    <p style="font-size:18px; font-family:'HY견고딕'";>쉽고, 빠르게 자신의 주변 봉사활동지도 찾을수 있으며, 당신은 부담가질필요 없이 봉사활동을 하거나 봉사자를 구할수 있습니다.<br>지금바로, 서움을 시작해보세요.</p>
                </div>
            <div class="image-box" data-aos="fade-up">
				<img class="image-thumbnail">
         

            </div>
        </section>
        <!-- End Contact Section -->

    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    
    <!-- End Footer -->
    <!-- End Footer -->

    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/vendor/aos/aos.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
	<%@include file="/footer.jsp"%>
</html>