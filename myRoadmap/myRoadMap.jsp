<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="RoadMap.RoadMapDAO" %>
<%@ page import="RoadMap.RoadMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="User.User" %>
<%@ page import="User.UserDAO" %>
<%request.setCharacterEncoding("UTF-8");%>

<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	} 
    RoadMapDAO roadMapDAO = new RoadMapDAO();
    ArrayList<RoadMap> myRoadMapList = roadMapDAO.getMyRoadMaps(userID);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

  <div id="nav-container">
      <a href="../main/main.jsp"><div id="logo">curri<br>comp</div></a>
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
  

<h1>내가 작성한 RoadMap 목록</h1>

<%
    for (RoadMap roadMap : myRoadMapList) {
%>
    <div id="map-container">
        <h2 id="title"><%= roadMap.getMapTitle() %></h2>
        <p id="map-date"> <%= roadMap.getMapDate() %></p>
        <p id="map-content"><%= roadMap.getMapContent() %></p>
      <a class="map-content" id="modify" href="roadmapModify.jsp?mapNum=<%= roadMap.getMapNum() %>">수정</a>
        <a class="map-content" id="delete" href="roadmapDelete.jsp?mapNum=<%= roadMap.getMapNum() %>">삭제</a></div>

<%
    }
%>

<a id="addBtn" href="./roadmapWrite.jsp">로드맵 추가하기</a>



</body>
</html>