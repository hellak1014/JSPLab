<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">




</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">



<%@ include file = "header.jsp" %>

<%
    	
    
    	if (mid == null) {
    		out.println("<script> alert('로그인이 필요합니다.');</script>");
	    	out.println("<script> location.href='memberlogin.jsp'</script>");
    	} 
    	
    	boolean login = true;
    	
  	%>  





	<div class="alert" role="alert">
	<div style="background-color:#74C4F2; color:#FFFFFF;">
	<div class="container">
	 <h1>
		회원 정보 수정
	</h1>
	</div>
	</div>
	</div>
	
	<%
	
	String id = (String)session.getAttribute("mid"); //세션에 저장된 정보로
    
	DTOmember member = DAOmember.memberdetail2(mid); //한사람의 정보를 조회하러 감
	
	%>
	
	
	<div class="container" style="height:40px;"></div>

	<div class="container">
	<form action="membereditcheck.jsp" method="post">

	

	<div class="form-group row">
		<label class="col-sm-2">아이디</label>
		<div class="col-sm-3">
			<input name="mid" value="<%=member.getMid()%>" type="text" class="form-control">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">비밀번호</label>
		<div class="col-sm-3">
			<input name="mpass"value="<%=member.getMpass()%>" type="password" class="form-control">
		</div>
	</div>

	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">이메일</label>
		<div class="col-sm-3">
			<input name="memail" value="<%=member.getMemail()%>" type="text" class="form-control" >
		</div>
	</div>

	<div class="container" style="height:20px;"></div>
	
	<label class="col-sm-2"> 나이  </label>
	<div class="form-check form-check-inline">
	<%
	String age = member.getMage();
	if (age.equals("10대")){
	%>
	<input type = "radio" name="mage" id="10대" value="10대" checked >
	<label class="form-chec-label" for="flexRadioDefault1">
	10대
	</label>
	<input type="radio" name="mage" id="20대" value="20대">
 	<label class="form-check-label" for="flexRadioDefault2">
   			 20대
  	</label>
  	<input type="radio" name="mage" id="30대" value="30대">
  	<label class="form-check-label" for="flexRadioDefault2">
   			30대
  	</label>
  	<input type="radio" name="mage" id="40대 이상" value="40대 이상">
  	<label class="form-check-label" for="flexRadioDefault2">
   			40대 이상
  	</label>
	<%
	} else if (age.equals("20대")){
	%>
	<input type = "radio" name="mage" id="10대" value="10대">
	<label class="form-chec-label" for="flexRadioDefault1">
			10대
	</label>
	<input type = "radio" name="mage" id="20대" value="20대" checked >
	<label class="form-chec-label" for="flexRadioDefault2">
			20대
	</label>
	<input type="radio" name="mage" id="30대" value="30대">
  	<label class="form-check-label" for="flexRadioDefault2">
   			30대
  	</label>
  	<input type="radio" name="mage" id="40대 이상" value="40대 이상">
  	<label class="form-check-label" for="flexRadioDefault2">
   			40대 이상
  	</label>
	<%
	} else if (age.equals("30대")) {
	%>
	<input type = "radio" name="mage" id="10대" value="10대">
	<label class="form-chec-label" for="flexRadioDefault1">
			10대
	</label>
	<input type = "radio" name="mage" id="20대" value="20대">
	<label class="form-chec-label" for="flexRadioDefault2">
			20대
	</label>
	<input type = "radio" name="mage" id="30대" value="30대" checked >
	<label class="form-chec-label" for="flexRadioDefault3">
	30대
	</label>
	<input type="radio" name="mage" id="40대 이상" value="40대 이상">
  	<label class="form-check-label" for="flexRadioDefault2">
   			40대 이상
  	</label>
	<%
	} else {
	%>
	<input type = "radio" name="mage" id="10대" value="10대">
	<label class="form-chec-label" for="flexRadioDefault1">
			10대
	</label>
	<input type = "radio" name="mage" id="20대" value="20대">
	<label class="form-chec-label" for="flexRadioDefault2">
			20대
	</label>
	<input type = "radio" name="mage" id="30대" value="30대" >
	<label class="form-chec-label" for="flexRadioDefault3">
	30대
	</label>
	<input type = "radio" name="mage" id="40대 이상" value="40대 이상" checked >
	<label class="form-chec-label" for="flexRadioDefault4">
	40대 이상
	</label>
	<%
	} 
	%>
</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">생일</label>
		<div class="col-sm-3">
			<input name="mbd"value="<%=member.getMbd()%>" type="text" class="form-control">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<div class="form-group row">
		<label class="col-sm-2">전화번호</label>
		<div class="col-sm-3">
			<input name="mtel"value="<%=member.getMtel()%>" type="text" class="form-control">
		</div>
	</div>
	
	<div class="container" style="height:20px;"></div>
	
	<label class="col-sm-2">성별</label>
	<div class="form-check form-check-inline">
		<%
			String gender = member.getMgender();
			if(gender.equals("여성")){
		%>
  		<input type="radio" name="mgender" id="여성" value="여성" checked> 
  		<label class="form-check-label" for="flexRadioDefault1">
    		여성
  		</label> 
 		<input type="radio" name="mgender" id="남성" value="남성" >
  		<label class="form-check-label" for="flexRadioDefault2">
   			 남성
  		</label>
  			<% 
  			} else {
  			%>
  			  		<input type="radio" name="mgender" id="여성" value="여성"> 
  		<label class="form-check-label" for="flexRadioDefault1">
    		여성
  		</label> 
  		<input type="radio" name="mgender" id="남성" value="남성" checked>
  		<label class="form-check-label" for="flexRadioDefault2">
   			 남성
  		</label>
  		<% } %>
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
	
	<input name = "mno" value="<%=member.getMno() %>" type="hidden">
	
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
	

	
	</div>
	
	<br>
	<br>
	<br>
		
	

<%@ include file = "footer.jsp" %>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>