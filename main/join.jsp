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
		<script>
	    function checkPW() {
	        var pw = document.joinForm;

	        // 사용자가 입력한 비밀번호와 비밀번호 확인이 일치하는지 확인
	        if (pw.userPW.value !== pw.PWCheck.value) {
	            alert("비밀번호가 일치하지 않습니다.");
	            pw.userPW.focus(); // 비밀번호 입력란에 포커스를 맞춥니다.
	            return false;
	        } else {
	            return true; // 일치하면 폼 제출을 허용합니다.
	        }
	    }
		</script>
	</head>
	<body>
		<center>
			
			<div id="login-box">
				<h1 id="title">CurriComp</h1>
		<form name="joinForm" method="post" action="joinAct.jsp" onsubmit="return checkPW()">
	    <h3 id="sub-title">회원가입</h3>
			<br>
			<table>
				<tr>
					<td>아이디</td>
					<td><input class="form-box" type="text" placeholder="아이디" name="userID" maxlength="20" required></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input class="form-box" type="password" placeholder="비밀번호" name="userPW" maxlength="20" required></td>
				</tr>
				<tr>
					<td>비밀번호 재확인</td>
					<td><input class="form-box" type="password" placeholder="비밀번호 확인" name="PWCheck" maxlength="20" required></td>
				</tr>
        <tr>
					<td>이름</td>
					<td><input class="form-box" type="text" placeholder="이름" name="userName" maxlength="20" required></td>
				</tr>
        <tr>
					<td>연락처</td>
					<td><input class="form-box" type="text" placeholder="연락처" name="userPhone" maxlength="50" required></td>
				</tr>
        <tr>
					<td>이메일</td>
					<td><input class="form-box" type="email" placeholder="이메일" name="userEmail" maxlength="50" required></td>
				</tr>
        <tr>
					<td>대학교</td>
					<td><input class="form-box" type="text" placeholder="대학교" name="userUniv" maxlength="20" required></td>
				</tr>
        <tr>
					<td>학년</td>
					<td>
            <select class="form-box" name="userGrade">
              <option value="grade_1">1학년</option>
              <option value="grade_2">2학년</option>
              <option value="grade_3">3학년</option>
              <option value="grade_4">4학년</option>
            </select>
          </td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input class="form-box" type="text" placeholder="닉네임" name="userNick" maxlength="20" required></td>
				</tr>
			</table>
			<br>
			<div> 
				<input id="login-button" type="submit" value="회원가입">
			</div>
			<br>
		</form>
	</div>
	</center>
	</body>
</html>