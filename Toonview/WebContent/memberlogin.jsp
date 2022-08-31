<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<%@ include file="header.jsp" %>



<div class="container1">

	<h1 class = "h1no1">
		로그인
	</h1>
</div>	

<br>
<br>
<br>
<br>
<br>
<br>

<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="memberlogincheck.jsp">
  <div class="d-flex justify-content-center">
    <img class="mb-4" src="https://img.icons8.com/dotty/480/webtoon-logo.png" alt="" width="100" height="100">
        </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="mid" placeholder="name@example.com">
      <label for="floatingInput">아이디</label>
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
    <button class="w-100 btn btn-lg btn-primary" type="submit">login</button>
    <div class="container" style="height:10px;"></div>
    <a id="custom-login-btn"href="javascript:kakaoLogin()">
    <img src="https://developers.kakao.com/tool/resource/static/img/button/login/full/en/kakao_login_medium_wide.png" width="283px" height="50px">
    </a>
    <p class="mt-1 mb-3 text-muted">&copy; 2022-2023</p>
  </form>
</main>


</div>

<br><br>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
// script
// 발급 받은 키
      Kakao.init("c277f8d288f3ba2f75e75ad1efba6e66");

      function kakaoLogin() {
        window.Kakao.Auth.login({
          // 카카오 개발자 사이트의 동의항목에서 설정한 ID와 반드시 일치해야함
          scope: 'profile_nickname,account_email',
          success: function (authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                url:'/v2/user/me',
                success: res => {           
                	// => js 애로우 function. 함수의 결과값이 존재할 경우, 어떤 또다른 함수가 이 결과값을 사용할때 다른 처리 없이 사용가능하게 하는 함수.
                    const kakaoAccount = res.kakao_account;
					location.href='mkakaocheck.jsp?kid=' + kakaoAccount.profile.nickname	
													+ '&kemail=' + kakaoAccount.email
							
;
					
                }
                });


          }
        });
      }
      </script>


<br>
<br>
<br>



<%@ include file="footer.jsp" %>

</body>
</html>