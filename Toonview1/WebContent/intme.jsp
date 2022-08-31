<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개글</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<%@ include file="header.jsp" %>


<br>
<br>
<br>

<div class = cubi>
<div style = "margin:0 auto; ">
<div class="card mb-3" style="max-width: 60%; " >
  <div class="row g-0">
    <div class="col-md-4">
      <img src="https://w.namu.la/s/5c85522c4d11baa71348cdc8a6d18d8b572d795ee125a1003628abc49af5620402f77605bcf4db73230e105e605524852a9e5982cddfbd38563484434c4327b581b1979f3c231a4514e0c860d70ce7d97a05810af70c43c35ff459ce6ac364b1" class="img-fluid rounded-start">
    </div>
    <div class="col-md-8">
      <div class="card-body">
      <br>
      <br>
        <h5 class="card-title">만든 사람</h5>
        <p class="card-text"> email : hella.k0114@gmail.com</p>
        <p class="card-text"> github : https://github.com/hellak1014?tab=repositories </p>
        <p class="card-text"><small class="text-muted">&copy Kwak Eun Young</small></p>
        <p class="card-text"><small class="text-muted">project by 더조은컴퓨터학원</small></p>
        
      </div>
    </div>
  </div>
</div>
</div>
</div>


<br>
<br>
<br>

 <div class="container">
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
geocoder.addressSearch('서울특별시 종로구 우정국로2길 21', function(result, status) {

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
            content: '<div style="width:150px;text-align:center;padding:6px 0;">더조은컴퓨터학원</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        roadviewClient.getNearestPanoId(coords, 50, function(panoId) {
            roadview.setPanoId(panoId, coords); 
        });
        
    } 
    
});    

</script>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<%@ include file="footer.jsp" %>

</body>
</html>