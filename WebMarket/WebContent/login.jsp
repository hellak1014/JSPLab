<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		로그인
	</h1>
</div>	
</div>

<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="logincheck.jsp">
  <div class="d-flex justify-content-center">
    <img class="mb-4" src="https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/4arX/image/yOxTvIj1eobuuV_A4OC0eu1aRAI.jpg" alt="" width="72" height="57">
        </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="mname" placeholder="name@example.com">
      <label for="floatingInput">아이디/별명</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="mpass" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>
<div class="d-flex justify-content-end">
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> 자동 로그인
      </label>
    </div>
        </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    
    <img src="http://papaspick.com/web/upload/2019_web/icon/kakao_login.jpg" width="283px" height="50px">
    <p class="mt-1 mb-3 text-muted">&copy; 2017–2022</p>
  </form>
</main>


</div>

<br><br>

<%@ include file="footer.jsp" %>

</body>
</html>