<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="User.User" %>
<%@ page import="RoadMap.RoadMapDAO" %>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("UTF-8");%>

<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
  <link href="style.css" rel="stylesheet" type="text/css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="../cc.png" type="image/x-icon">
 
    <title>Write RoadMap</title>
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
						<li><a href="../myRoadMap/myRoadMap.jsp">MyRoadMap</a></li>
		
					</ul>
				</nav>
			</div>
			<hr>

<h1>RoadMap 작성</h1>

<form action="roadmapWriteAct.jsp" method="post">
    <label for="mapTitle">제목</label>
    <input type="text" id="mapTitle" name="mapTitle" required><br>

    <label for="mapContent">내용</label>
    <textarea id="mapContent" name="mapContent" rows="4" required></textarea><br>

    <input id="button" type="submit" value="작성하기">
</form>

</body>
</html>