<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 삭제</title>
</head>
<body>

<%
	//세션 삭제 전 세션 정보 확인
	out.print("세션 생성 시간 :" + session.getCreationTime()+"초<br>"); 
	out.print("마지막 접근시간 :" + session.getLastAccessedTime()+"초<br>");	
	out.print("세션 유지 시간 :" + (session.getLastAccessedTime()-session.getCreationTime()) +"초<br>");
	out.print("세션 유효 시간 :" + session.getMaxInactiveInterval()+"초<br>");
	
	//세션 정보 삭제
	
	session.removeAttribute("id");
	session.removeAttribute("name");
	
	out.print("세션 정보 삭제 완료");


%>

<p> <a href="sessioncheck.jsp"> 세션 확인 </a>

</body>
</html>