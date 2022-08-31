<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
	<%@ page import="DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출력</title>
</head>
<body>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


<%

	PreparedStatement pstmt = null;
	Connection conn = null;
	conn = member.getConnection();


	String sql = "SELECT * FROM member"; 
	
	pstmt = conn.prepareStatement(sql);
	
	ResultSet rset = null;
	rset = pstmt.executeQuery();

%>


	<div class = "container">
	<div class = "alert" role="alert">
	멤버 정보 조회
	</div>
	</div>
	<div class = "container">
	<table class="table table-hover">
	<thead>
	<tr>
		<th scope="col">번호</th>
		<th scope="col">이름</th>
		<th scope="col">전화번호</th>
		<th scope="col">등급</th>
		<th scope="col">등록날짜</th>
	</tr>
	</thead>
	
	
	<tbody>
	
	<%
	
		int i = 1;
	
	while (rset.next())
	{
		String mno = rset.getString("mno");
		String mname = rset.getString("mname");
		String mtel = rset.getString("mtel");
		String mlevel = rset.getString("mlevel");
		String mdate = rset.getString("mdate");
	
	
	%>
	
	<tr>
      <th class scope="row"><%=mno %></th>
      <td class><%=mname %></td>
      <td class><%=mtel %></td>
      <td class><%=mlevel %></td>
      <td class><%=mdate %></td>
    </tr>
	
	
	<%
	
	
	i++;
	
	}
	
	%>
	
	
	</tbody>
		
		
		</table>
	</div>


	<%

	rset.close();
	pstmt.close();
	conn.close();
	%>





<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>


</body>
</html>