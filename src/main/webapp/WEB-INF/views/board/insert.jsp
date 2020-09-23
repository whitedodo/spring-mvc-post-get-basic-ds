<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert (삽입)</title>
<style>
	body{
		font-size:12px;
		font-family:'Arial';
	}
	
	.login_id{
		width:90%;
		border:1px solid #e2e2e2;
	}
	
	.login_pwd{
		width:90%;
		border:1px solid #e2e2e2;
	}
	
</style>
</head>
<body>

<h3>로그인 페이지(Login Page) - POST 방식</h3>
<!-- 삽입 영역(POST) -->
<form method="POST" action="insertResult">
<table style="width:900px; height:70px;">
	<tr>
		<td style="width:10%">아이디(UserID)</td>
		<td style="width:90%">
			<input type="text" name="id" class="login_id">
		</td>
	</tr>
	<tr>
		<td>
			비밀번호(Password)
		</td>
		<td>
			<input type="password" name="passwd" class="login_pwd">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="로그인">
		</td>
	</tr>
</table>
</form>


<!-- 삽입 영역(GET방식) -->
<h3>로그인 페이지(Login Page) - GET 방식</h3>
<form method="GET" action="insertResult">
<table style="width:900px; height:70px;">
	<tr>
		<td style="width:10%">아이디(UserID)</td>
		<td style="width:90%">
			<input type="text" name="id" class="login_id">
		</td>
	</tr>
	<tr>
		<td>
			비밀번호(Password)
		</td>
		<td>
			<input type="password" name="passwd" class="login_pwd">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="로그인">
		</td>
	</tr>
</table>
</form>

</body>
</html>