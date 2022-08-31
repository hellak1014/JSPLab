<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String mname = (String)session.getAttribute("mname");
    
    	if (mname == null) {
    		out.println("<script> alert('로그인이 필요합니다.');</script>");
	    	out.println("<script> location.href='login.jsp'</script>");
    	} 
    	
    	boolean login = true;
    	
  	%> 
  	
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
		<%
        if (login) {
        	out.print(mname + "님 로그인 상태입니다.");
        }else {
        	out.print("방문을 환영합니다. 로그인 하세요.");
        }
        %>
        
<%@ include file = "header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
   <h1 class = "display-3">product List</h1>
</div>   
</div>

  
<%
ArrayList<DTOproduct> products = DAOproduct.productList();
%>  
<div class="container">
<div class="row" align="center">
<%
for (DTOproduct product : products) {
%> 
	<div class = "col-md-4">
		<h3><a href="productdetail.jsp?Pid=<%=product.getPid() %>"><%= product.getPname() %></a></h3>
		<p><%=product.getPdesc() %></p>
		<p><%=product.getPprice()%></p>
	</div>
  
<%    
   }
%> 
	</div>   
   </div> 


   <br>


	   <br>
	    <br>
	  
	  
	<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="productinputpage.jsp" class="btn btn-secondary" role="button">등록</a>
	</div>
	<br>
	<br>
          <br>
         


 <%@ include file = "../footer.jsp" %> 

</body>
</html>