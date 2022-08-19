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
   <h1 class = "display-3">product List</h1>
</div>   
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">pid</th>
      <th scope="col">pname</th>
      <th scope="col">pdesc</th>
      <th scope="col">pprice</th>
      <th scope="col">pimage</th>
    </tr>
  </thead>
  <tbody>
  
<%
ArrayList<DTOproduct> files = DAOproduct.fileList();

for (DTOproduct file : files) {
%>   

  <tr>
      <th scope="row"><%=file.getPid()%></th>
      <td>   <a href="productdetail.jsp?pid=<%=file.getPid() %>"><%=file.getPid() %></a></td>
      <td>   <a href="productdetail.jsp?pid=<%=file.getPid() %>"><%=file.getPname() %></a></td>
      <td>   <a href="productdetail.jsp?pid=<%=file.getPid() %>"><%=file.getPdesc() %></a></td>
      <td>   <a href="productdetail.jsp?pid=<%=file.getPid() %>"><%=file.getPprice() %></a></td>
      <td>   <img src="../images/<%=file.getPimage1()%>"  width="100" height="100"></td> 
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
		<a href="productinputpage.jsp" class="btn btn-secondary" role="button">등록</a>
	</div>
	<br>
	<br>
          <br>
         


<%@ include file = "../footer.jsp" %>

</body>
</html>