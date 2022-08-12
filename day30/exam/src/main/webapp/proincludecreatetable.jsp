<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page import="java.sql.*" %>
     <%@ include file="prodbincluded.jsp" %>

<% 
  
	
	String sql = "CREATE table prof("
			+ "pno 		varchar(20) not null,"
			+ "pname 	varchar(5),"
			+ "year 	varchar(5),"
			+ "pdept 	varchar(10),"
			+ "pmoblie 	varchar(11),"
			+ "primary key(pno))";

		pstmt = conn.prepareStatement(sql);
	
	// 5.SQL Execute
		pstmt.executeUpdate();

	// 6. ResultSet Object
		// 미 실시 (sql 실행 결과 수신)
		
	// 7. Connection Close
		pstmt.close();
		conn.close();
		

	
			
	
	%>