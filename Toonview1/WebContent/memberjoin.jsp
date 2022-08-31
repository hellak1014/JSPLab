<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.time.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="style.css">




</head>


<body>


<%@ include file="header.jsp" %>


<div class="alert" role="alert">
<div style="background-color:#74C4F2; color:#FFFFFF;">
<div class="container">

	<h1 class = "display-3">
		회원 가입
	</h1>
</div>	
</div>
</div>

<% mid = request.getParameter("kid"); %>
<% String memail = request.getParameter("kemail"); %>
<% String mgender = request.getParameter("kgender"); %>


<div class="container">
<form action="memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2">아이디</label>
		<div class="col-sm-3">
			<input name="mid" type="text" class="form-control" >
		</div>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">비밀번호</label>
		<div class="col-sm-3">
			<input name="mpass" type="text" class="form-control" >
		</div>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
		<div class="form-group row">
		<label class="col-sm-2">이메일</label>
		<div class="col-sm-3">
			<input name="memail" type="text" class="form-control" >
		</div>
	</div>
	
	<div class="container" style="height:10px;"></div>
	
	
	
		
		<label class="col-sm-2">나이</label>
		<div class="form-check form-check-inline">
		
		<div class="form-check form-check-inline">
		<input type="radio" name="mage" id="10대" value="10대" checked> 
  		<label class="form-check-label" for="flexRadioDefault1">
    		10대
  		</label> 
  		<input type="radio" name="mage" id="20대" value="20대" >
  		<label class="form-check-label" for="flexRadioDefault2">
   			 20대
  		</label>
  		<input type="radio" name="mage" id="30대" value="30대" >
  		<label class="form-check-label" for="flexRadioDefault2">
   			30대
  		</label>
  		<input type="radio" name="mage" id="40대 이상" value="40대 이상" >
  		<label class="form-check-label" for="flexRadioDefault2">
   			40대 이상
  		</label>
	</div>
	</div>
		
	
	
	<div class="container" style="height:10px;"></div>
	
	
	<div class="form-group row">
		<label class="col-sm-2">생일</label>
		<div class="col-sm-3">
			<input name="mbd" type="text" class="form-control" placeholder="YYYY.MM.DD" >
		</div>
	</div>
	
	
	<div class="container" style="height:10px;"></div>
	
	
	<div class="form-group row">
		<label class="col-sm-2">전화번호</label>
		<div class="col-sm-3">
			<input name="mtel" type="text" class="form-control" placeholder="공백, - 없이 입력해주세요." >
		</div>
	</div>
	
	
	<div class="container" style="height:10px;"></div>
	
	
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
	
	
	<div class="container" style="height:10px;"></div>
	
	<div class="form-group row">
	<div class="col-sm-5">
	  <input type="file" name="mimage" class="form-control">
	 </div>
	</div>
	

<div class="container" style="height:10px;"></div>

	
	<div class="form-group row">
	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<input type="submit" class="btn btn-primary"  value="등록">
			<input type="reset" class="btn btn-warning"  value="취소" onclick="reset()">			 
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