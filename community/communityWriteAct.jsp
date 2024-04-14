<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Community.CommunityBoard" %>
<%@ page import="Community.CommunityDAO" %>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>

<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="communityBoard" class="Community.CommunityBoard" scope="page"/>
<%
   communityBoard.setBoardTitle(request.getParameter("boardTitle"));
   communityBoard.setBoardContent(request.getParameter("boardContent"));
%>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../cc.png" type="image/x-icon">
</head>
<body>
	<%
	String userID = (String)session.getAttribute("userID");
	String userNick = (String)session.getAttribute("userNick");
	
	String boardTitle = request.getParameter("boardTitle");
	String boardContent = request.getParameter("boardContent");
	
	communityBoard.setBoardTitle(boardTitle);
	communityBoard.setBoardContent(boardContent);
	
	// null 체크
	if (communityBoard.getBoardTitle() == null) {
	    communityBoard.setBoardTitle("");
	}

	if (communityBoard.getBoardContent() == null) {
	    communityBoard.setBoardContent("");
	}

	if(communityBoard.getBoardTitle().equals("") || communityBoard.getBoardContent().equals("")) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('제목과 내용 모두 채워주세요!')");
		pr.println("history.back()");
		pr.println("</script>");
	} else {
		CommunityDAO communityDAO = new CommunityDAO();
		int writeRs = communityDAO.write(userID, userNick, communityBoard.getBoardTitle(), communityBoard.getBoardContent());
		
		if (writeRs >= 0) {
			PrintWriter pr = response.getWriter();
			pr.println("<script>");
			pr.println("alert('글 등록이 성공적으로 완료되었습니다!')");
			pr.println("location.href='communityBoard.jsp'");
			pr.println("</script>"); 
		} else {
			PrintWriter script = response.getWriter();
			out.println(writeRs);
			out.println(communityBoard.getBoardTitle());
			out.println(userID);
			out.println(communityBoard.getBoardContent());
			out.println(userNick);
		}
	}
	%>
</body>
</html>