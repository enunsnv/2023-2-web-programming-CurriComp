<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Comment.Comment"%>
<%@ page import="Comment.CommentDAO"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../cc.png" type="image/x-icon">
</head>
<body>
	<%
	 int boardNum = 0;
		if (request.getParameter("boardNum") != null){
			boardNum = Integer.parseInt(request.getParameter("boardNum"));
		}
	int commentNum = 0;
	if (request.getParameter("commentNum") != null){
		commentNum = Integer.parseInt(request.getParameter("commentNum"));
	}

	CommentDAO commentDAO = new CommentDAO();

	%>			
	<h3 align="center">댓글 수정창</h3>
	<form name = c_commentUpdate align="center" method="post" action="commentModifyAct.jsp?boardNum=<%=boardNum%>&commentNum=<%=commentNum%>">
		<input type="text" id="update" placeholder="수정할 내용을 입력하세요" maxlength=200 name="commentUpdate"><br><br>
		<input type="submit" value="수정">
	</form>
</body>
</html>