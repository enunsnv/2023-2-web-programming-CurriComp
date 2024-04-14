<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="RoadMap.RoadMapDAO" %>
<%@ page import="User.User" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>

<head>
<link rel="icon" href="../cc.png" type="image/x-icon">
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
		String userNick = (String)session.getAttribute("userNick");
    String mapTitle = request.getParameter("mapTitle");
    String mapContent = request.getParameter("mapContent");

    RoadMapDAO roadMapDAO = new RoadMapDAO();
    int result = roadMapDAO.writeRoadMap(userID, userNick, mapTitle, mapContent);

    if (result > 0) {
        response.sendRedirect("myRoadMap.jsp");
    } else {
        out.println("<script>");
        out.println("alert('RoadMap 작성에 실패했습니다.');");
        out.println("history.back();");
        out.println("</script>");
    }
%>
</body>
</html>