<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- icon css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- custom js -->
<script
	src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>

<!-- custom css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resource/css/custom.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resource/css/slick.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
<script>
	$(document).ready(function(){
		$(".carousel-inner_top").children().first().addClass("active");
	});
	function show(id){
		var data = {id: id}
		$.ajax({
			type : "POST",
			url :"../../showwinner.do",
			data : data,
			success : function(data){
				console.log(data.work);
				$("#modaltitle").text(data.work.title);
				$("#modalcontent").html(data.work.content);
				$("#modelmeminfo").append("<a href='#'>design by</a><br>"+data.member.nickname);
				$("#exampleModal").modal("toggle");
			}
		});
	}
	</script>
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
					<c:forEach items="${benners1}" var="benner">
						<div class="carousel-item" onclick="show(${benner.id})"
							data-toggle="modal">
							<img src="<%=request.getContextPath()%>/${benner.thumbnailurl}"
								class="d-block w-100" alt="..." id="toptop">
						</div>
					</c:forEach>
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
				대한민국 최고의 아이디어 플랫폼,<br> <span id="idea_txt">ㅇㅏㅇㅣㄷㅣㅇㅓ</span>
			</p>
			<button type="button" class="btn btn-secondary btn-lg"
				id="top_botton">
				<p>
					<a href="<%=request.getContextPath()%>/contestlist/endcontest"><span
						style="font-size: 19px; color: #3964ff;">지난 콘테스트 보기</span></a>
				</p>
			</button>
			<button type="button" class="btn btn-primary btn-lg" id="top_botton"
				style="background: #3964ff;">
				<p>
					<a href="<%=request.getContextPath()%>/launch"><span
						style="color: white; font-size: 19px;">콘테스트 개최하기</span></a>
				</p>
			</button>
		</div>
	</div>

	<!--활동중~~ 수치-->
	<div id="about_number" class="d-flex justify-content-center">
		<div id="about_number_content">
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-1.png"
				id="about_number_img">
			<p id="about_number_txt">
				활동중인<br>디자이너
			</p>
			<p id="about_number_txt_number">119,900</p>
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-2.png"
				id="about_number_img">
			<p id="about_number_txt">
				진행된<br>콘테스트
			</p>
			<p id="about_number_txt_number">14,310</p>
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-3.png"
				id="about_number_img">
			<p id="about_number_txt">
				등록된<br>포트폴리오
			</p>
			<p id="about_number_txt_number">586,697</p>
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-4.png"
				id="about_number_img" style="padding-top: 3px;">
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
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-1.png"
				id="change_about_number_img">
			<p id="change_about_number_txt">
				활동중인<br>디자이너
			</p>
			<p id="change_about_number_txt_number">119,900</p>
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-2.png"
				id="change_about_number_img">
			<p id="change_about_number_txt">
				진행된<br>콘테스트
			</p>
			<p id="change_about_number_txt_number">14,310</p>
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-3.png"
				id="change_about_number_img">
			<p id="change_about_number_txt">
				등록된<br>포트폴리오
			</p>
			<p id="change_about_number_txt_number">586,697</p>
			<img
				src="<%=request.getContextPath()%>/resource/img/contest/ic-score-4.png"
				id="change_about_number_img" style="padding-top: 3px;">
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
			<div id="under_button_white_img"
				style="padding: 20px 19px 22px 25px;">
				<p>
					<img
						src="<%=request.getContextPath()%>/resource/img/contest/ic-w-gray.png"
						style="width: 12px; vertical-align: middle; margin-right: 7px; float: left;">
					따끈따끈한 콘테스트를 확인하세요!
				</p>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">
						<div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
						<!--카드&하단부 글자-->
						<div class="card" style="width: 18rem; display: inline-block">
							<img
								src="<%=request.getContextPath()%>/resource/img/contest/maincarousel01.jpg"
								class="card-img-top" alt="..." id="mid_cont_img">
							<div class="card-body">
								<p class="card-text">
									<span style="color: tomato;">로고</span> | 할로윈 특별상자
								</p>
							</div>
						</div>
						</div>
						<div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
							<div style="float: right">
							<div class="cl_list">
								<table>
									<c:forEach items="${lastlists}" var="list" varStatus="status">
										<tr>
											<td>${status.count}</td>
											<td style="width: 200px; height: 24px; overflow: hidden;"><a
												href="<%=request.getContextPath()%>/contest/${list.id}"
												style="text-overflow: ellipsis;">${list.title}</a></td>
											<td style="text-align: left">
												<div class="roundBox cl_inline"
													style="width: 110px; font-size: 12px;">
													<strong>${list.firstprize}만원 <span>&nbsp;|&nbsp;</span>
														D-${list.day }
													</strong>
												</div>
											</td>
										</tr>
									</c:forEach>
								</table>
								<button
									style=" padding:5% 5%; float: right; width: 100%; height: 25px; font-size: 16px; font-weight: bold; line-height: 0px; letter-spacing: -0.3px; text-align: center; color: #292a33; border: solid 1px #dddddd; background-color: #ffffff;"
									onclick="location.href='contestlist/proceeding'">모든
									콘테스트 보러가기</button>
							</div>
						</div>
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
			<p>아이디어를 만나보세요!</p>
		</div>
		<div class="horizontal-scroll-wrapper">
			<c:forEach items="${benners2}" var="benner">
				<div class="img-wrapper slower">
					<a href="" onclick="show(${benner.id})" data-toggle="modal"
						rel="noopener"><img
						src="<%=request.getContextPath()%>/${benner.thumbnailurl}"
						id="abc123" alt=""> </a>
				</div>
			</c:forEach>
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
	<div class="idea_modal">
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="d-flex justify-content-center">
					<div class="modal-left">
						<div class="modal-left-header">
							<p>★ 콘테스트 우승작</p>
							<div class="modal-left-header-name">
								<a href="#" class="modal-left-header-contname" id="modaltitle"></a>
								<button type="button" class="btn watch-contest">콘테스트 보기</button>
							</div>
						</div>
						<div class="contet-img" id="modalcontent"></div>
						<div>
							<p
								style="font-size: 15px; font-weight: bold; padding: 20px 0 4px 70px; border-bottom: 2px solid black;">
								작품 댓글 (##건)</p>
						</div>
						<div style="padding-left: 70px;">
							
							<form action="inputBook_check.jsp" method="post"
								style="float: left;">
								<textarea cols="50" rows="8" name="CONTENT"
									style="height: 50px; float: left;"></textarea>
								<input type="submit"
									style="float: left; background-color: black; color: white; width: 78px; height: 55px;"
									value="글쓰기">
							</form>
						</div>
					</div>

					<div class="modal-right">
						<div class="modal-right-content">
							<div class="modal-right-content-header">
								<p class="modal-right-id" id="modelmeminfo"></p>
							</div>
							<div class="right-cust-info">
								<p>
									<span class="font1">우승</span>1회 | <span class="font1">상금</span>
									30만원
								</p>
								<div class="button-cover" id="modalmakewinner"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
<footer>
	<jsp:include page="section/footer.jsp"></jsp:include>
</footer>
</html>