<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bot.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bot_main.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
:root { -
	-peekobot-height: 40vh; -
	-peekobot-width: 20vh; -
	-peekobot-avatar: url();
}

.jin {
	bottom: 0;
	position: fixed;
	margin: 1em;
	right: 0;
	z-index: 998;
}

.jin.woo>#peekobot-container {
	opacity: 1;
}

#peekobot-container {
	opacity: 0;
	position: fixed;
	transform-origin: left top;
	right: 85px;
	bottom: 20px;
	background-color: #fff;
}

/* 버튼~~~ */
.fab {
	display: block;
	width: 56px;
	height: 56px;
	border-radius: 50%;
	text-align: center;
	color: #f0f0f0;
	margin: 25px auto 0;
	box-shadow: 0 0 4px rgba(0, 0, 0, .14), 0 4px 8px rgba(0, 0, 0, .28);
	cursor: pointer;
	-webkit-transition: all .1s ease-out;
	transition: all .1s ease-out;
	position: relative;
	z-index: 998;
	overflow: hidden;
	background: #42a5f5;
}

.fab>i {
	font-size: 2em;
	line-height: 55px;
	-webkit-transition: all .2s ease-out;
	-webkit-transition: all .2s ease-in-out;
	transition: all .2s ease-in-out;
}

.fab:active, .fab:focus, .fab:hover {
	box-shadow: 0 0 6px rgba(0, 0, 0, .16), 0 6px 12px rgba(0, 0, 0, .32);
}

.fab {
	-webkit-transition-delay: 25ms;
	transition-delay: 25ms;
}
</style>
</head>
<body>
	<!--챗봇-->
	<div class="jin">
		<div id="peekobot-container">
			<div id="peekobot-inner">
				<div id="peekobot"></div>
			</div>
		</div>
		<a id="prime" class="fab is-float is-visible"> <i class="prime zmdi zmdi-close is-active is-visible"></i>
		</a>
	</div>
	<!--챗봇-->
	<script>
		$("#prime").click(function() {
			toggleJinwoo();
		});
		function toggleJinwoo() {
			$('.jin').toggleClass('woo');
			$('#prime').toggleClass('is-float');
			$('.prime').toggleClass('zmdi-comment-outline');
			$('.prime').toggleClass('zmdi-close');
			$('.prime').toggleClass('is-active');
			$('.prime').toggleClass('is-visible');

		}
	</script>
	<script src="${pageContext.request.contextPath}/resources/js/conversation.js"></script>
	<script src="peekobot.js"></script>
</body>
</html>
</body>