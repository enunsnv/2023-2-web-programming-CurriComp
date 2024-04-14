<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Community.CommunityDAO" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	  <link rel="icon" href="../cc.png" type="image/x-icon">
	  <link rel="preconnect" href="https://fonts.googleapis.com">
	  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <title>CurriComp</title>
	   <link rel="stylesheet" href="style.css"/>
	</head>
	<body>
	
	<div id="commonContent">

			<div id="nav-container">
				<a href="../main/main.jsp"><div id="logo">curri<br>comp</div></a>
				<nav id="nav">
					<ul>
						<li><a href="../curriculum/curriculum.jsp">커리큘럼</a></li>
						<li><a href="../study-info/study-info.jsp">학습 정보</a></li>
						<li><a href="../news/news.jsp">뉴스</a></li>
						<li><a href="../community/communityBoard.jsp">커뮤니티</a></li>
						<li><a href="../myRoadmap/myRoadmap.jsp">MyRoadMap</a></li>
		
					</ul>
				</nav>
			</div>
			<hr>
			
		</div>	
		
		<section>
			<% 
			String userID = (String)session.getAttribute("userID");
			CommunityDAO communityDAO = new CommunityDAO();
			int boardNum = communityDAO.nextNum();
			%> 
		<form method="post" action="communityWriteAct.jsp?boardNum=<%=boardNum%>">
			<table align="center">
			
					<input  type="submit" value="작성 완료" id="finishButton">
				<tbody>
					<tr>
						<td><input type="text" placeholder="title" name="boardTitle" maxlength="50" id="boardTitle"></td>
					</tr>
					<tr>
						<td><textarea placeholder="내용을 입력하세요." name="boardContent" maxlength="3000" id="boardContent"></textarea></td>
					</tr>

				</tbody>
			</table>
		</form>
		</section>
	</body>
</html>