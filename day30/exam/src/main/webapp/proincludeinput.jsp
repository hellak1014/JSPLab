<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
     <%@ include file="prodbincluded.jsp" %>
     
     <%
     
     String pno = "2648976";
     String pname = "kim";
     String year = "2";
     String pdept = "eco";
     String pmoblie = "01064646666";
     
     
     String sql = "INSERT INTO prof VALUES(?,?,?,?,?)";
     
     pstmt = conn.prepareStatement(sql);
     	pstmt.setString(1, pno);
     	pstmt.setString(2, pname);
     	pstmt.setString(3, year);
     	pstmt.setString(4, pdept);
     	pstmt.setString(5, pmoblie);
     	
     	
     // 5.SQL Execute
     		pstmt.executeUpdate();

     	// 6. ResultSet Object
     		// 미 실시 (sql 실행 결과 수신)
     		
     	// 7. Connection Close
     		pstmt.close();
     		conn.close();
     		
     		
     		%>
     	