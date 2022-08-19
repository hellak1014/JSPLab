<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../header.jsp" %>

<div class="alert alert-secondary" role="alert">

	<h1 class = "display-3">
		Product detail
	</h1>
</div>	


<%
	String no = request.getParameter("pid");

	 DTOproduct product  =  DAOproduct.productDetail(no);
   
 	String img1 = product.getPimage1();
    String imgstr1 = "";
    
    String img2 = product.getPimage2();
    String imgstr2 = "";
    
    String img3 = product.getPimage3();
    String imgstr3 = "";
   
   if(img1 != null){
      imgstr1 = "../images/" + img1;}  
   if(img2 != null){
	      imgstr2 = "../images/" + img2;} 
   if(img3 != null){
	      imgstr3 = "../images/" + img3;}
%>

<div style="text-align : center;">
<img src="<%=imgstr1 %>">
</div>
<div style="text-align : center;">
<img src="<%=imgstr2 %>">
</div>
<div style="text-align : center;">
<img src="<%=imgstr3 %>">
</div>
<br><br>

<%-- <div style="text-align : center;"> 
제품 번호 : <%=product.getPid()%> <br>
   		<%=product.getPname()%> <br>
상세 설명 : <%=product.getPdesc()%> <br>
가격 :   <%=product.getPprice()%><br> --%>
    <%-- <%=product.getPimage1()%><br>
   <%=product.getPimage2()%><br>
   <%=product.getPimage3()%>   --%>
 
<!--  </div> -->

<div class="container : center;" >
<div style="text-align : center;">    
<div class="card" style="width: 18rem;">
  <div class="card-header">
    
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">제품 번호 : <%=product.getPid()%></li>
    <li class="list-group-item">제품 : <%=product.getPname()%></li>
    <li class="list-group-item">가격 :   <%=product.getPprice()%></li>
    <li class="list-group-item">상세 설명 : <%=product.getPdesc()%></li>
  </ul>
</div>
</div>
</div>

<br>
<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="productlist.jsp" class="btn btn-primary" role="button">목록보기</a>
	</div>

<br>
<br>
<br>
<br>

  <%@ include file = "../footer.jsp" %> 
   
</body>
</html> 