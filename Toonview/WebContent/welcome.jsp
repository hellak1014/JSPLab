<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.time.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>



 
<%@ include file="header.jsp" %>
<%! //선언문 사용

	String greeting =  "ToonView는 모든 창작자들을 응원합니다.";
%>
<br>
<!-- 표현문 사용 -->

<div class="container1"  >
	<h1 class="h1no1">
		<%= greeting %>
	</h1>
</div>	



<br>
<br>
<br>


<div class = "img1" > 
     <img src="http://image.newsis.com/2021/11/30/NISI20211130_0000881213_web.jpg">
</div>



<br>
<br>
<br>
<br>
<br>
<br>

<!-- <footer class="container">
	<p> &copy; KEY</p>
</footer> -->

<%@ include file="footer.jsp" %>


</body>
</html>