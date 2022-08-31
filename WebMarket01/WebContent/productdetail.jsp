<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 정보</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="alert alert-secondary" role="alert">

	<h1 class = "display-3">
		Product detail
	</h1>
</div>	


<%
	String no = request.getParameter("Pid");

	DTOproduct product  =  DAOproduct.productDetail(no);
   
 	String img1 = product.getPimage1();
    String imgstr1 = "";
    
    String img2 = product.getPimage2();
    String imgstr2 = "";
    
    String img3 = product.getPimage3();
    String imgstr3 = "";
   
   if(img1 != null){
      imgstr1 = "images/" + img1;}  
   if(img2 != null){
	      imgstr2 = "images/" + img2;} 
   if(img3 != null){
	      imgstr3 = "images/" + img3;}
%>

<%-- <div style="text-align : center;">
<img src="<%=imgstr1 %>">
</div>
<div style="text-align : center;">
<img src="<%=imgstr2 %>">
</div>
<div style="text-align : center;">
<img src="<%=imgstr3 %>">
</div>
<br><br> --%>


<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="margin-left: auto; margin-right:auto;">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<%=imgstr1 %>" class="d-block w-50" >
    </div>
    <div class="carousel-item">
      <img src="<%=imgstr2 %>" class="d-block w-50" >
    </div>
    <div class="carousel-item">
      <img src="<%=imgstr3 %>" class="d-block w-50" >
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>




<br>
<br>


<div class="container text-center">
      <div class="card align-middle text-center border-info text-dark bg-light mb-3 m-auto" style="max-width: 18rem;">
         <div class="card-header">
             no. : <%=product.getPid() %><br>
         </div>
            <div class="card-body">
            <h5 class="card-title">제품: <%=product.getPname() %><br></h5>
            <p class="card-text">상세 설명 : <%=product.getPdesc() %><br>
                        			가격 : <%=product.getPprice() %><br>
                        pimage1 : <%=product.getPimage1() %><br>
                        pimage2 : <%=product.getPimage2() %><br>
                        pimage3 : <%=product.getPimage3() %><br>
            </p>
            </div>
      </div>
      </div> 




<br>
<br>
	
<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<a href="productlist.jsp" class="btn btn-warning" role="button">목록보기</a>
			<a href="deliverypage.jsp?pid=<%=product.getPid() %>&pname=<%=product.getPname() %>&pprice=<%=product.getPprice() %>" class="btn btn-primary" role="button"> 구매하기 </a>
					 
		</div>
	</div>
<br>
<br>
<br>
<br>

  <%@ include file = "footer.jsp" %> 
   
</body>
</html> 