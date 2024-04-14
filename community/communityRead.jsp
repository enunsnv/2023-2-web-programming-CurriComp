<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Community.CommunityBoard" %>
<%@ page import="Community.CommunityDAO" %>
<%@ page import="User.UserDAO"%>
<%@ page import="User.User"%>
<%@ page import="Comment.Comment"%>
<%@ page import="Comment.CommentDAO"%>
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
  <link rel="stylesheet" href="read-style.css"/>
</head>
<body>
<%
		String userID = (String)session.getAttribute("userID");
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		
		UserDAO userDAO = new UserDAO();
		String userInfo[] = userDAO.getUserInfo(userID);
		
		CommunityDAO communityDAO = new CommunityDAO();
		CommunityBoard communityboard = new CommunityBoard();
		communityboard = communityDAO.boardInfo(boardNum);
		communityDAO.cntViews(boardNum);  
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
		
	
	<section id="community-box" class="community-box">
		<article>
			<table align="center">
				<tbody>
					<tr>
						<td colspan="4" id="titleRead"><%=communityboard.getBoardTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\n", "<br>")%></td>
					</tr>
					
					<tr class="winfo">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>

						<td class="write1"><b>작성자</b></td>
						<td class="write"><%=communityboard.getUserNick() %>
						</td>
						<td class="write1"><b>작성일</b></td>
						<td class="write"><%=communityboard.getWriteDate().substring(0, 11).replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
						<td class="write1"><b>조회수</b></td>
						<td class="write"><%=communityboard.getBoardViews() %></td>
					</tr>
					<tr>
						<td colspan="6" id="content"> 
							<%=communityboard.getBoardContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt").replaceAll("\n", "<br>")%>
						</td>
						</tr>
				</tbody>
				<caption align=bottom>
					<a href="<%= "communityBoard.jsp?pageNumber=1" %>" class="userBtn">글 목록</a>
					<%
					//접속한 사람 id(세션)와 보드id 같으면 수정,삭제가능
					if (userID != null && userID.equals(communityboard.getUserID()) || userID.equals("admin")) {
					%>
					<a
						<%
						if(userID.equals(communityboard.getUserID())) {
						%>
						href="communityModify.jsp?boardNum=<%=boardNum%>"
						class="userBtn">수정</a> 
						<% }
						if(userID.equals(communityboard.getUserID()) || userID.equals("admin")) {
						%>
						<a onclick="return confirm('글을 삭제하시겠습니까?')"
						href="deleteAct.jsp?boardNum=<%=boardNum%>" class="userBtn">삭제</a>
						<%
						}
						%>
					<%
					}
					%>
				</caption>
				<form method="post" action="commentAct.jsp?boardNum=<%=boardNum%>">
					<table id="commentWriteBar" align="center">
						<tr>
							<td id="userNick"><%=userInfo[6]%>&nbsp;</td>
							<td id="userComment"><input type="text"placeholder="댓글(200자 이내)" name="commentText" id="commentBar"/></td>
							<td id="writeComment"><input type="submit" value="댓글 작성" id="commentBtn"></td>
						</tr>
					</table>
				</form>
			</table>
		</article>
		<footer>
			<table align="center" class="commentBoard">
				<tbody>
					<tr class="comment-box">
						<td align="left" id="commentBarName1">댓글</td>
					</tr>
						<%
						CommentDAO commentDAO = new CommentDAO();
						ArrayList<Comment> list = commentDAO.getList(boardNum);
						for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td class="commentTr1" id="nick" ><%=list.get(i).getUserNick()%></td>
							<td colspan="2" id="date" class="commentTr2"><%=list.get(i).getCommentDate().substring(0, 11)%></td>
							<td align="left" class="commentTr3"><%=list.get(i).getCommentText()%><td colspan="3" align="left">
							<td colspan="3" align="left">
							<%
							if ((list.get(i).getUserID() != null && list.get(i).getUserID().equals(userID)) || userID.equals("admin")) {
							%> 
							<%
							if(list.get(i).getUserID().equals(userID)) {
							%>
							<a type="button" onclick="nwindow('<%=boardNum%>','<%=list.get(i).getCommentNum()%>')" class="userBtn">수정</a> 
							<%}
							if(list.get(i).getUserID().equals(userID) || userID.equals("admin")) {
							%>
							<a	onclick="return confirm('정말로 삭제하시겠습니까?')"
							href="commentDeleteAct.jsp?boardNum=<%=boardNum%>&commentNum=<%=list.get(i).getCommentNum()%>" class="userBtn">삭제</a> <% }
							 } 
							 %>
							</td>
						</tr>
						<%
						}
						%>
				</tbody>
			</table>
		</footer>
		</section>
		<footer id="footBar">
		</footer>
		<script type="text/javascript">
			function nwindow(boardNum,commentNum){
				window.name = "commentParent";
				var url= "commentModify.jsp?boardNum="+boardNum+"&commentNum="+commentNum;
				window.open(url,"","width=600,height=200,left=300");
			}
		</script>
</body>
</html>