<%@ page import="com.jydev.util.Utility" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>암호화 메소드 테스트</h1>
	<hr>
	<%
		String sourceString = "abc123";
		String encodingString = Utility.encoding(sourceString);
	%>
	<p>암호와 전 문자열 : <%= sourceString %></p>
	<p>암호와 후 문자열 : <%= encodingString %></p>
	
</body>
</html>