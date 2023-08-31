<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/header.jsp"%>
    		<%@include file="/chat.jsp"%>
<!DOCTYPE html>

<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="서로도움">
<meta name="description" content="">
<title>공고 목록</title>
<link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
<link rel="stylesheet" href="resources/css/vol-list.css" media="screen">
<meta name="generator" content="Nicepage 4.18.5, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">



<meta name="theme-color" content="#1847b8">
<meta property="og:title" content="공고 목록">
<meta property="og:type" content="website">
</head>
<body class="u-body u-xl-mode" data-lang="en">
	<section
		class="u-align-center u-clearfix u-image u-shading u-section-1" src=""
		id="sec-32c6" data-image-width="560" data-image-height="300">
		<div class="u-align-center u-clearfix u-sheet u-sheet-1">
			<h2 class="u-text u-text-default u-text-1">봉사 목록</h2>
		</div>
	</section>
	<section class="u-clearfix u-grey-10 u-section-2" id="sec-e90d">
		<div class="u-clearfix u-sheet u-sheet-1">
			<!--blog-->
			<!--blog_options_json-->
			<!--{"type":"Recent","source":"","tags":"","count":""}-->
			<!--/blog_options_json-->
			<div class="u-blog u-expanded-width u-pagination-center u-blog-1">
				<div class="u-repeater u-repeater-1">
					<!--blog_post-->
					<c:forEach var="list" items="${list}" varStatus="status">

						<div
							class="u-align-left-xs u-blog-post u-container-style u-repeater-item u-video-cover u-white">
							<div
								class="u-container-layout u-similar-container u-valign-bottom-lg u-valign-top-xl u-container-layout-2">

								<!-- 타이틀 들어가는 부분  -->
								<h4
									class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-blog-control u-text u-text-3">
									<a class="u-post-header-link" href="vol_dtpg.do?p_id=${list.p_id}">
										<p style="font-size:25px; font-family:'HY견고딕'";><!--blog_post_header_content-->${list.p_title}<!--/blog_post_header_content--></p>
									</a>
								</h4>
								<!--/blog_post_header-->
								<!--blog_post_metadata-->


								<div
									class="u-blog-control u-metadata u-text-grey-40 u-metadata-2">
									<!--blog_post_metadata_date-->
									<span class="u-meta-date u-meta-icon">
									</span>
									<!--/blog_post_metadata_date-->
									<!--blog_post_metadata_comments-->
									<span class="u-meta-comments u-meta-icon">
									
										Comments (0)<!--/blog_post_metadata_comments_content-->
									</span>
									<!--/blog_post_metadata_comments-->
								</div>
								<!--/blog_post_metadata-->
								<!--blog_post_content-->
								<div
									class="u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-blog-control u-post-content u-text u-text-4">
										<p style="font-size:20px; font-family:'한컴 고딕'";>
									<!--blog_post_content_content-->${list.p_content}
									...
									<!--/blog_post_content_content-->
									</p>
								</div>
								<!--/blog_post_content-->
								<!--blog_post_readmore-->
								<a  href="vol_dtpg.do?p_id=${list.p_id}"
									class="u-blog-control u-btn u-button-style u-btn-2" style="background: #f0913a;">
									<!--/options_json-->상세보기<!--/blog_post_readmore_content-->
								</a>
								<!--/blog_post_readmore-->
							</div>
						</div>
						<!--/blog_post-->
						<!--blog_post-->


					</c:forEach>

				</div>

			</div>
			<!--/blog-->
		</div>
	</section>

</body>
	<%@include file="/footer.jsp"%>
</html>