<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ include file="includedb.jsp" %>
    
<%

	String hakbun = "202296543";
	String name = "kim";
	String year = "3";
	String dept = "economy";
	String addr = "Seoul seocho";




		String sql = "INSERT INTO exam1 VALUES(?,?,?,?,?)";
				
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hakbun);
			pstmt.setString(2, name);
			pstmt.setString(3, year);
			pstmt.setString(4, dept);
			pstmt.setString(5, addr);
				
	
// 5.SQL Execute
	pstmt.executeUpdate();

// 6. ResultSet Object
	// 미 실시 (sql 실행 결과 수신)
	
// 7. Connection Close
	pstmt.close();
	conn.close();		
			
%>