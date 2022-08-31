<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 10 이하의 짝수만 출력하세요. 단, 스크립트 태그 3종을 모두 사용하세요. -->

<%!
	int i = 1;
%>

	

<%
	for (i = 1 ; i<11; i ++){
		if (i%2==0){
			out.print(i + " ");
		}	
	}
%>

<%= "이 짝수이다." %>

</body>
</html>