<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
   <h1 class = "display-3">문의 게시판</h1>
</div>   
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOboard> boards = DAOboard.boardList();
  %> 
 
  <%
for (DTOboard board : boards) {
%>      

    <tr>
      <th scope="row"><%=board.getBid()%></th>
      <td>   <a href="boarddetail.jsp?no=<%=board.getBid() %>"><%=board.getBtitle() %></a></td>
      <td>   <p><%=board.getBauthor() %></p></td>
      <td>   <p><%=board.getBdate() %></p></td>
    </tr>
<%    
   }
%>    
  
  
  </tbody>
</table>

   
    
	 
   <br>

 </div>
	   <br>
	    <br>
	  
	  
	<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardinputpage.jsp" class="btn btn-secondary" role="button">등록</a>
	</div>
	<br>
	<br>
          <br>
         


<%@ include file = "../footer.jsp" %>

</body>
</html>