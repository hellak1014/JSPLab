<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.time.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>



 
<%@ include file="header.jsp" %>
<%! //선언문 사용

	String greeting =  "ToonView는 모든 창작자들을 응원합니다.";
	

%>
<br>
<!-- 표현문 사용 -->

<div class="alert" role="alert" style="text-align : center; background-color:#74C4F2; color:#FFFFFF;">
<div class="container">
	<h1 class = "display-3">
		<%= greeting %>
	</h1>
</div>	
</div>

<div style="text-align : center;">
     <img src="http://image.newsis.com/2021/11/30/NISI20211130_0000881213_web.jpg">
</div>


	<%-- <%
	 Date day = new java.util.Date();
	 LocalDate now = LocalDate.now();
	
/* 	 int year = now.getYear();
	 String month = now.getMonth().toString(); 
	 int monthV = now.getMonthValue();
	 int day = now.getDayOfMonth();	 
*/
	 int hour = day.getHours();
	 int minute = day.getMinutes();
	 int second = day.getSeconds();
	
	%>
	
	
	<p class="p-3 mb-2 bg-danger text-white"><small>현재 접속 시각은  <%=now%> <%=hour %>: <%=minute %>:  <%=second %> 입니다.</small>
	</p> --%>

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