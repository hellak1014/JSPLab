<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		Member Detail
	</h1>
</div>	
</div>

<%
	String no = request.getParameter("mno");

	 DTOmember member  =  DAOmember.memberDetail(no);
   
 String img = member.getMimage();
   String imgstr = "";
   
   if(img != null){
      imgstr = "../images/" + img; 
   }
%>

<div style="text-align : center;">
<img src="<%=imgstr %>">
</div>
<br><br>

<div style="text-align : center;"> 
   <%=member.getMno()%>.
   <%=member.getMname()%>
   <%=member.getMtel()%>
   <%=member.getMlevel()%>
   <%=member.getMimage()%> <br>
  등록시간 : <%=member.getMdate()%> 
 </div>
   
<br>
<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="memberList.jsp" class="btn btn-primary" role="button">목록보기</a>
	</div>

<br>
<br>
<br>
<br>

  <%@ include file = "../footer.jsp" %> 
   
</body>
</html> 