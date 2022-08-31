<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 상세보기</title>
<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<%@ include file="header.jsp" %>


<div class="container1">
	<h1 class = "h1no1">
		리뷰 상세보기
	</h1>
</div>	


 <br>
   <br> 
   <br>
   <br>
   <br>
   <br>
   
<%
	String no = request.getParameter("rno");

	 DTOreview review  =  DAOreview.reviewdetail(no);
   
 
%>


   
<div class="divTable table">
	<div class="divTableBody">
	<div class="divTableRow">
		<div class="col-12">#</div><div class="divTableCell">상세정보</div></div>
	<div class="divTableRow">
		<div class="col-12">게시글 번호</div><div class="divTableCell"><%=review.getRno() %></div></div>
	<div class="divTableRow">
		<div class="col-12">제목</div><div class="divTableCell"><%=review.getRtitle() %></div></div>
	<div class="divTableRow">
		<div class="col-12">작성자</div><div class="divTableCell"><%=review.getRname() %></div></div>
	<div class="divTableRow">
		<div class="col-12">스포일러 여부</div><div class="divTableCell"><%=review.getRspo() %></div></div>
	<div class="divTableRow">
		<div class="col-12">리뷰</div><div class="divTableCell"><%=review.getRcont() %></div></div>
</div>
</div>

   
   
   
   
 
 
   <br>
   <br>
   

<%-- <div class="container">
<div id="map" style="height:350px;"></div>
</div>

<div class="container">
<div id="roadview" style="height:350px;"></div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1ec08db05682b514796ead73a41fbdbb&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  
   
var map = new kakao.maps.Map(mapContainer, mapOption); 
var geocoder = new kakao.maps.services.Geocoder();


var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체


// 주소로 좌표를 검색합니다
geocoder.addressSearch('<%=member.getMaddr() %>', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        roadviewClient.getNearestPanoId(coords, 50, function(panoId) {
            roadview.setPanoId(panoId, coords); 
        });
        
    } 
    
});    --%>





   
<!-- </script> -->





<br>
<br>




<div class="d-grid gap-2 col-6 mx-auto">
		<a href="reviewlist.jsp" class="btn btn-primary" role="button">목록보기</a>
	</div>
	<div class="container" style="height:10px;"></div>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="revieweditpage.jsp?rname=<%=review.getRname()%>&rno=<%=review.getRno() %>" class="btn btn-success" role="button">수정하기</a>
	</div>
<br>
<br>
<br>
<br>

  <%@ include file = "footer.jsp" %> 
   
</body>
</html> 