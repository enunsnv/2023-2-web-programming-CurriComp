<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Comment.Comment"%>
<%@ page import="Comment.CommentDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"></head>
	<link rel="icon" href="../cc.png" type="image/x-icon">
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
 
	if (userID == null) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('로그인 이후 이용 가능한 서비스 입니다.')");
		pr.println("location.href='login.jsp'");
		pr.println("</script>");
	}

	int commentNum = 0;
	if (request.getParameter("commentNum") != null) {
		commentNum = Integer.parseInt(request.getParameter("commentNum"));
	}

	int boardNum = 0;
	if (request.getParameter("boardNum") != null) {
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
	}
	if (commentNum == 0) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('유효하지 않은 글입니다.')");
		pr.println("location.href = 'boardSite.jsp'");
		pr.println("</script>");
	}

	Comment comment = new CommentDAO().getComment(commentNum); 

	CommentDAO commentDao = new CommentDAO();
	int result = commentDao.delete(commentNum);

	if (result >= 0) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('댓글을 삭제하였습니다.')");
		pr.println("location.href=\'communityRead.jsp?boardNum=" + boardNum +  "\'");
		pr.println("</script>");
	} else if (result == -1) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('댓글 삭제에 실패하였습니다.')");
		pr.println("history.back()");
		pr.println("</script>");
	}
	%>
</body>
</html>