<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.Join"%>
<%@ page import="java.io.PrintWriter" %>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="User" class="User.User" scope="page"/>
<jsp:setProperty name="User" property="userID"/>
<jsp:setProperty name="User" property="userPW"/>
<jsp:setProperty name="User" property="userName"/>
<jsp:setProperty name="User" property="userPhone"/>
<jsp:setProperty name="User" property="userEmail"/>
<jsp:setProperty name="User" property="userUniv"/>
<jsp:setProperty name="User" property="userGrade"/>
<jsp:setProperty name="User" property="userNick"/>

<!DOCTYPE html>
<html>
  <head>
		<meta charset="UTF-8">
		<link rel="icon" href="../cc.png" type="image/x-icon">
	</head>
	<body>
		<%
		   String userID = (String)session.getAttribute("userID");
		   Join join = new Join();
		   int result = join.register(User);
		   PrintWriter pr = response.getWriter();

		   if(result >= 0) { 
		      pr.println("<script>");
		      pr.println("alert('회원가입이 완료되었습니다.')");
		      pr.println("location.href = 'login.jsp'");
		      pr.println("</script>");
		   } else if (result == -1) { 
		      pr.println("<script>");
		      pr.println("alert('이미 존재하는 아이디입니다.')");
		      pr.println("history.back()");
		      pr.println("</script>");
		   }
		%>
	</body>
</html>