<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Comment.CommentDAO"%>
<%@ page import="java.util.ArrayList"%>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="comment" class="Comment.Comment" scope="page" />
<jsp:setProperty name="comment" property="commentText" />
<jsp:setProperty name="comment" property="commentNum" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../cc.png" type="image/x-icon">
</head>
<body>
	<%
	String userID = (String) session.getAttribute("userID");
	String userNick = (String) session.getAttribute("userNick");
	int boardNum = Integer.parseInt(request.getParameter("boardNum"));
	
	if (comment.getCommentText() == null) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('댓글을 입력하세요.')");
		pr.println("history.back()");
		pr.println("</script>");
	} else {
		CommentDAO commentDao = new CommentDAO();
		int result = commentDao.write(boardNum, userID, comment.getCommentText(), userNick);

		if (result >= 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('댓글이 등록되었습니다.')");
			script.println("location.href='communityRead.jsp?boardNum="+boardNum+"'");
			script.println("</script>");
		} else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('댓글 등록에 실패하였습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
	}
	%>
</body>
</html>