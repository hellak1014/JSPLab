<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
   <h1 class = "display-3">회원 관리</h1>
</div>   
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">이름</th>
      <th scope="col">전화번호</th>
      <th scope="col">이메일</th>
      <th scope="col">성별</th>
      <th scope="col">주소</th>
      <th scope="col">등급</th>
      <th scope="col">가입 날짜</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOmember> members = DAOmember.memberList();

for (DTOmember member : members) {
%>      

    <tr>
      <th scope="row"><%=member.getMno()%></th>
      <td>   <a href="membersdetail.jsp?mno=<%=member.getMno() %>"><%=member.getMname() %></a></td>
      <td>   <p><%=member.getMtel()%></p></td>
      <td>   <p><%=member.getMemail() %></p></td>
      <td>   <p><%=member.getMgender() %></p></td>
      <td>   <p><%=member.getMaddr() %></p></td>
      <td>   <p><%=member.getMlevel() %></p></td>
      <td>   <p><%=member.getMdate() %></p></td>
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
         


<%@ include file = "../footer.jsp" %>

</body>
</html>