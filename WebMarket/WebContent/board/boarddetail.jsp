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
		Board Detail
	</h1>
</div>	
</div>

<%
	String no = request.getParameter("no");

   DTOboard board = DAOboard.boardDetail(no);
   
   /* String img = file.getIname();
   String imgstr = "";
   if(img != null){
      imgstr = "../images/" + img; 
   } */
%>

<%-- <div style="text-align : center;">
<img src="<%=imgstr %>">
</div>
<br><br>

<div style="text-align : center;">
   <%=file.getBid()%>.
   <%=file.getTitle()%>
   <%=file.getContent()%>
   <%=file.getIname()%> <br>
  등록시간 : <%=file.getBdate()%>
   </div> --%>
   
   <div class="container text-center">
      <div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
         <div class="card-header">
             no. : <%=board.getBid() %><br>
         </div>
            <div class="card-body">
            <h5 class="card-title">제목: <%=board.getBtitle() %><br></h5>
            <p class="card-text">작성자 : <%=board.getBauthor() %><br>
                        		내용 : <%=board.getBcont() %><br>
                        
            </p>
            </div>
      </div>
      </div> 
   
<br>
<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardList.jsp" class="btn btn-primary" role="button">목록보기</a>
	</div>
	<div class="container" style="height:10px;"></div>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardeditpage.jsp?bauthor=<%=board.getBid()%>" class="btn btn-success" role="button">수정하기</a>
	</div>

<br>
<br>
<br>
<br>

  <%@ include file = "../footer.jsp" %>
   
</body>
</html>