<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding: 20px;
          }
          
          .coment{
            color:#fff;
            position:absolute;
            left:70px;
            top:17px;
          }
          .hoogie_title{
            padding-bottom:20px;
          }
          /* Bar Graph Horizontal */
          .bar-graph .year {
            -webkit-animation: fade-in-text 2.2s 0.1s forwards;
            -moz-animation: fade-in-text 2.2s 0.1s forwards;
            animation: fade-in-text 2.2s 0.1s forwards;
            opacity: 0;
          }
          
          .bar-graph-horizontal {
            max-width: 380px;
          }
          
          .bar-graph-horizontal > div {
            float: left;
            margin-bottom: 8px;
            width: 100%;
          }
          
          .bar-graph-horizontal .year {
            float: left;
            margin-top: 18px;
            width: 50px;
          }
          
          .bar-graph-horizontal .bar {
            border-radius: 3px;
            height: 55px;
            float: left;
            overflow: hidden;
            position: relative;
            width: 0;
          }
          /**/
          .bar-graph-one .bar::after {
            -webkit-animation: fade-in-text 2.2s 0.1s forwards;
            -moz-animation: fade-in-text 2.2s 0.1s forwards;
            animation: fade-in-text 2.2s 0.1s forwards;
            color: #fff;
            content: attr(data-percentage);
            font-weight: 700;
            position: absolute;
            left: 16px;
            float:right;
            top: 17px;
          }
          /**/
          
          .bar-graph-one .bar::after {
            -webkit-animation: fade-in-text 2.2s 0.1s forwards;
            -moz-animation: fade-in-text 2.2s 0.1s forwards;
            animation: fade-in-text 2.2s 0.1s forwards;
            color: #fff;
            content: attr(data-percentage);
            font-weight: 700;
            position: absolute;
            left: 16px;
            top: 17px;
          }
          
          .bar-graph-one .bar-one .bar {
            background-color: #64b2d1;
            -webkit-animation: show-bar-one 1.2s 0.1s forwards;
            -moz-animation: show-bar-one 1.2s 0.1s forwards;
            animation: show-bar-one 1.2s 0.1s forwards;
          }
          
          .bar-graph-one .bar-two .bar {
            background-color: #5292ac;
            -webkit-animation: show-bar-two 1.2s 0.2s forwards;
            -moz-animation: show-bar-two 1.2s 0.2s forwards;
            animation: show-bar-two 1.2s 0.2s forwards;
          }
          
          .bar-graph-one .bar-three .bar {
            background-color: #407286;
            -webkit-animation: show-bar-three 1.2s 0.3s forwards;
            -moz-animation: show-bar-three 1.2s 0.3s forwards;
            animation: show-bar-three 1.2s 0.3s forwards;
          }
          
          .bar-graph-one .bar-four .bar {
            background-color: #2e515f;
            -webkit-animation: show-bar-four 1.2s 0.4s forwards;
            -moz-animation: show-bar-four 1.2s 0.4s forwards;
            animation: show-bar-four 1.2s 0.4s forwards;
          }
          
          /* Bar Graph Horizontal Animations */
          @-webkit-keyframes show-bar-one {
            0% {
              width: 0;
            }
            100% {
              width: 69.6%;
            }
          }
          
          @-webkit-keyframes show-bar-two {
            0% {
              width: 0;
            }
            100% {
              width: 71%;
            }
          }
          
          @-webkit-keyframes show-bar-three {
            0% {
              width: 0;
            }
            100% {
              width: 74.7%;
            }
          }
          
          @-webkit-keyframes show-bar-four {
            0% {
              width: 0;
            }
            100% {
              width: 76.8%;
            }
          }
          
          @-webkit-keyframes fade-in-text {
            0% {
              opacity: 0;
            }
            100% {
              opacity: 1;
            }
          }
          
    </style>
</head>
<body>
    <section class="bar-graph bar-graph-horizontal bar-graph-one" style="margin:0 auto">
        <div class="bar-one">
          <h4 class="hoogie_title">이런점이 좋았어요</h4>
          <div class="bar" data-percentage="69.6%"><span class="coment">&#128516;처음이여도 잘 알려줘요</span></div>
        </div>
        <div class="bar-two">
          <div class="bar" data-percentage="71%"><span class="coment">&#128681위치를 찾기 편해요</span></div>
        </div>
        <div class="bar-three">
          <div class="bar" data-percentage="74.7%"><span class="coment">&#128582;만족감과 뿌듯함이 큰 활동이에요</span></div>
        </div>
        <div class="bar-four">
          <div class="bar" data-percentage="76.8%"><span class="coment">&#128106;좋은 추억을 쌓을수있어요</span></div>
        </div>
      </section>
      
</body>
</html>