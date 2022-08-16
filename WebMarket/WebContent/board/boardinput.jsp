

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%
	//request.setCharacterEncoding("utf-8");	
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	String driverClass = "com.mysql.jdbc.Driver";
	Class.forName(driverClass);
	
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/webmarket";
	String id = "root";
	String pw = "0000";
	
	conn = DriverManager.getConnection(url, id, pw);
	
	PreparedStatement pstmt = null;

	String sql = "INSERT INTO board (title, memo) VALUES(?,?)"; //board에 괄호 안에만 넣을거다. (db에서 뭘 추가 해도 이렇게만 들어간다. )
		
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, memo);

	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
%>

</body>
</html>