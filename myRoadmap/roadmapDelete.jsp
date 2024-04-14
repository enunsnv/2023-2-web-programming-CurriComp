<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="RoadMap.RoadMapDAO" %>
<%@ page import="User.User" %>

<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="icon" href="../cc.png" type="image/x-icon">
<title>Insert title here</title>
</head>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}

    int mapNum = Integer.parseInt(request.getParameter("mapNum"));

    RoadMapDAO roadMapDAO = new RoadMapDAO();
    int result = roadMapDAO.deleteRoadMap(mapNum);

    if (result > 0) {
        response.sendRedirect("myRoadMap.jsp");
    } else {
        out.println("<script>");
        out.println("alert('RoadMap 삭제에 실패했습니다.');");
        out.println("history.back();");
        out.println("</script>");
    }
%>
</body>
</html>