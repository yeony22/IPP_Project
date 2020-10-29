<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dao.MemberDAO" %>
<%@ page import="com.dto.MemberDTO" %>
<% 
	String id=request.getParameter("memberid");
	MemberDTO member = MemberDAO.getMemberDAO().getMember(memberid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css; charset=UTF-8">
<script type="text/javascript" src="common.js"></script>
<script type="text/javascript">

	function idCheck(form) {
		if(form.id.value="") {
			alert("아이디 입력 후 중복확인 버튼을 눌러주세요.");
			form.id.focus();
			return;
		}
		
		if(!isID(form.memberid))) {
			alert("아이디가 적절하지 않습니다.\n영문자, 숫자, _만 가능합니다.");
		}
		
		form.action="idCheck.jsp"
		form.method="post";
		form.submit();
	}	
	
	function onClose() {
		opener.join.id.value="<%= memberid %>";
		opener.join.idCheckResult.value="1";
		window.close();
	}
</script>
</head>
<body>
	<form name="idCheckForm">
		<table width="100%" height="90%"></table>
	</form>
</body>
</html>