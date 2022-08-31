<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 관리</title>
</head>
<body>
<%@ include file = "header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
   <h1 class = "display-3">배송 관리 게시판</h1>
</div>   
</div>
<div class="container w-70">
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">관리번호</th>
      <th scope="col">구매자</th>
      <th scope="col">구매제품</th>
      <th scope="col">주소</th>
      <th scope="col">전화번호</th>
      <th scope="col">가격</th>
      <th scope="col">구매일</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOdelivery> deliverys = DAOdelivery.deliveryList();
  %> 
 
  <%
for (DTOdelivery delivery : deliverys) {
%>      

		<script>
		function confirm_onClick() {
			var answer = confirm("확실합니까?");
					
			if (answer) {
				
				location.href = "sellingstatus.jsp";
			} 
			}
	</script>

    <tr>
      <th scope="row"><%=delivery.getDid()%></th>
      <td>   <p><%=delivery.getDmid() %></p></td>
      <td>   <p><%=delivery.getDpid() %></p></td>
      <td>   <p><%=delivery.getDmaddr() %></p></td>
      <td>   <p><%=delivery.getDmtel() %></p></td>
      <td>   <p><%=delivery.getDpprice() %></p></td>
      <td>   <p><%=delivery.getDdate() %></p></td>   
     <td> <%
		    if(delivery.getDstatus().equals("1")){
		    	out.print("<button onclick='confirm_onClick()'> 입금전 </button>");
		    } else if(delivery.getDstatus().equals("2")){
		    	out.print("[입금완료]");
		    } else if(delivery.getDstatus().equals("3")){
		    	out.print("[배송전]");
		    } else if(delivery.getDstatus().equals("4")){
		    	out.print("[배송중]");
		    } else if(delivery.getDstatus().equals("5")){
		    	out.print("[배송완료]");
		    }
		    %>
		    </td>
		    
    </tr>
<%    
   }
%>    
  
  
  </tbody>
</table>

   
    
	 
   <br>

 </div>
	  
	
	
	<br>
	<br>
          <br>
         


<%@ include file = "../footer.jsp" %>




</body>
</html>