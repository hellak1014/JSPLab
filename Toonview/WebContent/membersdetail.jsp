<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 정보</title>
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<%@ include file="header.jsp" %>


<div class="container1">

	<h1 class = "h1no1">
		회원 상세 정보
	</h1>
</div>	



   <br>
   <br>
   
<%
	String no = request.getParameter("mno");

	 DTOmember member  =  DAOmember.memberdetail(no);
   
 String img = member.getMimage();
   String imgstr = "";
   
   if(img != null){
      imgstr = "images/" + img; 
   }
%>



	<div class="card" style="width: 300px; margin-left: auto; margin-right:auto;">
  		<img src="<%=imgstr %>" class="card-img-top">
  		<div class="card-body">
    	<p class="card-text" style="text-align:center;"><%=member.getMid() %></p>
  	</div>
	</div>

   <br>
   <br>
   
   
   <table class="table table-striped" style="width : 600px; margin-left: auto; margin-right:auto;">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">상세 정보</th>
      
    </tr>
  </thead>
  <tbody>
  	<tr>
      <th scope="row">등록번호</th>
      <td><%=member.getMno() %></td>
    </tr>
    <tr>
      <th scope="row">아이디</th>
      <td><%=member.getMid() %></td>
    </tr>
    <tr>
      <th scope="row">이메일</th>
      <td><%=member.getMemail() %></td>
    </tr>
    <tr>
      <th scope="row">연령</th>
      <td><%=member.getMage() %></td>  
    </tr>
    <tr>
      <th scope="row">생일</th>
      <td><%=member.getMbd() %></td>  
    </tr>
    <tr>
      <th scope="row">전화번호</th>
      <td><%=member.getMtel() %></td>  
    </tr>
    <tr>
      <th scope="row">성별</th>
      <td><%=member.getMgender() %></td>  
    </tr>
    <tr>
      <th scope="row">등급</th>
      <td><%=member.getMlevel() %></td>  
    </tr>
    <tr>
      <th scope="row">사진</th>
      <td><%=member.getMimage() %></td>  
    </tr>
    <tr>
      <th scope="row">가입 날짜</th>
      <td><%=member.getMdate() %></td>  
    </tr>
  </tbody>
</table>
   
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
		<a href="memberslist.jsp" class="btn btn-primary" role="button">목록보기</a>
	</div>

<br>
<br>
<br>
<br>

  <%@ include file = "footer.jsp" %> 
   
</body>
</html> 