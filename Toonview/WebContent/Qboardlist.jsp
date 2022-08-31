<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의게시판</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<%@ include file = "header.jsp" %>


<div class="container1">
   <h1 class = "h1no1">문의 게시판</h1>
</div>
   
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container w-70">
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">게시글번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성 날짜</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOQboard> Qboards = DAOQboard.QboardList();

for (DTOQboard Qboard : Qboards) {
%>      

    <tr>
      <th scope="row"><%=Qboard.getQno()%></th>
      <td>	 <a href="Qboarddetail.jsp?rno=<%=Qboard.getQno() %>"><%=Qboard.getQtitle() %></a></td>
      <td>   <a href="Qboarddetail.jsp?rno=<%=Qboard.getQno() %>"><%=Qboard.getQname() %></a></td>
      <td>   <p><%=Qboard.getQdate() %></p></td>
      
    </tr>
<%    
   }
%>    
    
    
  </tbody>
</table>
 
	 
   <br>
</div>
</div>

	   <br>
	    <br>
          <br>
         


<%@ include file = "footer.jsp" %>

</body>
</html>