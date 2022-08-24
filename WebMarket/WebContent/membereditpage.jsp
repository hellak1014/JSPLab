<%@page import="DB.*"%>
<%@page import="java.util.*"%>
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
		회원 정보 수정
	</h1>
	</div>
	</div>
	
	<%
	
	String mname = (String)session.getAttribute("mname"); //세션에 저장된 정보로
    
	DTOmember member = DAOmember.memberdetail(mname); //한사람의 정보를 조회하러 감
	
	%>
	
	
	<div class="container" style="height:40px;"></div>

	<div class="container">
	<form action="member/memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2">이름</label>
		<div class="col-sm-3">
			<input name="mname" value="<%=member.getMname()%>" type="text" class="form-control" placeholder="이름을 입력하세요">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">비밀번호</label>
		<div class="col-sm-3">
			<input name="mpass"value="<%=member.getMpass()%>" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
		</div>
	</div>

	<div class="container" style="height:20px;"></div>

	<div class="form-group row">
		<label class="col-sm-2"> 전화번호</label>
		<div class="col-sm-3">
			<input name="mtel" value="<%=member.getMtel()%>" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">이메일</label>
		<div class="col-sm-3">
			<input name="memail" value="<%=member.getMemail()%>" type="text" class="form-control" placeholder="이메일을 입력하세요">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<label class="col-sm-2">성별</label>
	<div class="form-check form-check-inline">
			<%
			String gender = member.getMgender();
			if(gender.equals("여성")){
			%>
  		<input type="radio" name="mgender" id="여성" value="<% %>"> 
  		<label class="form-check-label" for="flexRadioDefault1">
    		여성
  		</label> 
  			<% 
  			} else {
  			%>
  		<input type="radio" name="mgender" id="남성" value="남성" checked>
  		<label class="form-check-label" for="flexRadioDefault2">
   			 남성
  		</label>
  		<% } %>
	</div>

	 <div class="container" style="height:20px;"></div>
	 
		<div class="form-group row">
		<label class="col-sm-2">주소</label>
		<div class="col-sm-3">
			<input name="maddr" value="<%=member.getMaddr()%>" type="text" class="form-control" placeholder="주소를 입력하세요">
		</div>
	</div>

	<div class="container" style="height:20px;"></div>

	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type ="file" name="mimage" class="form-control">		 
		</div>
		</div>
	
	<script>
    // Get a reference to our file input
    const fileInput = document.querySelector('input[type="file"]');

    // Create a new File object
    const myFile = new File(['Hello World!'], '<%=member.getMimage() %>', {
        type: 'text/plain',
        lastModified: new Date(),
    });

    // Now let's create a DataTransfer to get a FileList
    const dataTransfer = new DataTransfer();
    dataTransfer.items.add(myFile);
    fileInput.files = dataTransfer.files;
	</script>
	
	
	<br>
	<br>
	<br>
		
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="수정">
			<input type="reset" class="btn btn-warning" value="취소" onclick="reset();">
			<input type="button" class="btn btn-danger" value="탈퇴" onClick="confirm_onClick();">			 
		</div>
	</div>
	
	</form>
	
	

	<script>
		function confirm_onClick() {
			var answer = confirm("정말 탈퇴하시겠습니까?");
		
		if (answer) {
			location.href = "memberoutpage.jsp";
		} else {
			history.back();
		}	
		}
	</script>
	
	<!-- <script>
		
			function confirm_onClick(){
				var answer = confirm("정말 탈퇴하시겠습니까?");
				
				if (answer) {
					loaction.href = "memberoutpage.jsp"
				} else {
					history.back();
				}
			}
		
		</script> -->
	
	</div>
	
	<br>
	<br>
	<br>
		
	

<%@ include file = "footer.jsp" %>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>