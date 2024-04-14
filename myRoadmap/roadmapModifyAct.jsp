<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="RoadMap.RoadMapDAO" %>
<%@ page import="RoadMap.RoadMap" %>
<%@ page import="User.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="../cc.png" type="image/x-icon">
</head>
<body>
<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
    String mapNumParam = request.getParameter("mapNum");
    if (mapNumParam == null || mapNumParam.isEmpty()) {
        response.sendRedirect("myRoadMap.jsp"); // mapNum이 없으면 목록 페이지로 이동
    }
    int mapNum = Integer.parseInt(mapNumParam);
    RoadMapDAO roadMapDAO = new RoadMapDAO();
    RoadMap roadMap = roadMapDAO.getRoadMap(mapNum);

    // 현재 로그인한 사용자와 글 작성자가 일치하지 않으면 수정 권한이 없음
    if (roadMap == null || !roadMap.getUserID().equals(userID)) {
        response.sendRedirect("myRoadMap.jsp"); // 작성자와 로그인한 사용자가 일치하지 않으면 목록 페이지로 이동
    }
%>

<%
    String mapTitle = request.getParameter("mapTitle");
    String mapContent = request.getParameter("mapContent");

    int result = roadMapDAO.modifyRoadMap(mapNum, mapTitle, mapContent);

    if (result > 0) {
        response.sendRedirect("myRoadMap.jsp");
    } else {
        out.println("<script>");
        out.println("alert('RoadMap 수정에 실패했습니다.');");
        out.println("history.back();");
        out.println("</script>");
    }
%>
</body>
</html>