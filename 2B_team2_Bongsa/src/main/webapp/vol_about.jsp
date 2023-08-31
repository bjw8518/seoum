<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/header.jsp"%>
    		<%@include file="/chat.jsp"%>
<%--     <c:set value=""  var="agency" />--%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="봉사제목DB">
    <meta name="description" content="">
    <title>${program.p_title}</title>
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/vol_about.css" media="screen">
    <meta name="generator" content="Nicepage 4.18.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
   
  </head>
  <body class="u-body u-xl-mode" data-lang="en">
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" id="sec-8f83" data-image-width="1680" data-image-height="600">
      <div class="u-align-center u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h2 class="u-text u-text-default u-text-1">봉사 등록 페이지</h2>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-2e40">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-border-3 u-border-grey-40 u-container-style u-group u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h1 class="u-align-center u-text u-text-default u-text-1">${program.p_title}</h1>
          </div>
        </div>
        <div class="u-table u-table-responsive u-table-1">
          <table class="u-table-entity u-table-entity-1">
            <colgroup>
              <col width="15.29%">
              <col width="25.48%">
              <col width="14.78%">
              <col width="44.46%">
            </colgroup>
            <tbody class="u-table-body">
              <tr style="height: 50px;">
                <td class="u-border-1 u-border-grey-30 u-palette-2-light-2 u-table-cell u-table-cell-1">봉사일</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${program.p_startdate}~${program.p_enddate}</td>
                <td class="u-border-1 u-border-grey-30 u-palette-2-light-2 u-table-cell u-table-cell-3">모집기간</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${program.p_open}~${program.p_close}</td>
              </tr>
              <tr style="height: 50px;">
                <td class="u-border-1 u-border-grey-30 u-palette-2-light-2 u-table-cell u-table-cell-5">봉사시간</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${program.p_starttime}~${program.p_endtime}</td>
                <td class="u-border-1 u-border-grey-30 u-palette-2-light-2 u-table-cell u-table-cell-7">봉사장소</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${program.p_agaddrs}</td>
              </tr>
              <tr style="height: 50px;">
                <td class="u-border-1 u-border-grey-30 u-palette-2-light-2 u-table-cell u-table-cell-9">모집인원</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${program.p_demand}</td>
                <td class="u-border-1 u-border-grey-30 u-palette-2-light-2 u-table-cell u-table-cell-11">모집 기관</td>
                <td class="u-border-1 u-border-grey-30 u-table-cell">${program.p_agname}</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="u-border-2 u-border-grey-75 u-container-style u-grey-5 u-group u-group-2">
          <div class="u-container-layout u-valign-middle u-container-layout-2">
            <p class="u-align-center u-text u-text-default u-text-2">${program.p_content}</p>
          </div>
        </div>
                <section style="margin:0 auto" class="bar-graph bar-graph-horizontal bar-graph-one">
  <div class="bar-one">
    <h4 class="hoogie_title">이런점이 좋았어요</h4>
    <div class="bar" data-percentage="60%"><span class="coment">&#128336;종료시간을 준수해요</span></div>
  </div>
  <div class="bar-two">
    <div class="bar" data-percentage="54%"><span class="coment">&#128168;문의에 답변이 빨라요</span></div>
  </div>
  <div class="bar-three">
    <div class="bar" data-percentage="44%"><span class="coment">&#128106;좋은 추억을 쌓을수있어요</span></div>
  </div>
</section>
        <a href="pg_apply.do?p_id=${program.p_id }" class="u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius-50 u-btn-1">봉사 신청하기</a>
      </div>
      
      <div id="map" style="width:70%;height:450px;margin:0 auto;"></div>
    </div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=593088f2eae94289e98262089bb40468"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(36.827293, 128.618782), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(36.827293, 128.618782); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);    
		</script>
    </section>
    
    
  
</body>
	<%@include file="/footer.jsp"%>
</html>