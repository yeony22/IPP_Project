<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = 0, ref = 0, reStep = 0, reLevel = 0;
	
	String pageNum = "1";
	
	if(request.getParameter("num") != null) {
		num = Integer.parseInt(request.getParameter("num"));
		ref = Integer.parseInt(request.getParameter("ref"));
		reStep = Integer.parseInt(request.getParameter("reStep"));
		reLevel = Integer.parseInt(request.getParameter("reLevel"));
		pageNum = request.getParameter("pageNum");
	}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center><b>
<% if(num==0) { %>
	글쓰기
<% } else { %>
	답글쓰기
<% } %>
</b><br></center>

<form method="post" name="writeform" action="writePro.jsp" onsubmit="resurn writeSace()">
<input type="hidden" name="num" value="<%= num %>">
<input type="hidden" name="ref" value="<%= ref %>">
<input type="hidden" name="reStep" value="<%= reStep %>">
<input type="hidden" name="reLevel" value="<%= reLevel %>">
<input type="hidden" name="pageNum" value="<%= pageNum %>">
<table width="400" border="1" cellspacing="0" cellpadding="3" bgcolor="#e0ffff" align="center">
	<tr>
		<td align="right" colspan="2" bgcolor="b0e0e6">
			<input type="button" value="목록보기" OnClick="window.location='list.jsp?pageNum=1'">
		</td>
	</tr>
	
	<tr>
		<td width="80" bgcolor="#b0e0e6" align="center">이   름</td>
		<td width="320">
			<input type="text" size="10" maxlength="10" name="writer">
		</td>
	</tr>
	
	<tr>
		<td width="80" bgcolor="#b0e0e6" align="center">제   목</td>
		<td width="320">
			<% if(num==0) { %>
				<input type="text" size="40" maxlength="50" name="subject">
			<% } else { %>
				<input type="text" size="40" maxlength="50" name="subject" value="[답글] ">
			<% } %>
		</td>
	</tr>
	
	<tr>
		<td width="80" bgcolor="#b0e0e6" align="center">내   용</td>
		<td width="320">
			<textArea name="content" rows="13" cols="40"></textArea>
		</td>
	</tr>
	
	<tr>
		<td width="80" bgcolor="#b0e0e6" align="center">비밀번호</td>
		<td width="320">
			<input type="password" size="8" maxlength="12" name="passwd">
		</td>
	</tr>
	
	<tr>
		<td colspan="2" bgcolor="#b0e0e6" align="center">
			<input type="submit" value="글쓰기">
			<input type="reset" value="다시작성">
		</td>
	</tr>
</table>
</form>
</body>
</html>



