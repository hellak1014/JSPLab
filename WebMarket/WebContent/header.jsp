<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


<nav class="navbar navbar-expand-xl" style="background-color: #e3f2fd">
    <div class="container-fluid">
      <a class="navbar-brand" href="../welcome.jsp">Web Market</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample06" aria-controls="navbarsExample06" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample06">
        <ul class="navbar-nav me-auto mb-2 mb-xl-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="welcome.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="board/boardList.jsp">문의 게시판</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="mail.jsp">메일 보내기</a>
          </li>
          
          
              <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">제품</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="../productlist.jsp">제품 목록</a></li>
              <li><a class="dropdown-item" href="../cart.jsp">장바구니</a></li>
              <li><a class="dropdown-item" href="#">------------</a></li>
              <li><a class="dropdown-item" href="../buyinglist.jsp">구매내역</a></li>
              <li><a class="dropdown-item" href="../delivery.jsp">배송정보</a></li>
            </ul>
          </li>
          
          
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">회원 관리</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
              <li><a class="dropdown-item" href="logout.jsp">로그 아웃</a></li>
              <li><a class="dropdown-item" href="#">------------</a></li>
              <li><a class="dropdown-item" href="join.jsp">회원 가입</a></li>
              <li><a class="dropdown-item" href="memberoutpage.jsp">회원 탈퇴</a></li>
              <li><a class="dropdown-item" href="membereditpage.jsp">회원 정보 수정</a></li>
            </ul>
          </li>
          
      
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자 전용</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="member/memberslist.jsp">회원 관리</a></li>
              <li><a class="dropdown-item" href="../products.jsp">제품 관리</a></li>
              <li><a class="dropdown-item" href="#">------------</a></li>
              <li><a class="dropdown-item" href="../boards.jsp">게시판 관리</a></li>
              <li><a class="dropdown-item" href="../etcs.jsp">기타</a></li>
            </ul>
          </li>
        </ul>
        
        
        <!-- <form role="search">
          <input class="form-control" type="search" placeholder="Search" area-label="Search">
        </form> -->
      <%--   
       <%
         String mname = (String)session.getAttribute("mname");
       
        if (mname==null) {
        	out.print(mname + "님 로그인 상태입니다.");
        }else {
        	out.print("방문을 환영합니다. 로그인 하세요.");
        }
        %>   --%>
        
        
     <%--    <div class="alert alert-secondary" role="alert">
			<div class="container">

	<h1 class = "display-3">
		<%= greeting %>
	</h1>
	</div>	
	</div>
         --%>
      </div>
    </div>
  </nav>


<nav class="navbar navbar-dark bg-dark">
<div class="container">
<div class="navbar-header">
<a class="navbar-brand" href="welcome.jsp">Home</a>
</div>
</div>
</nav>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/resource/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resource/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/summernote-lite.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>