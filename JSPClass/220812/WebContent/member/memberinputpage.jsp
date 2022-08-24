<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


<%@ include file = "../header.jsp" %>

	 <h1>
		게시판 Member
	</h1>


<div class="container">
<form action="memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2">멤버이름</label>
		<div class="col-sm-3">
			<input name="mname" type="text" class="form-control" placeholder="이름을 입력하세요">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-sm-2">전화번호</label>
		<div class="col-sm-3">
			<input name="mtel" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type = "file" name="mimage">		 
		</div>
		</div>
	
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" value="등록">
			<input type="reset" value="취소" onclick="reset()">			 
		
		</div>
		
	</div>
	

</form>

</div>



<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>