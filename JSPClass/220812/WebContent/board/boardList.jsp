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
   <h1 class = "display-3">Board List</h1>
</div>   
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Title</th>
      <th scope="col">Content</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOboard> files = DAOboard.fileList();

for (DTOboard file : files) {
%>      

    <tr>
      <th scope="row"><%=file.getBid()%></th>
      <td>   <a href="boarddetail.jsp?no=<%=file.getBid() %>"><%=file.getTitle() %></a></td>
      <td>   <a href="boarddetail.jsp?no=<%=file.getBid() %>"><%=file.getContent() %></a></td>
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