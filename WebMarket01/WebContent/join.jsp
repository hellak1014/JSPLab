<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<%@ include file = "header.jsp" %>

	<div class="alert alert-secondary" role="alert">
	<div class="container">
	 <h1>
		회원 가입
	</h1>
	</div>
	</div>
	
	<div class="container" style="height:40px;"></div>

	<div class="container">
	<form action="member/memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2">이름</label>
		<div class="col-sm-3">
			<input name="mname" type="text" class="form-control" placeholder="이름을 입력하세요">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">비밀번호</label>
		<div class="col-sm-3">
			<input name="mpass" type="text" class="form-control" placeholder="비밀번호를 입력하세요">
		</div>
	</div>

	<div class="container" style="height:20px;"></div>

	<div class="form-group row">
		<label class="col-sm-2"> 전화번호</label>
		<div class="col-sm-3">
			<input name="mtel" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">이메일</label>
		<div class="col-sm-3">
			<input name="memail" type="text" class="form-control" placeholder="이메일을 입력하세요">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<label class="col-sm-2">성별</label>
	<div class="form-check form-check-inline">
  		<input type="radio" name="mgender" id="여성" value="여성"> 
  		<label class="form-check-label" for="flexRadioDefault1">
    		여성
  		</label> 
  		<input type="radio" name="mgender" id="남성" value="남성" checked>
  		<label class="form-check-label" for="flexRadioDefault2">
   			 남성
  		</label>
	</div>

	 <div class="container" style="height:20px;"></div>
	 
		<div class="form-group row">
		<label class="col-sm-2">주소</label>
		<div class="col-sm-3">
			<input name="maddr" type="text" class="form-control" placeholder="주소를 입력하세요">
		</div>
	</div>

	<div class="container" style="height:20px;"></div>

	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type ="file" name="mimage">		 
		</div>
		</div>
	
	<br>
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
		
	

<%@ include file = "footer.jsp" %>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>