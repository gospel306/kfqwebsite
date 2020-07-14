<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- icon css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   	
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/main.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">

</head>
<header>
	<jsp:include page="section/header.jsp"></jsp:include>
	<jsp:include page="section/goTop.jsp"></jsp:include>
</header>
<body>
	<!--이미지+아이디어 메인 text-->
	<div id="main_head" class="d-flex justify-content-center">
		<div id="top_carousel">
			<div id="carouselExampleControls_top" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner_top">
					<div class="carousel-item active">
						<img src="image/contentpic/1.png" class="d-block w-100" alt="..." id="toptop">
					</div>
					<div class="carousel-item">
						<img src="image/contentpic/2.jpg" class="d-block w-100" alt="..." id="toptop">
					</div>
					<div class="carousel-item">
						<img src="image/contentpic/3.jpg" class="d-block w-100" alt="..." id="toptop">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls_top"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next"
					href="#carouselExampleControls_top" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>



		<div id="main_head_left">
			<p id="main_head_txt1">
				대한민국 최고의 아이디어 플랫폼,<br>
				<span id="idea_txt">ㅇㅏㅇㅣㄷㅣㅇㅓ</span>
			</p>
			<button type="button" class="btn btn-secondary btn-lg"
				id="top_botton">
				<p>
					<a href="#"><span style="font-size: 19px; color: #3964ff;">지난
							콘테스트 보기</span></a>
				</p>
			</button>
			<button type="button" class="btn btn-primary btn-lg" id="top_botton"
				style="background: #3964ff;">
				<p>
					<a href="#"><span style="color: white; font-size: 19px;">콘테스트
							개최하기</span></a>
				</p>
			</button>
		</div>
	</div>

	<!--활동중~~ 수치-->
	<div id="about_number" class="d-flex justify-content-center">
		<div id="about_number_content">
			<img src="image/main_mid_img1.jpg" id="about_number_img">
			<p id="about_number_txt">
				활동중인<br>디자이너
			</p>
			<p id="about_number_txt_number">119,900</p>
			<img src="image/main_mid_img2.jpg" id="about_number_img">
			<p id="about_number_txt">
				진행된<br>콘테스트
			</p>
			<p id="about_number_txt_number">14,310</p>
			<img src="image/main_mid_img3.jpg" id="about_number_img">
			<p id="about_number_txt">
				등록된<br>포트폴리오
			</p>
			<p id="about_number_txt_number">586,697</p>
			<img src="image/main_mid_img4.jpg" id="about_number_img"
				style="padding-top: 3px;">
			<p id="about_number_txt">
				고객<br>만족도
			</p>
			<p id="about_number_txt_number">
				4.8<span style="font-size: 13px;">/5</span>
			</p>
		</div>
	</div>


	<!--932픽셀 이하되면 이게 대신 생김.-->
	<div id="change_about" class="d-flex justify-content-center">
		<div id="change_about_number_content">
			<img src="image/main_mid_img1.jpg" id="change_about_number_img">
			<p id="change_about_number_txt">
				활동중인<br>디자이너
			</p>
			<p id="change_about_number_txt_number">119,900</p>
			<img src="image/main_mid_img2.jpg" id="change_about_number_img">
			<p id="change_about_number_txt">
				진행된<br>콘테스트
			</p>
			<p id="change_about_number_txt_number">14,310</p>
			<img src="image/main_mid_img3.jpg" id="change_about_number_img">
			<p id="change_about_number_txt">
				등록된<br>포트폴리오
			</p>
			<p id="change_about_number_txt_number">586,697</p>
			<img src="image/main_mid_img4.jpg" id="change_about_number_img"
				style="padding-top: 3px;">
			<p id="change_about_number_txt">
				고객<br>만족도
			</p>
			<p id="change_about_number_txt_number">
				4.8<span style="font-size: 13px;">/5</span>
			</p>
		</div>

	</div>

	<!--아이디어 의뢰 모아보기 부분 + 우측 캐러셀 부분-->
	<div id="main_content_div" class="d-flex justify-content-center">
		<!--아이디어 의뢰 모아보기 txt + 버튼-->
		<div id="main_content_idea_content" style="margin-right: 60px;">
			<p id="idea_txt_content">콘테스트 모아보기</p>
			<div id="txt_right_button">
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<a class=" nav-item nav-link active" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true">콘테스트</a> <a
							class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
							href="#nav-profile" role="tab" aria-controls="nav-profile"
							aria-selected="false">1:1프로젝트</a> <a class="nav-item nav-link"
							id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
							role="tab" aria-controls="nav-contact" aria-selected="false">채용
							소식</a>
					</div>
				</nav>
			</div>






			<!--여기에 버튼 및 컨텐츠 들어간다.-->
			<div id="under_button_white_img">
				<img src="image/main_mid_img1.jpg" style="width: 30px; float: left;">
				<p>따끈따끈한 콘테스트를 확인하세요!</p>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<!--카드&하단부 글자-->
						<div class="card" style="width: 18rem;">
							<img src="image/maincarousel01.jpg" class="card-img-top"
								alt="..." id="mid_cont_img">
							<div class="card-body">
								<p class="card-text">
									<span style="color: tomato;">로고</span> | 할로윈 특별상자
								</p>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel"
						aria-labelledby="nav-profile-tab">456</div>
					<div class="tab-pane fade" id="nav-contact" role="tabpanel"
						aria-labelledby="nav-contact-tab">789</div>
				</div>
			</div>
		</div>
		<!--우측 캐러셀-->
		<!--캐러셀 사용부분-->


		<div id="main_content_div_car" class="d-flex justify-content-center">
			<!--베스트 컨테스트 캐러셀-->
			<div id="carouselExampleFade" class="carousel slide carousel-fade"
				data-ride="carousel">
				<div id="inner_txt">트랜디 디자이너</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="image/car201.jpg" class="d-block w-100" alt="...">
						<div id="main_under_carousel"
							class="d-flex justify-content-center">
							<a href="#">ID값12<br>우승 #회 | 상금 #만원
							</a>
						</div>
					</div>
					<div class="carousel-item">
						<img src="image/car202.jpg" class="d-block w-100" alt="...">
						<div id="main_under_carousel"
							class="d-flex justify-content-center">
							<a href="#">ID값34<br>우승 #회 | 상금 #만원
							</a>
						</div>
					</div>
					<div class="carousel-item">
						<img src="image/car203.png" class="d-block w-100" alt="...">
						<div id="main_under_carousel"
							class="d-flex justify-content-center">
							<a href="#">ID값56<br>우승 #회 | 상금 #만원
							</a>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleFade"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleFade"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>

			</div>
		</div>

	</div>


	<!--맨 아래 사진 스크롤효과-->
	<div class="external">
		<div id="bottom_txt_external">
			<p>더 많은 아이디어를 만나보세요!</p>
		</div>
		<div class="horizontal-scroll-wrapper">
			<div class="img-wrapper slower">
				<a href="#" target="_blank" rel="noopener"><img
					src="image/contentpic/1.png" id="abc123" alt=""> </a>
			</div>

			<div class="img-wrapper faster">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/2.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper slower vertical">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/3.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper slower slower-down">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/4.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/5.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper slower">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/6.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper faster1">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/7.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper slower slower2">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/8.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/9.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper slower">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/10.jpg" id="abc123" alt="">
				</a>
			</div>

			<div class="img-wrapper slower last">
				<a href="#" target="_blank" rel="noopener"> <img
					src="image/contentpic/11.jpg" id="abc123" alt="">
				</a>
			</div>
		</div>
		<p class="scroll-info">
			<span class="icon"><svg xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
					y="0px" viewBox="0 0 100 100">
                    <path
						d="M50,67.1c-0.6,0-1.2-0.2-1.8-0.7c-3.8-3.8-7.7-7.7-11.5-11.5c-2.3-2.3,1.2-5.8,3.5-3.5c2.5,2.5,4.9,4.9,7.4,7.4      c0-13.7,0-27.4,0-41.2c0-0.6,0.2-1.2,0.5-1.5c0,0,0,0,0,0c0.4-0.6,1.1-1,2-0.9c13.7,0.3,26.4,7.2,33.5,19.1      C96.5,55.9,84.7,85,60.2,91.6C35.5,98.2,11.6,79.1,11.1,54c-0.1-3.2,4.9-3.2,5,0c0.3,13.8,8.4,26.4,21.3,31.5      c12.5,5,27.1,1.9,36.6-7.5c9.5-9.5,12.5-24.1,7.5-36.6c-4.8-12.1-16.3-20.1-29-21.2c0,12.8,0,25.5,0,38.3      c2.5-2.5,4.9-4.9,7.4-7.4c2.3-2.3,5.8,1.3,3.5,3.5c-3.9,3.9-7.8,7.8-11.8,11.8C51.2,66.9,50.6,67.1,50,67.1z" />
                </svg></span>
		</p>

	</div>
</body>
<footer>
	<jsp:include page="section/footer.jsp"></jsp:include>
</footer>
</html>