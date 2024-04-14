<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="Community.CommunityBoard" %>
<%@ page import="Community.CommunityDAO" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" href="../cc.png" type="image/x-icon">
	<jsp:useBean id="communityboard" class="Community.CommunityBoard" scope="page" />
	<jsp:setProperty name="communityboard" property="boardTitle" />
	<jsp:setProperty name="communityboard" property="boardContent" />
</head>
<body>
   <% 
   String userID = (String)session.getAttribute("userID");
   
   if (session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");
   }

   int boardNum = 0;
   if (request.getParameter("boardNum") != null) {
      boardNum = Integer.parseInt(request.getParameter("boardNum"));
   }
   
   String boardTitle = request.getParameter("boardTitle");
	 String boardContent = request.getParameter("boardContent");
	
	 communityboard.setBoardTitle(boardTitle);
	 communityboard.setBoardContent(boardContent);
   communityboard.setUserID(userID);
    
   if (communityboard.getBoardTitle().equals("") || communityboard.getBoardContent().equals("")) {
      PrintWriter pr = response.getWriter();
      pr.println("<script>");
      pr.println("alert('제목과 내용 모두 채워주세요!')");
      pr.println("history.back()");
      pr.println("</script>");
   }
   else { 
      //db데이터 수정
     CommunityDAO communityDAO = new CommunityDAO();
     int result = communityDAO.boardModify(boardNum, communityboard.getBoardTitle(), communityboard.getBoardContent());
       
      if (result >= 0) {
    	  PrintWriter pr = response.getWriter();
    	   pr.println("<script>");
    	   pr.println("alert('글 수정 완료.')");
    	   pr.println("location.href='communityBoard.jsp?&pageNumber=1'");
    	   pr.println("</script>"); 
      }
      else if(result == -1) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("location.href='communityBoard.jsp?&pageNumber=1'");
         script.println("</script>");
      }
      out.println(boardNum +" "+communityboard.getBoardTitle()+" "+communityboard.getBoardContent());
   }
   %>
</body>
</html>