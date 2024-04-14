<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
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
  <link rel="stylesheet" href="style.css"/>
  <title>CurriComp</title>
</head>
<body>

  <div class="header">
    <div id="title"> CurriComp </div>
    <div id="header-button">
      <%-- 세션에서 userID가 존재하는지 확인하여 로그인 상태 체크 --%>
      <% 
      String userID = (String)session.getAttribute("userID");
         if (userID == null) { %>
            <a href="login.jsp"> <div id="log-in">로그인</div> </a>
            <a href="join.jsp"> <div id="sign-in">회원가입</div> </a>
      <% } else { %>
            <a href="logoutAct.jsp"> <div id="log-in">로그아웃</div> </a>
      <% } %>
    </div>
  </div>
    
  <hr>

  <div class="main-content">
    <%String find = "boardTitle";
    int pageNum = 1;
  	%>
  <form action="../community/communitySearch.jsp?pageNum=1" method="post">
  <input type="hidden" name="pageNum" value="<%= pageNum %>">
  <input type="hidden" name="find" value="<%= find %>">
    <div id="search-container">
     <img src="../search-icon.png" alt="돋보기 이미지" id="search-icon"> 
    <input type="text" name="search" id="search" size="40px" placeholder="키워드를 입력하세요.">
	<input type="submit" value=" 검색 " id="searchButton">
	</div>
	</form>
	

    <div class="icons">
      <a class="icon" href="../curriculum/curriculum.jsp"><img src="./img/curriculum-icon.png" alt="커리큘럼 이미지" id="curriculum-icon"> 커리큘럼 </a>
      <a class="icon" href="../study-info/study-info.jsp"><img src="./img/information-icon.png" alt="학습정보 이미지" id="information-icon"> 학습정보</a>
      <a class="icon" href="../news/news.jsp"><img src="./img/news-icon.png" alt="뉴스 이미지" id="news-icon"> 뉴스 </a>
      <a class="icon" href="../community/communityBoard.jsp"><img src="./img/community-icon.png" alt="커뮤니티 이미지" id="community-icon">커뮤니티</a>
      <a class="icon" href="../myRoadmap/myRoadMap.jsp"><img src="./img/myroadmap-icon.png" alt="마이로드맵 이미지" id="myroadmap-icon">MyRoadMap</a>
    </div>
  </div>


  
    
  </div>

</body>
</html>