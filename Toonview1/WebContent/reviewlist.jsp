<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%@ include file = "header.jsp" %>

<div class="alert" role="alert">
<div style="background-color:#74C4F2; color:#FFFFFF;">
<div class="container">
   <h1 class = "display-3">리뷰 게시판</h1>
</div>   
</div>
<br>
<br>
<div class="container w-70">
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">게시글번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">스포일러 표시</th>
      <th scope="col">작성 날짜</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOreview> reviews = DAOreview.reviewList();

for (DTOreview review : reviews) {
%>      

    <tr>
      <th scope="row"><%=review.getRno()%></th>
      <td>	 <a href="reviewdetail.jsp?rno=<%=review.getRno() %>"><%=review.getRtitle() %></a></td>
      <td>   <a href="reviewdetail.jsp?rno=<%=review.getRno() %>"><%=review.getRname() %></a></td>
      <td>   <p><%=review.getRspo() %></p></td>
      <td>   <p><%=review.getRdate() %></p></td>
      
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