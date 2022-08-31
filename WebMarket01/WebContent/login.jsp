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
    <a id="custom-login-btn"href="javascript:kakaoLogin()">
    <img src="http://papaspick.com/web/upload/2019_web/icon/kakao_login.jpg" width="283px" height="50px">
    </a>
    <p class="mt-1 mb-3 text-muted">&copy; 2017–2022</p>
  </form>
</main>


</div>

<br><br>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
// script
// 발급 받은 키
      Kakao.init("1ec08db05682b514796ead73a41fbdbb");

      function kakaoLogin() {
        window.Kakao.Auth.login({
          // 카카오 개발자 사이트의 동의항목에서 설정한 ID와 반드시 일치해야함
          scope: 'profile_nickname,account_email,gender',
          success: function (authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                url:'/v2/user/me',
                success: res => {           
                	// => js 애로우 function. 함수의 결과값이 존재할 경우, 어떤 또다른 함수가 이 결과값을 사용할때 다른 처리 없이 사용가능하게 하는 함수.
                    const kakaoAccount = res.kakao_account;
					location.href='kakaocheck.jsp?mname=' + kakaoAccount.profile.nickname	
							+ '&memail=' + kakaoAccount.email
							+ '&mgender=' + kakaoAccount.gender
;
					
                }
                });


          }
        });
      }
      </script>






<%@ include file="footer.jsp" %>

</body>
</html>