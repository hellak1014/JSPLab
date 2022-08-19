<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<h1>
		게시판 Member
	</h1>


<div class="container">
<form action="memberinput.jsp" method="post">


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
			<input type="submit" value="등록">
			<input type="reset" value="취소" onclick="reset()">			 
		
		</div>
		
	</div>
	

</form>

</div>





</body>
</html>