<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <link href="login-style.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../cc.png" type="image/x-icon">
    <title>CurriComp</title>
    </head>
	<body>
	  <div>
		<form method="post" action="loginAct.jsp">
      <center>
        <div id="login-box">
          <h1 id="title">CurriComp</h1>
           <h2 id="sub-title">Login</h2>
           <form method="post" action="loginAct.jsp" id="loginform">
             아이디 <input id="id-box" class="form-box" type="text" name="userID" placeholder="ID"> <br>
             비밀번호 <input id="pw-box" class="form-box" type="password" name="userPW" placeholder="Password"><br>
             <input id="login-button" type="submit" value="Login"><br>
             <form method="post" action="join.jsp">
               <input id="join-button" type="submit" value="회원가입">
             </form>
           </form>
          </div>

      </center>
          
	</body>
</html>