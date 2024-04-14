<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <link href="style.css" rel="stylesheet" type="text/css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="../cc.png" type="image/x-icon">
  <title>CurriComp</title>
</head>

<body>

  <div id="commonContent">

    <div id="nav-container">
      <a href="../main/main.jsp">
        <div id="logo">curri<br>comp</div>
      </a>

      <nav id="nav">
        <ul>
          <li><a href="../curriculum/curriculum.jsp">커리큘럼</a></li>
          <li><a href="../study-info/study-info.jsp">학습 정보</a></li>
          <li><a href="../news/news.jsp">뉴스</a></li>
          <li><a href="../community/communityBoard.jsp">커뮤니티</a></li>
          <li><a href="../myRoadmap/myRoadMap.jsp">MyRoadMap</a></li>
        </ul>
      </nav>

    </div>
    <hr>
  
    <div class="vertical-nav">
      <p>Select<br>view</p>
      <ul>
        <div class="vnav-group">
        <li class="group-title">대외활동</li>
        <li ><div class="vnav-content" id="club-link"> <a>동아리</a> </div></li>
        <li ><div class="vnav-content" id="edu-link"> <a>교육 프로그램</a></div></li>
        <li ><div class="vnav-content" id="contest-link"><a>IT 공모전</a> </div> </li>
        </div>
      </ul>
    </div>
    <div id="vertical-line"></div>
  </div>
  
  </body>
  

  <div id="news-container">


    <a href="https://www.sopt.org/">
      <div class="content club-content"><img src="club1.png"><p> 연합 IT 동아리 <br> SOPT</p><div class="d-day">D - 3</div></div>
    </a>
    
   
    <a href="https://depromeet.com/">
      <div class="content club-content"><img src="club4.png"><p> IT 커뮤니티 <br> 디프만</p><div class="d-day">D - 16</div></div>
    </a>
    

    <a href="https://www.ssafy.com/ksp/jsp/swp/swpMain.jsp">
      <div class="content edu-content"><img src="edu1.png"><p> 삼성 청년 SW 아카데미 <br> SAFFY </p><div class="d-day">D - 2</div></div>
    </a>
    
    <a href="https:https://prography.org///boostcamp.connect.or.kr/">
      <div class="content edu-content"><img src="edu2.png"><p> 부스트 캠프 </p> <div class="d-day">D - 9</div></div>
    </a>
   
    <a href="https://techblog.woowahan.com/11427/">
      <div class="content edu-content"><img src="edu3.png"><p> 우아한 테크 캠프 </p><div class="d-day">D - 12</div></div>
    </a>

    <a href="https://ncamp.kr/">
      <div class="content edu-content"><img src="edu4.png"><p> 네이버 클라우드 캠프 </p><div class="d-day">D - 13</div></div>
    </a>
  

    <a href="https://gcontest.co.kr/front/m/comp/view/14622">
      <div class="content contest-content"><img src="con1.png"><p> 헬스 케어 AI 경진 대회 </p><div class="d-day">D - 13</div></div>
    </a>
   
    <a href="https://ausg.me/" >
      <div class="content club-content"><img src="club2.png"><p> 클라우드 커뮤니티 <br> AUSG</p><div class="d-day">D - 6</div></div>
    </a>
    
    <a href="https://www.yapp.co.kr/">
      <div class="content club-content"><img src="club3.png"><p> IT 동아리 <br> YAPP </p><div class="d-day">D - 8</div></div>
    </a>

  
    <a href="https://dacon.io/competitions/official/236198/overview/description">
      <div class="content contest-content"><img src="con2.png"><p> DACON 데이터 분석 <br> 아이디어 경진대회 </p><div class="d-day">D - 3</div></div>
    </a>

   
    
    <a href="https://prography.org/" >
      <div class="content club-content"><img src="club5.png"><p> IT 동아리 <br> prography</p><div class="d-day">D - 21</div></div>
    </a>
   
    <a href="https://teamnexters.com/" >
      <div class="content club-content"><img src="club6.png"><p> IT 커뮤니티 <br>  Nexters</p><div class="d-day">D - 23</div></div>
    </a>


    <a href="https://mash-up.kr/" >
      <div class="content club-content"><img src="club7.png"><p> IT 개발 동아리 <br>Mash-up</p><div class="d-day">D - 31</div></div>
    </a>

    <a href="https://dddstudy.medium.com/" >
      <div class="content club-content"><img src="club8.png"><p>IT 연합 동아리 <br> DDD</p><div class="d-day">D - 45</div></div>
    </a>



  </div>

  <script> 

    var a = document.getElementsByClassName('content'); 
    for(var i = 0; i < a.length; i++) { 
      a[i].target = "_blank"; 
    } 
  
    document.getElementById('club-link').addEventListener('click', function(event) {
      event.preventDefault();
      showClubContents();
    });
  
    document.getElementById('edu-link').addEventListener('click', function(event) {
      event.preventDefault();
      showEduContents();
    });
  
    document.getElementById('contest-link').addEventListener('click', function(event) {
      event.preventDefault();
      showContestContents();
    });
  
    function showClubContents() {
      var clubContents = document.getElementsByClassName('club-content');
      var eduContents = document.getElementsByClassName('edu-content');
      var contestContents = document.getElementsByClassName('contest-content');
  
      // club-content 보이기
      for (var i = 0; i < clubContents.length; i++) {
          clubContents[i].style.display = 'block';
      }
  
      // edu-content, contest-content 숨기기
      for (var j = 0; j < eduContents.length; j++) {
          eduContents[j].style.display = 'none';
      }
      for (var k = 0; k < contestContents.length; k++) {
          contestContents[k].style.display = 'none';
      }
    }
  
    function showEduContents() {
      var eduContents = document.getElementsByClassName('edu-content');
      var clubContents = document.getElementsByClassName('club-content');
      var contestContents = document.getElementsByClassName('contest-content');
  
      // edu-content 보이기
      for (var i = 0; i < eduContents.length; i++) {
          eduContents[i].style.display = 'block';
      }
  
      // club-content, contest-content 숨기기
      for (var j = 0; j < clubContents.length; j++) {
          clubContents[j].style.display = 'none';
      }
      for (var k = 0; k < contestContents.length; k++) {
          contestContents[k].style.display = 'none';
      }
    }
  
    function showContestContents() {
      var contestContents = document.getElementsByClassName('contest-content');
      var clubContents = document.getElementsByClassName('club-content');
      var eduContents = document.getElementsByClassName('edu-content');
  
      // contest-content 보이기
      for (var i = 0; i < contestContents.length; i++) {
          contestContents[i].style.display = 'block';
      }
  
      // club-content, edu-content 숨기기
      for (var j = 0; j < clubContents.length; j++) {
          clubContents[j].style.display = 'none';
      }
      for (var k = 0; k < eduContents.length; k++) {
          eduContents[k].style.display = 'none';
      }
    }
  </script>

</body>

</html>