<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%
//sql패키지 임포트 
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL package import</title>
</head>
<body>

<%
	//JDBC 드라이버 로딩
	String driverClass = "com.mysql.jdbc.Driver";

	try{
		Class.forName(driverClass);
		out.print("JDBC Driver loading 성공<br>");
		//system 빠짐. 그리고 ln도 안먹혀서 <br>로 사용. 
	} catch (ClassNotFoundException e){
		out.print("JDBC Driver loading 실패<br>");
	}

	//mySQL 데이터 베이스 서버 연결
	String url = "jdbc:mysql://localhost:3306";
	String id = "root";
	String pw = "0000";
	
	//connection object
	Connection conn = null;
	
	try {
		conn = DriverManager.getConnection(url, id, pw);
				out.print("MySQL 서버 연결 성공 <br>");
	} catch (SQLException e){
		out.print("MYSQL 서버 연결 실패 <br>");
	} 
		
	
	

	
	
	
%>
</body>
</html>