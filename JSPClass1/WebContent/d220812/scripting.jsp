<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>

<h2>Scripting Tag</h2>

	
	<%! 				//선언문 declaration. 느낌표가 있음. 
	
		int count= 3; //선언문. 태그를 사용하여 변수를 선언. (메서드)
	
		String makeItLower(String data){
			return data.toLowerCase();
		} 			//선언문 태그를 사용하여 매서드 선언. 
	%> 
	
	<% 				//스크립틀릿 scriptlet.
	
		for (int i = 1; i <count; i++){
			out.print("Java Server Pages " + i + "<br>");
		} 			//자바 일반 코드 작성.
	
	%>
	
	<%=makeItLower("Hello World!")%>
	<%//표현문 태그 - 매서드를 호출하여 그 결과를 문자열 형태로 출력. %>
	
	

</body>
</html>