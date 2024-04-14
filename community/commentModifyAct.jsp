<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Comment.CommentDAO"%>
<%@ page import="Comment.Comment"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../cc.png" type="image/x-icon">
</head>
<body>
	<script type="text/javascript">
		window.name = 'commentUpdate';
	</script>
	
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
		userID = (String) session.getAttribute("userID");//유저아이디에 해당 세션값을 넣어준다.
	}
	int commentNum = 0;
	if (request.getParameter("commentNum") != null) {
		commentNum = Integer.parseInt(request.getParameter("commentNum"));
	}
	String commentUpdate = null;
	if (request.getParameter("commentUpdate") != null) {
		commentUpdate = request.getParameter("commentUpdate");
	}
	
	if (userID == null) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('로그인이 필요합니다.')");
		pr.println("location.href = 'login.jsp'");
		pr.println("</script>");
	}
	//글이 유효한지 판별
	int boardNum = 0;
	if (request.getParameter("boardNum") != null) {
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
	}
	if (boardNum == 0) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('유효하지 않은 글 입니다.')");
		pr.println("location.href = 'communityBoard.jsp'");
		pr.println("</script>");
	}
	Comment comment = new CommentDAO().getComment(commentNum);
	 if (commentUpdate.equals("")) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('입력이 안된 사항이 있습니다')");
		pr.println("history.back()");
		pr.println("</script>");
	} else {
		CommentDAO commentDAO = new CommentDAO();
		int result = commentDAO.modify(commentNum, commentUpdate, boardNum);
		if (result == -1) {
			PrintWriter pr = response.getWriter();
			pr.println("<script>");
			pr.println("alert('글수정에 실패했습니다')");
			pr.println("history.back()");
			pr.println("</script>");
		} else {
			PrintWriter pr = response.getWriter();
			pr.println("<script>");
			pr.println("alert('수정이 완료되었습니다.')");
			pr.println("window.close()");
			pr.println("parent.window.location.href=\'communityRead.jsp?boardNum=" + boardNum + "\'");
			pr.println("</script>");
		}
	} 
	%>
</body>
</html>