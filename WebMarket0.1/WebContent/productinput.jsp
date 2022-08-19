<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.sql.*" %>
    
  <%
  
  request.setCharacterEncoding("utf-8");	
  
  	String pid = request.getParameter("pid");
  	String pname = request.getParameter("pname");
  	String pdesc = request.getParameter("pdesc");
  	String pprice = request.getParameter("pprice");
  	
  
  
  
   //1.sql package import 
	//2. jdbc driver loading
	// src - main - webapp - WEB-INF - lib 이 위치에 드라이버 파일을 넣기 
	//mysql-connector-java-8.0.26.jar
	
		String driverClass = "com.mysql.jdbc.Driver";
		Class.forName(driverClass);
	
	//3.Connection Object 
		
		Connection conn =  null;
	
		String url = "jdbc:mysql://localhost:3306/webmarket";
		String id = "root";
		String pw = "0000";
		
		conn = DriverManager.getConnection(url, id, pw);
		
		//4.statement Object
		
			PreparedStatement pstmt = null; //구문 객체 초기화
			
			String sql = "INSERT INTO product VALUES(?,?,?,?,?)";
			
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, pid);
		pstmt.setString(2, pname);
		pstmt.setString(3, pdesc);
		pstmt.setString(4, pprice);
		pstmt.setString(5, "etc");
			

		//5. SQL Execute

		pstmt.executeUpdate();

		//6. ResultSet Object
		//미 실시 (sql 실행 결과 수신)

		//7. Connection Close

		pstmt.close();
		conn.close();

		%>
  
  	
  	
  
 