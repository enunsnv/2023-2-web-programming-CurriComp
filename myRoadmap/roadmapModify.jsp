<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="RoadMap.RoadMapDAO" %>
<%@ page import="RoadMap.RoadMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="User.User" %>
<%@ page import="User.UserDAO" %>
<%@ page import="java.util.List" %>
<%request.setCharacterEncoding("UTF-8");%>

<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
    String mapNumParam = request.getParameter("mapNum");
    if (mapNumParam == null || mapNumParam.isEmpty()) {
        response.sendRedirect("myRoadMap.jsp"); // mapNum이 없으면 목록 페이지로 이동
    }
    int mapNum = Integer.parseInt(mapNumParam);
    RoadMapDAO roadMapDAO = new RoadMapDAO();
    RoadMap roadMap = roadMapDAO.getRoadMap(mapNum);

    // 현재 로그인한 사용자와 글 작성자가 일치하지 않으면 수정 권한이 없음
    if (roadMap == null || !roadMap.getUserID().equals(userID)) {
        response.sendRedirect("myRoadMap.jsp"); // 작성자와 로그인한 사용자가 일치하지 않으면 목록 페이지로 이동
    }
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
          <li><a href="#">커리큘럼</a></li>
          <li><a href="../study-info/study-info.jsp">학습 정보</a></li>
          <li><a href="../news/news.jsp">뉴스</a></li>
          <li><a href="../community/communityBoard.jsp">커뮤니티</a></li>
          <li><a href="../myRoadmap/myRoadmap.jsp">MyRoadMap</a></li> 
        </ul>
      </nav>
    </div>
  
  <hr>
  
<h1>RoadMap 수정</h1>

<form action="roadmapModifyAct.jsp" method="post">
    <input type="hidden" name="mapNum" value="<%= roadMap.getMapNum() %>">
    
    <label for="mapTitle">제목</label>
    <input type="text" id="mapTitle" name="mapTitle" value="<%= roadMap.getMapTitle() %>" required><br>

    <label for="mapContent">내용</label>
    <textarea id="mapContent" name="mapContent" rows="4" required><%= roadMap.getMapContent() %></textarea><br>

    <input id="button" type="submit" value="수정하기">
</form>

</body>
</html>