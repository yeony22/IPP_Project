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
	window.onload=function() {
		document.join.id.focus();
	}
	function idCheck(form) {
		if(form.memberid.value="") {
			alert("아이디 입력 후 중복확인 버튼을 눌러주세요.");
			form.memberid.focus();
			return;
		}
		
		if(!isID(form.id)) {
			alert("아이디가 적절하지 않습니다.\n영문자, 숫자, _만 사용 가능합니다.");
			return;
		}
		
		var url="idCheck.jsp?id="form.id.value;
		window.open(url, "아이디중복확인", "width=300, height=200, left=450, top=200");
	}
	
	function idCheckInit(form) {
		if(form.idCheckResult.value=="1") {
			form.idCheckResult.vaule="0";
		}
	}
	
	function submitCheck(form) {
		if(is_null_field(form))
			return false;
		
		if(!isID(form.memberid)) {
			alert("아이디가 적절하지 않습니다.");
			return false;
		}
		
		if(!isSame(form.memberpwd, form.checkpwd)) {
			alert("비밀번호가 같지 않습니다.");
			return false;
		}
		
		function is_null_field(form) {
			if(is_null(form.memberid.value) || is_space(form.memberid.value)) {
				alert("아이디를 입력하여 주십시요.");
				form.memberid.focus();
				return true;
			}
			
			if(is_null(form.memberipwd.value) || is_space(form.memberpwd.value)) {
				alert("비밀번호를 입력하여 주십시요.");
				form.memberid.focus();
				return true;
			}
			
			if(is_null(form.membername.value) || is_space(form.membername.value)) {
				alert("이름을 입력하여 주십시요.");
				form.memberid.focus();
				return true;
			}
			
			if(is_null(form.memberphone.value) || is_space(form.memberphone.value)) {
				alert("전화번호 입력하여 주십시요.");
				form.memberid.focus();
				return true;
			}
		}
		
	}

</script>
</head>
<body>
	<h1>회원가입</h1>
	<form name="join" action="${pageContext.request.contextPath}/joinMember.do" method="post" onsubmit="return submitCheck(join);">
		<input type="hidden" name="idCheckResult" value="0" />
		<table border="1">
			<tr>
				<td>아이디 :</td>
				<td>
				<input type="text" name="memberid" title="ID" class="TXTFLD" onkeyup="idCheckInit(join);" />
				<button type="button" onclick="idCheck(join);">중복확인</button>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="memberpwd" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인 :</td>
				<td><input type="text" name="checkpwd" /></td>
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
		<button type="submit">가입하기</button>
	</form>
</body>
</html>