<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
    <%@ page import="exam2.*" %>
    
	<% 
  
	Connection conn = null;
	conn = Dbconnclose.getConnection();
	PreparedStatement pstmt = null;
	
	
	String sql = "CREATE table visit("
			+ "memo 	varchar(50) not null,"
			+ "primary key(memo))";

		pstmt = conn.prepareStatement(sql);
	
	// 5.SQL Execute
		pstmt.executeUpdate();

	// 6. ResultSet Object
		// 미 실시 (sql 실행 결과 수신)
		
	// 7. Connection Close
		pstmt.close();
		conn.close();
		

	
			
	
	%>