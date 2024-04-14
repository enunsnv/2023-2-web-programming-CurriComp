<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Community.CommunityBoard" %>
<%@ page import="Community.CommunityDAO" %>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="../cc.png" type="image/x-icon">
		<link rel="stylesheet" href="style.css"/>
		<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	</head>
	<body>
		<% 
		request.setCharacterEncoding("UTF-8");
		String userID = (String)session.getAttribute("userID");
		String search = request.getParameter("search");
		String find = request.getParameter("find");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		%>
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
		
		<section>
		<h3 align="center"><b></b></h3>
		<table align="center" class="community-box">
		<thead>
			<tr class = "boardList">     
				<th id="title"> 제목 </th>
				<th id="nick"> 닉네임 </th>
				<th id="date"> 작성일 </th>
			</tr>
		</thead>
		<tbody>
			<%
			CommunityDAO communityDAO = new CommunityDAO();
			ArrayList<CommunityBoard> list = communityDAO.getBoardList(pageNum, 10,"where "+find+" like '%"+search+"%' and boardExist = 1");
			
			for(int i=0; i<list.size(); i++){
			%>
				<tr>
					<td class="boardList"><%= list.get(i).getUserNick() %></td>
					<td class="boardList"><a href="communityRead.jsp?boardNum=<%= list.get(i).getBoardNum() %>"><%= list.get(i).getBoardTitle() %></a></td>
					<td class="boardList"><%= list.get(i).getWriteDate().substring(0,11)%></td>
				</tr>
			<% 
			}
			%>
		</tbody>
		</table>
		<footer align="center" id="pageNumberBar">
		<%
		if(pageNum != 1) {					
		%>
			<a href="communitySearch.jsp?pageNum=<%=pageNum -1%>&search=<%=search %>&searchOption=<%=find %>">이전</a>
		<%
		}
		int pageNumCnt = communityDAO.getPageNum(10, "where boardExist = 1 and " + find + "='" + search + "'");
		for(int i  = 1 + ((pageNum-1)/10)*10 ; i <= 10 + ((pageNum-1)/10)*10 ; i++) {
			if(i == pageNumCnt) {
		%>
		<b><a href="communitySearch.jsp?pageNumber=<%=i%>&search=<%=search %>&find=<%=find %>"><%=i %></a> </b>
		<%
			} else {
		%>
		<span><a href="communitySearch.jsp?pageNumber=<%=i%>&search=<%=search %>&find=<%=find%>"><%=i %></a> </span>
		<%
			}
			if(i + 1 > pageNumCnt)
				break;
		}
		if(communityDAO.nextPageCheck(pageNum, 10, "where boardExist = 1 AND " + find + "='" + search + "' ")) {
		%>
		<a href="communitySearch.jsp?pageNum=<%=pageNum + 1 %>&search=<%=search %>&find=<%=find %>">다음</a>
		<%
		}
		%>
		</footer>
		</section>
	</body>
</html>