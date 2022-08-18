<%@page import="DB.*"%>
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

	<h3> 파일 목록 </h3>
	
	<%
	
	ArrayList<DTOboard> lists = DAOboard.boardList(); //제네릭 문법
	
	for (DTOboard list : lists){
		
	%>	
	
	<%=list.getBid() %>
	<a href="filedetail.jsp?no=<%=list.getBid() %>"><%=list.getTitle() %></a>
	<%-- <a href="detail.jsp?no=<%=member.getNo()%>"> <%=member.getId() %> </a>		 --%>
	
<br>
	<%
	}
	%>

</body>
</html>