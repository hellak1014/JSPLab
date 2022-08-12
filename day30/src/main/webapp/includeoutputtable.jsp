<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
    <%@ include file="includedb.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>


<% 
	

		String sql = "SELECT * FROM exam";
		
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rset = null;
		rset = pstmt.executeQuery();
		
		//결과 넘어오는게 없으면 update
		//결과 넘어오는게 많으면 Query 
		//결과를 rest으로 지정. 객체 지정후 사용.
					
		%>
		
		<div class = "container">
		<div class="alert alert-info" role="alert">
  		회원 정보 조회
		</div>
		</div>
		<div class = "container">
		
		<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">학번</th>
      <th scope="col">이름</th>
      <th scope="col">학년</th>
      <th scope="col">전공</th>
      <th scope="col">주소</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  	int i = 1;
  
  	//.next함수 : 다음것이 있는지 묻고, 있으면 진행하고 없으면 빠져나가는 것.
  	while (rset.next())
  	{
  		String hakbun = rset.getString("hakbun");
  		String name = rset.getString("name");
  		String year = rset.getString("year");
  		String dept = rset.getString("dept");
  		String addr = rset.getString("addr");
  		

 %> 
    <tr>
      <th class = "table-light" scope="row"><%=i %></th>
      <td class = "table-danger"><%=hakbun %></td>
      <td class = "table-warning"><%=name %></td>
      <td class = "table-success"><%=year %></td>
      <td class = "table-info"><%=dept %></td>
      <td class = "table-primary"><p class = "fst-italic"><%=addr %></td>
    </tr>
  
  <%
  	i++;
  	}
  
  //html과 jsp를 반복하는 방법 : 출력하는 html도 반복 되어야 하기 때문에 while문을 출력하고 대괄호를 html로 내린다
  //그래서 while을 끝내고 jsp를 마무리하고, html을 진행하고 다시 jsp를 실행해서 대괄호를 끝낸다.
  %>
   
  </tbody>
</table>
	
		</div>
		

		<!-- JavaScript Bundle with Popper -->
		
		<%
			rset.close();
			pstmt.close();
			conn.close();
		%>
		
		

		
	</body>
</html>