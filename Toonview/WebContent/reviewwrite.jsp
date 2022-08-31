<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.time.*" %>
    
    

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
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
    	
    
    	if (mid == null) {
    		out.println("<script> alert('로그인이 필요합니다.');</script>");
	    	out.println("<script> location.href='memberlogin.jsp'</script>");
    	} 
    	
    	boolean login = true;
    	
  	%>     
    
    




<div class="container1">

	<h1 class = "h1no1">
		리뷰 작성
	</h1>
</div>	

<br>
<br>
<br>
<br>
<br>
<br>




<div class="container3">
<form action="reviewinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2">제목</label>
		<div class="col-sm-3">
			<input name="rtitle" type="text" class="form-control" placeholder="제목을 입력하세요.">
		</div>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">작성자</label>
		<div class="col-sm-3">
			<input name="rname" value="<%=mid%>" type="text" class="form-control" readonly>
		</div>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
	<label class="col-sm-2">스포일러 여부</label>
	<div class="form-check form-check-inline">
  		<input type="radio" name="rspo" id="있음" value="있음"> 
  		<label class="form-check-label" for="flexRadioDefault1">
    		있음
  		</label> 
  		<input type="radio" name="rspo" id="없음" value="없음" checked>
  		<label class="form-check-label" for="flexRadioDefault2">
   			 없음
  		</label>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
		<div class="container">
		<label class="col-sm-2">리뷰</label>
		<textarea class="summernote" name="rcont"></textarea>    
		</div>
		<script>
		$('.summernote').summernote({
	 	 height: 300,
	  	lang: "ko-KR"
		});
		</script>
	

	

<div class="container" style="height:30px;"></div>

	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="등록">
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