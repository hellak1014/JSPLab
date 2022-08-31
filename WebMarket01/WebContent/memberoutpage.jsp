<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	
		<!-- 비밀번호 입력 받기 -->


	<div class="alert alert-secondary" role="alert">
	<div class="container">

	<h1 class = "display-3">
		본인 확인
	</h1>
	</div>	
	</div>

<div class="container"  style="max-width: 330px">

	<main class="form-signin">
	<form action = "memberoutcheck.jsp">
  		<div class="d-flex justify-content-center">
    	<img class="mb-4" src="https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/4arX/image/yOxTvIj1eobuuV_A4OC0eu1aRAI.jpg" alt="" width="72" height="57">
        </div>
    
    <div class="form-floating">
      <input type="password" class="form-control" name="mpass" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">비밀번호 확인</button>
    

  </form>
</main>


</div>

<br><br>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>