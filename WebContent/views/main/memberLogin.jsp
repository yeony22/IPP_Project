<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="common.js"></script>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript">
	
</script>
</head>
<body>
	<h1>회원가입</h1>
	<form action="${pageContext.request.contextPath}/insertMember.do" method="post">
		<table border="1">
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="memberid" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="memberpwd" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인 :</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td>이름 :</td>
				<td><input type="text" name="membername" /></td>
			</tr>
			<tr>
				<td>전화번호 :</td>
				<td><input type="text" name="memberphone" /></td>
			</tr>
		</table>
		<button type="submit">로그인</button>
		<button type="submit">가입하기</button>
	</form>
</body>
</html>>