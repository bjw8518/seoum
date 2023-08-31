<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Template</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/resources/css/style2.css" rel="stylesheet" type="text/css">
        <link href="/css/style2.css" rel="stylesheet" />
    </head>
    <body>
        <!--반응형 navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
                <a class="navbar-brand" href="#!">서움로고</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">공지사항</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">봉사정보</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">로그인</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="py-5">
            <div class="container px-lg-5" style="background-image:url(resources/images/image_3.jpg);">
                <div class="p-4 p-lg-5 rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold" ><span style="font-weight: 900; color:#FFFFFF;">모집봉사 기관</span></h1>
                    </div>
                </div>
            </div>
        </header>
        <!-- Page Content-->
        <section class="pt-4">
            <div class="container">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-hover">
                                <tr>
                                    <th class="table-secondary">봉사기관 명</th>
                                    <td>DB</td>
                                    <th class="table-secondary">소속 센터(주소)</th>
                                    <td>DB</td>
                                </tr>
                                <tr>
                                    <th class="table-secondary">담당자 명</th>
                                    <td>DB</td>
                                    <th class="table-secondary">담당 이메일</th>
                                    <td>DB</td>
                                </tr>
                                <tr>
                                    <th class="table-secondary">담당 전화번호</th>
                                    <td>DB</td>
                                    <th class="table-secondary">신청인원</th>
                                    <td>DB</td>
                                </tr>
                                <tr>
                                    <th class="table-secondary">활동구분</th>
                                    <td colspan="3">DB</td>
                                    
                                </tr>
                                <tr>
                                    <th class="table-secondary">주소</th>
                                    <td colspan="3">DB</td>
                                    
                                </tr>
                            </table>
                            <div class="row">
                                <!--지도-->
        <div id="map" style="width:100%;height:350px;"></div>

        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=508a76c1979dbd86c4ef54fb43ecf9a6"></script>
        <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
        
        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
        
        // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(37.478227, 126.759695); 
        
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });
        
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
        // marker.setMap(null);    
        </script>
        
                    <!--지도-->
                            </div>

                        </div>
                    </div>
                </div>

                </div>
            </div>
            <!--버튼-->
            <div class="support_btn">
                <button type="button" class="support_button" onclick="location.href='#'">목록</button>
            </div>
            <!--버튼-->
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; 인천광역시 부평구 무네미로 478<br>한국폴리텍대학 Korea Polytechnics (한국폴리텍 본부), 주소</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
