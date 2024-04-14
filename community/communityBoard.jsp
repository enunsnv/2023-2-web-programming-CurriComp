<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Community.CommunityBoard" %>
<%@ page import="Community.CommunityDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.File" %>
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
						<li><a href="../myRoadmap/myRoadMap.jsp">MyRoadMap</a></li>
		
					</ul>
				</nav>
			</div>
		
		
			<hr>
			
		</div>

		<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		} 
		int pageNum = 1;
		
		if(request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		%>

		

		
<div id="community-container">
		<section>
			<article>
				<header align="center">
					<img id="search-icon" src="../search-icon.png">
					<form action="communitySearch.jsp?pageNum=1" method="post">
						<select name="find" id="find">
							<option value="boardTitle" selected>제목</option>
							<option value="userNick">닉네임</option>
						</select>

						<input type="text" name="search" id="search" size="40px" placeholder="키워드를 입력하세요.">
						<input type="submit" value=" 검색 " id="searchButton">

						
					</form>
					<form action="communityWrite.jsp?" method="post">
						<input type="submit" id="writeBtn" value="&nbsp;&nbsp;글 작성&nbsp;&nbsp;">
					</form>
				</header>
				<table align="center" class="community-box">
					
					<thead>
						<tr class="boardList">     
							<th id="title"> 게시판 </th>
							<th id="nick"> 닉네임 </th>
							<th id="date"> 작성일 </th>
						</tr>
					</thead>
					<tbody>

			
							<%
						CommunityDAO communityDAO = new CommunityDAO();
						ArrayList<CommunityBoard> list = communityDAO.getList(pageNum);
						
						for(int i=0; i<list.size(); i++){
							%>
						
			
							<tr>
							<td class="boardList"><a href="communityRead.jsp?boardNum=<%= list.get(i).getBoardNum() %>"><%= list.get(i).getBoardTitle() %></a></td>
							<td class="boardList" id="nick"><%= list.get(i).getUserNick() %></td>
							<td class="boardList" id="date"><%= list.get(i).getWriteDate().substring(0,11)%></td>
						</tr>
				
	
						
								
								<%
								}
								%>
						
						
					</tbody>
				</table>
			</article>
		</div>
			<footer id="footer" align="center">

			
				<%
				if(pageNum != 1) {					
				%>
				
				<div id="page-count">
					<a href="communityBoard.jsp?pageNum=<%=pageNum -1%>">이전</a>
				</div>
				

				
				<%
				}

				
				int pageNumCnt = communityDAO.getPageNum(10, "where boardExist = 1");
				for(int i  = 1 + ((pageNum-1)/10)*10 ; i <= 10 + ((pageNum-1)/10)*10 ; i++) { //한 페이지에 총 10개 페이지 표시 제한
					if(i == pageNum) {
				%>

			
				<b><a href="communityBoard.jsp?pageNum=<%=i%>"><%=i %></a></b>

				
				<%
					} else {
				%>

			
				
					<span><a href="communityBoard.jsp?pageNum=<%=i%>"><%=i %></a></span>
				
				
				
				

					<%
					}
					if(i + 1 > pageNumCnt) {
						break;
					}
				}
				if(communityDAO.nextPageCheck(pageNum, 10, "where boardExist = 1 ")) {
				%>
			
				<div id="page-count">
				<a href="communityBoard.jsp?pageNum=<%=pageNum + 1 %>">다음</a>
				</div>
				
				<%
				}
				%>

			
			
			</footer>
		</section>

	

	</body>
</html>