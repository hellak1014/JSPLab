<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  	<%
    	String mname = (String)session.getAttribute("mname");
  		String bauthor = request.getParameter(bauthor);
  		//mname과  bauthor가 같은 값을 가져야 함.  
  	
    	if (mname == null) {
    		out.println("<script> alert('로그인이 필요합니다.');</script>");
	    	out.println("<script> location.href='login.jsp'</script>");
    	} else if (!mname.equals(bauthor)){
    		out.println("<script> alert('접근권한이 없습니다.');</script>");
	    	out.println("<script> location.href='boardList.jsp'</script>");
    	}
    	
    	
    	boolean login = true;
    	
  	%> 
  	
  	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<%@ include file = "../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
	<div class="container">
	 <h1>
		게시글 수정
	</h1>
	</div>
	</div>
	
	<%
	
	
    
	//세션 정보가 같니? -> 수정 시작
	//mname -> bauthor로 바꿔서
	//받은 다음에 bauthor이 같은 글을 출력하고 
	// 수정한다음에 boardinput에 넣어서 처리
	
	
	
	DTOboard board = DAOboard.boardDetail(bauthor); //한사람의 정보를 조회하러 감
	
	%>
	
	
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
         <input type="submit" class="btn btn-primary" value="수정">
         <input type="reset" class="btn btn-danger" value="취소" onclick="reset()">          
      </div>
   </div>


</form>

</div>

	
	
	<br>
	<br>
	<br>
		
	<!-- <div class="form-group row">
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
	 -->
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
		
	

<%@ include file = "../footer.jsp" %>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>