<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- icon css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   	
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
    <style>
        
        .main {
            padding-top: 150px;
           height: 900px;
        }

        .char_come {
            width: auto;
            height: auto;

            padding-left: 1%;
            float: left;
            margin-right: 180px;
        }

        .map {
            width:713px;
            height:400px;
            float: left;
        }
    </style>
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
    <div class="main">
        <div style="float: left; width: 17%;height: 40px; border-bottom: 1px solid black;"></div>
        <div class="char_come">
            <p>

                <h1 style="font-weight: bold;">오시는 길</h1>
                <li style="padding-top: 18px; font-weight: bold;">
                    주소
                    <p style="padding-left: 22px;">서울특별시 금천구 가산동 371-28</p>
                </li>
                <li style="font-size: 14px;">
                    ㅇㅏㅇㅣㄷㅣㅇㅓ 내에는 주차 공간이 마련되어 있지 않아요.
                    <br><span style="padding-left: 22px;">주차장 앱 또는 포털 서비스 지도 검색을 통해</span>
                    <br><span style="padding-left: 22px;">주변 주차장을 이용해 주시길 바랍니다.</span>
                </li>
            </p>
        </div>

        <div id="map" style="width:500px;height:400px"></div>
        <script type="text/javascript"
            src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=97ede06f7ebf38c7362539861840ae02"></script>

        <script>
            var container = document.getElementById('map');
            var options = {
                center: new kakao.maps.LatLng(37.480005, 126.882510),
                level: 3

            };

            var map = new kakao.maps.Map(container, options);
            var markerPosition = new kakao.maps.LatLng(37.480005, 126.882510);
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });
            marker.setMap(map);
        </script>

</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>

</html>