<%@page import="db.*"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 고객 목록 </h3>
	
	<%
	
	ArrayList<DTOcustomer> members = DAOcustomer.getList(); //제네릭 문법
	
	for (DTOcustomer member : members){
		
	%>	
	
	<%=member.getNo() %>
	<a href="detail.jsp?no=<%=member.getNo()%>"> <%=member.getId() %> </a>		
	

	<%
	}
	%>
		
	
	
	
	
</body>
</html>