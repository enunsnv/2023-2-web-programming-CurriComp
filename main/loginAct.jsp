<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.UserDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="User" class="User.User" scope="page"/>
<%
    User.setUserID(request.getParameter("userID"));
    User.setUserPW(request.getParameter("userPW"));
%>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <link rel="icon" href="../cc.png" type="image/x-icon">
  </head>
  <body>
    <%
		UserDAO userDAO = new UserDAO();
    PrintWriter pr = response.getWriter();
    String userID = User.getUserID();
    Connection conn=null;
    PreparedStatement stmt = null;
    ResultSet rs=null;
    String jdbcURL = "jdbc:mysql://localhost:3306/cc_site?serverTimezone=UTC";
		String jdbcID = "CurriComp";
		String jdbcPW = "0430";
		
		conn = DriverManager.getConnection(jdbcURL, jdbcID, jdbcPW);
	  stmt=conn.prepareStatement("select * from User where userID=?");
		stmt.setString(1,userID);
		rs=stmt.executeQuery();
    
     
    int loginRs = userDAO.login(User.getUserID(), User.getUserPW());
    
    if(loginRs==1){
		pr.println("<script>");
		pr.println("alert('로그인이 완료되었습니다.')");
		pr.println("location.href='main.jsp'");
		pr.println("</script>");
    }else if(loginRs==0){
		pr.println("<script>");
		pr.println("alert('비밀번호를 다시 입력해주세요.')");
		pr.println("history.back()");
		pr.println("</script>");
    }else if(loginRs==-1){
		pr.println("<script>");
		pr.println("alert('존재하지 않는 아이디입니다.')");
		pr.println("history.back()");
		pr.println("</script>");
    }else if(loginRs==-2){
		pr.println("<script>");
		pr.println("alert('데이터베이스 오류가 발생했습니다.')");
		pr.println("history.back()");
		pr.println("</script>");
    }
		
    if(rs.next()){
    	session.setAttribute("userID", rs.getString("userID"));
    	session.setAttribute("userPW", rs.getString("userPW"));
    	session.setAttribute("userName", rs.getString("userName"));
    	session.setAttribute("userPhone", rs.getString("userPhone"));
    	session.setAttribute("userEmail", rs.getString("userEmail"));
    	session.setAttribute("userUniv", rs.getString("userUniv"));
    	session.setAttribute("userGrade", rs.getString("userGrade"));
    	session.setAttribute("userNick", rs.getString("userNick"));
    	
    }
    
    pr.close();
    rs.close();
    stmt.close();
    conn.close();

    %>
  </body>
</html>