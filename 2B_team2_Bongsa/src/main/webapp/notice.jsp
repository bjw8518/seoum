<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@include file="/header.jsp"%>
    		<%@include file="/chat.jsp"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>notice</title>
      <style type="text/css">
    body{
        line-height:2em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;
        margin:0;
}

    #mainWrapper{
        width: 1200px;
        margin: 0 auto;
    }

    #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:50px;
}

    #ulTable {margin-top:10px;}
    

    #ulTable > li:first-child > ul > li {
        background-color:#f19100;
        font-weight:bold;
        text-align:center;
}

    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
}
    #ulTable > li > ul > li { 
        float:left;
        font-size:10pt;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

    #ulTable > li > ul > li:first-child               {width:10%;}
    #ulTable > li > ul > li:first-child +li           {width:45%;} 
    #ulTable > li > ul > li:first-child +li+li        {width:15%;} 
    #ulTable > li > ul > li:first-child +li+li+li     {width:25%;} 


.container {
  margin-top: 50px;
}

.center {
text-align:center;
margin-top:10px;
}

</style>
 <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/notice.css" media="screen">
    <meta name="generator" content="Nicepage 4.18.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site1",
		"logo": "resources/images/c2807e11-5f92-5076-7dea-20574d73bd29.png"
}</script>
    <meta name="theme-color" content="#1847b8">
    <meta property="og:title" content="notice">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en">
    <section class="u-align-center u-clearfix u-section-1" id="sec-70b8">
      <div class="u-clearfix u-sheet u-sheet-1">
   <div class="container">
  <h1 style="font-family:arial ;"><p style = "font-family:'HY견고딕'";>공지 사항</p></h1>
       <div id="mainWrapper">
    <ul>
            <!-- 게시판 목록  -->
            <li>
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성자</li>
                            <li>작성일</li>
                        
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li>10</li>
                            <li >확인 부탁드립니다.</li>
                            <li>관리자</li>
                             <li>2022-11-20</li>
                        </ul>
                    </li> 
                              <li>
                        <ul>
                            <li>9</li>
                            <li >자세히 일어주세요.</li>
                            <li>관리자</li>
                             <li>2022-11-19</li>
                        </ul>
                    </li> 
                              <li>
                        <ul>
                            <li>8</li>
                            <li >알맞게 신청해주세요.</li>
                            <li>관리자</li>
                             <li>2022-11-19</li>
                        </ul>
                    </li> 
                     <li>
                        <ul>
                            <li>7</li>
                            <li >서로도움 서움입니다.</li>
                            <li>관리자</li>
                             <li>2022-11-19</li>
                        </ul>
                    </li>
                      <li>
                        <ul>
                            <li>6</li>
                            <li >봉사 사이트입니다.</li>
                            <li>관리자</li>
                             <li>2022-11-19</li>
                        </ul>
                    </li> 
                      <li>
                        <ul>
                            <li>5</li>
                            <li >양식에 맞춰주세요.</li>
                            <li>관리자</li>
                             <li>2022-11-19</li>
                        </ul>
                    </li> 
                      <li>
                        <ul>
                            <li>4</li>
                            <li >알맞게 확인해주세요.</li>
                            <li>관리자</li>
                             <li>2022-11-18</li>
                        </ul>
                    </li> 
                      <li>
                        <ul>
                            <li>3</li>
                            <li >제대로 읽어주세요.</li>
                            <li>관리자</li>
                             <li>2022-11-17</li>
                        </ul>
                    </li>  
                               <li>
                        <ul>
                            <li>2</li>
                            <li >확인 부탁드려요.</li>
                            <li>관리자</li>
                             <li>2022-11-10</li>
                        </ul>
                    </li> 
                               <li>
                        <ul>
                            <li>1</li>
                            <li >관리자 공지사항입니다.</li>
                            <li>관리자</li>
                             <li>2022-11-10</li>
                        </ul>
                    </li> 
                                           
                </ul>
            </li>
            </ul>

			</div>
	</div>
      </div>
    </section>
  
</body>
	<%@include file="/footer.jsp"%>
</html>