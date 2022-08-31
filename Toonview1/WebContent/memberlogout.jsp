<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

<%

	//세션 정보 삭제
	
	session.removeAttribute("mid");

	out.println("<script> alert('로그아웃 되었습니다.');</script>");
	response.sendRedirect("welcome.jsp");
	
//alert가 출력이 안되는중


%>
		


</body>
</html>