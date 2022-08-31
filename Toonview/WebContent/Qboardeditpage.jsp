<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.time.*" %>
    

    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resource/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/summernote-lite.css">
</head>


<body>


<%@ include file="header.jsp" %>

 
    	

 
<%
	String no=request.getParameter("qno");
	String name=request.getParameter("qname");

	DTOQboard board=DAOQboard.Qboarddetail2(name);

	if(!mid.equals(board.getQname())) {
   out.print("<script>alert('작성자가 달라 수정이 불가합니다.');</script>");
   out.print("<script>location.href= 'Qboardlist.jsp' </script>");
	}
	   
   %> 
   
   
   <%
   
    
	DTOQboard Qboard = DAOQboard.Qboarddetail(no); 
	
	%>



<div class="container1">

	<h1 class = "h1no1">
		문의 게시글 수정
	</h1>
</div>	

<br>
<br>
<br>
<br>
<br>
<br>



<div class="container">
<form action="Qboardeditcheck.jsp" method="post">

	


	<div class="form-group row">
		<label class="col-sm-2">제목</label>
		<div class="col-sm-3">
			<input name="qtitle" value="<%=Qboard.getQtitle()%>" type="text" class="form-control">
		</div>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">작성자</label>
		<div class="col-sm-3">
			<input name="qname" value="<%=Qboard.getQname()%>" type="text" class="form-control" readonly>
		</div>
	</div>
	
	
	<div class="container" style="height:10px;"></div>
	
		<div class="container">
		<label class="col-sm-2">내용</label>
		<textarea class="summernote" name="qcont"><%=Qboard.getQcont()%></textarea>    
		</div>
		<script>
		$('.summernote').summernote({
	 	 height: 300,
	  	lang: "ko-KR"
		});
		</script>
	
	
	<input name = "qno" value="<%=Qboard.getQno() %>" type="hidden">
	

<div class="container" style="height:30px;"></div>

	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="수정">
			<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">			 
		
		</div>
		
	</div>

</form>

</div>

<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="footer.jsp" %>


</body>
</html>