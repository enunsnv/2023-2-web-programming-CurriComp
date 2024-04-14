<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="Community.CommunityBoard" %>
<%@ page import="Community.CommunityDAO" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="../cc.png" type="image/x-icon">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1">
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}

	if (userID == null) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('로그인 후 사용 가능합니다.')");
		pr.println("location.href='login.jsp'");
		pr.println("</script>");
	}

	int boardNum = 0;
	if (request.getParameter("boardNum") != null) {
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
	}

	if (boardNum == 0) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('더이상 존재하지 않는 글입니다.')");
		pr.println("location.href = 'communityBoard.jsp'");
		pr.println("</script>");
	}

	CommunityBoard communityboard = new CommunityDAO().boardInfo(boardNum);

	CommunityDAO communityDAO = new CommunityDAO();
	int result = communityDAO.boardDelete(boardNum); 

	if (result >= 0) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('글이 성공적으로 삭제되었습니다.')");
		pr.println("location.href='communityBoard.jsp'");
		pr.println("</script>");
	} else if (result == -1) {
		PrintWriter pr = response.getWriter();
		pr.println("<script>");
		pr.println("alert('글 삭제에 실패하였습니다.')");
		pr.println("history.back()");
		pr.println("</script>");
	} 
	%>
</body>
</html>