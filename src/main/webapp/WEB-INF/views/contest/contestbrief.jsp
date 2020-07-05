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
	<script src="<%=request.getContextPath()%>/resource/js/contest/contestBrief.js"></script>
	<script src="<%=request.getContextPath()%>/resource/js/section/goTop.js"></script>
	
	<!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/contest_done.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
	<!--first_layout-->
	<div class="first_layout">
		<!--brief_head-->
		<div class="brief_head">
			<div class="row">
				<div class="col-lg-2 head_img">
					<img class="head_img_1" src="img/trophy-icon2.png" alt="">
				</div>
				<div class="col-lg-10">
					<div class="head_title">
						아이디어 매니저가 알려주는 <span class="span_st_1"> 콘테스트 꿀팁!</span>
					</div>
					<div class="head_tap">
						<div class="row">
							<div class="col-sm-2 head_tap_st" id="head_tap_1">#콘테스트란</div>
							<div class="col-sm-2 head_tap_st" id="head_tap_2">#참여자수</div>
							<div class="col-sm-2 head_tap_st" id="head_tap_3">#적정상금</div>
							<div class="col-sm-2 head_tap_st" id="head_tap_4">#우승작선정</div>
							<div class="col-sm-2 head_tap_st" id="head_tap_5">#만족도</div>
							<div class="col-sm-2 head_tap_st" id="head_tap_6">#1:1프로젝트
							</div>
						</div>

					</div>
					<div class="head_tap_content">

						<div class="" id="head_tap_content_1">
							<div class="head_tap_content_title">콘테스트 방식에 왜 모두 열광하나요?</div>
							<div class="head_tap_content_text">기존에 한 업체에게 의뢰하고 1~3개 시안을
								받던 것과 비교하면, 며칠만에 수많은 시안을 받아볼 수 있는 콘테스트 시스템은 그야말로 획기적입니다. 내 마음에 쏙
								드는 디자이너를 만날 수 있는 최적의 시스템입니다.</div>

						</div>
						<div class="display_close " id="head_tap_content_2">
							<div class="head_tap_content_title">몇 명의 참여자를 기대할 수 있나요?</div>
							<div class="head_tap_content_text">참여자 수는 어떤 디자인을 의뢰하느냐에 따라
								달라지지만 평균적으로 로고는 20개 이상, 그 외 카테고리는 10개 이상을 기대할 수 있습니다. 물론 상금이
								높을수록 참여자 수는 많아집니다. [종료된 콘테스트]를 참고해보세요.</div>
						</div>
						<div class="display_close " id="head_tap_content_3">
							<div class="head_tap_content_title">어느 정도의 상금을 걸고 진행하면 되나요?
							</div>
							<div class="head_tap_content_text">개인과 소상공인에게는 일반형 이상,
								기업에게는 고급형 이상을 추천합니다. 패키지 별 안내는 [가격안내] 페이지를 참고해주세요. 궁금한 점이 있으면
								언제든지 고객센터로 문의주세요. 1599-3413 (평일 10시~6시)</div>
						</div>
						<div class="display_close " id="head_tap_content_4">
							<div class="head_tap_content_title">우승작을 선정하면 그 후에는 어떻게
								진행되나요?</div>
							<div class="head_tap_content_text">우승자와 대화할 수 있는 둘만의 채팅창이
								생성됩니다. 그 곳에서 3회까지의 수정작업을 진행할 수 있고, 필요에 따라 추가 비용을 지불하고 더 많은 작업을
								요청할 수도 있습니다. 모든 작업이 완료된 후에 디자이너에게 상금이 지급됩니다.</div>
						</div>
						<div class="display_close " id="head_tap_content_5">
							<div class="head_tap_content_title">아이디어를 이용해 본 고객의 만족도가
								궁금해요.</div>
							<div class="head_tap_content_text">[고객후기] 페이지에서 다른 고객들의
								만족도를 확인해보세요. 수천개의 실제 후기가 남겨져 있습니다. 그리고 그 중 95% 이상의 고객님께서
								만족하셨습니다. (☆ 4.8 / 5점)</div>
						</div>
						<div class="display_close " id="head_tap_content_6">
							<div class="head_tap_content_title">1:1 프로젝트는 뭔가요?</div>
							<div class="head_tap_content_text">요구되는 작업량이 많아 콘테스트 참여가
								저조할 것 같을 때, 혹은 한 명의 디자이너에게 통일된 작업을 요청하고 싶을때는 [1:1 프로젝트]를 이용해보세요.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--brief_head-->

		<!--main-->
		<div class="main">
			<!-- contest list item-->
			<div class="contest_list_item contest_list_item_roof">
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-sm-2 brief_item_img">
								<img src="img/thumbimg_logo.png" alt="">
							</div>
							<div class="col-sm-3">
								<div class=" item_box_category" id="item_box_category"></div>
								<div id="item_box_userId"></div>
							</div>
							<div class="col-sm-7">
								<div class="item_box_contestTitle">
									<span id="item_box_contestTitle"></span>
								</div>
								<div class='item_box_userName' id='item_box_userName'></div>
								<div class='item_box_optionImage' id='item_box_optionImage'>
								</div>
							</div>
						</div>
						<div class="row item_content_roof">
							<div class="col-sm-12 item_box_contestContent"
								id="item_box_contestContent"></div>
						</div>
					</div>
					<div class="col-lg-4 item_box_tail">

						<div class="item_box_contestReward item_content_tail_roof"
							id="item_box_contestReward"></div>


						<div class="item_box_contestPeriod item_content_tail_roof"
							id="item_box_contestPeriod"></div>

						<div class="item_box_joinCount item_content_tail_roof"
							id="item_box_joinCount"></div>
					</div>
				</div>
			</div>

			<!-- contest list item-->

			<!--briefing -->
			<div class="briefing">
				<!--briefing_title-->
				<div class="briefing_title">
					<img src="img/icon_brief1.png" alt=""> 콘테스트 브리핑 자세히보기
				</div>
				<!--briefing_title-->

				<!--brief content-->
				<div class="brief_content">
					<div class="row brief_content_item_1">
						<div class="col-lg-2 brief_content_item_title">
							<img src="img/ic-arrowpoint.png"> 제목
						</div>
						<div class="col-lg-10 contest_brief_title"
							id="contest_brief_title"></div>
					</div>
					<div class="row brief_content_item_2">
						<div class="col-lg-2 brief_content_item_title">
							<img src="img/ic-arrowpoint.png"> 회사명
						</div>
						<div class="col-lg-10 contest_brief_userName "
							id="contest_brief_userName"></div>
					</div>

					<div class="row brief_content_item_3">
						<div class="col-lg-2 brief_content_item_title">
							<img src="img/ic-arrowpoint.png"> 서비스설명
						</div>
						<div class="col-lg-10 contest_brief_content "
							id="contest_brief_content"></div>
					</div>
				</div>
				<!--brief content-->
			</div>
			<!--briefing -->
			<div class="row">
				<div class="col-lg-4"></div>

				<div class="col-lg-4">
					<button class="learn-more join_step1_checkbox"
						id="join_step1_check">콘테스트 참여</button>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
		<!--main-->
	</div>
	<!--first_layout-->
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>