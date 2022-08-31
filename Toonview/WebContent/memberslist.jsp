<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body">
<%@ include file = "header.jsp" %>

	<%
    	
    
    	if (mid == null || !mid.equals ("test2")) {
    		out.println("<script> alert('관리자만 접근이 가능합니다.');</script>");
	    	out.println("<script> location.href='welcome.jsp'</script>");
    	} 
	
		
    	
    	boolean login = true;
    	
  	%>   
  	
  	



<div class="container1">
   <h1 class = "h1no1">회원 관리</h1>
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
      <th scope="col">고유번호</th>
      <th scope="col">아이디</th>
      <th scope="col">이메일</th>
      <th scope="col">연령</th>
      <th scope="col">생일</th>
      <th scope="col">전화번호</th>
      <th scope="col">성별</th>
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
      <td>   <a href="membersdetail.jsp?mno=<%=member.getMno() %>"><%=member.getMid() %></a></td>
      <td>   <p><%=member.getMemail() %></p></td>
      <td>   <p><%=member.getMage() %></p></td>
      <td>   <p><%=member.getMbd() %></p></td>
      <td>   <p><%=member.getMtel()%></p></td>
      <td>   <p><%=member.getMgender() %></p></td>
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
</div>

	   <br>
	    <br>
          <br>
         


<%@ include file = "footer.jsp" %>

</body>
</html>