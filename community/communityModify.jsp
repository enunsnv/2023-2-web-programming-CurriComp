<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Community.CommunityBoard" %>
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
<link href="style.css" rel="stylesheet" type="text/css" />
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
  
	<%
	String userID = (String) session.getAttribute("userID");
	int boardNum = 0;
	if (request.getParameter("boardNum") != null) {
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
	}

	CommunityDAO communityDAO = new CommunityDAO();
	CommunityBoard communityboard = new CommunityBoard();
	communityboard = communityDAO.boardInfo(boardNum); 

	if (!userID.equals(communityboard.getUserID())) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('글에 대한 수정 권한이 없습니다.')");
		pr.println("location.href='communityBoard.jsp?&pageNum=1'");
		pr.println("</script>");
	}
	%>
	<section>
	<form method="post" action="communityModifyAct.jsp?boardNum=<%=communityboard.getBoardNum()%>">
		<table align="center">
			<caption>
				<span>게시글 수정</span>
				<input type="submit" value="수정하기" id="writeBtn"></input>
			</caption>
			<tbody>
				<tr>
					<td><input type="text" name="boardTitle" maxlength="50" value="<%=communityboard.getBoardTitle()%>" id="title"></input></td>
				</tr>
				<tr>
					<td><textarea name="boardContent" maxlength="30000" style="height: 350px;" id="content"><%=communityboard.getBoardContent()%> </textarea></td>
				</tr>
			</tbody>
		</table>
	</form>
	</section>
</body>
</html>