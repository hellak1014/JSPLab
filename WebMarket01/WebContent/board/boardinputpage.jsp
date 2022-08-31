<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="/js/summernote/summernote-lite.js"></script>
<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>

<% String mname = (String)session.getAttribute("mname");%>

<%@ include file="../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
   <h1 class = "display-3">
      	게시판 입력
   </h1>
</div>   
</div>



<div class="container">
<form action="boardinput.jsp" method="post" method="post" enctype="multipart/form-data">


   <div class="form-group row">
      <label class="col-sm-2">제목</label>
      <div class="col-sm-5">
         <input name="btitle" type="text" class="form-control" placeholder="제목을 입력하세요">
      </div>
   </div>
   
   <div class="container" style="height:10px;"></div>
   
    <!-- <div class="form-group row">
      <label class="col-sm-2">작성자</label>
      <div class="col-sm-3">
         <input name="bauthor" type="text" class="form-control" placeholder="제목을 입력하세요">
      </div>
   </div>
   
   <div class="container" style="height:10px;"></div> -->
   
   <input name="bauthor" type="hidden" value=<%=mname%>>
   
   <div class="form-group row">
      <label class="col-sm-2">내용</label>
      <div class="container">
  		<textarea class="summernote" name="bcont" id="bcont"></textarea>    
		</div>
	<script>
		$('.summernote').summernote({
	  	height: 300,
	  	lang: "ko-KR"
		});
	</script>
      </div>
   
   <br>
   <br>


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
<%@ include file="../footer.jsp" %>

<link rel="stylesheet" href="/css/summernote/summernote-lite.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>