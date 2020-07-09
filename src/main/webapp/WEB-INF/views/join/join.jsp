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
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/contest_join.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/join.css">
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
<div>
	<div class="first_layout">
		<!--main-->
		<div class="main">
			<!-- contest list item-->
			<div class="contest_list_item">
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-sm-2 brief_item_img">
								<img src="<%=request.getContextPath()%>/${contest.imgurl}" alt="">
							</div>
							<div class="col-sm-3 brief_item_category">
								<div class="item_categoty">
									${contest.contesttype}
								</div>
							</div>
							<div class="col-sm-7 brief_item_title">
								<div class="item_title">
									${contest.title}(${contest.company})
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 brief_item_content">
								<div class="brief_content_item_text_4 form-control animated" id="brief_item_content_1">
									${contest.serviceinfo }
                                 </div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 item_box_tail">
						<div class="item_price">
							<div class="item_price_text">
								1등: ${contest.firstprize}만원
								<c:if test="${contest.secondprize ne 0}">
									/ 2등: ${contest.secondprize}
									<c:if test="${contest.thirdprize ne 0}">
										/ 3등: ${contest.thirdprize}
									</c:if>
								</c:if>
							</div>
						</div>
						<div class="item_period">
							<div class="item_period_text">
							남은기간: ${contest.day}일(~${contest.enddate})
							</div>
						</div>
						<div class="item_visitCount">
							<div class="item_visitCount_text">
								조회수 : ${contest.views}
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- contest list item-->

			<!--join step1-->
			<div class="join_step1" id="join_step1">
				<div class="row">
					<div class="col-lg-3"></div>

					<div class="col-lg-6">
						<img class="join_step1_img" src="<%=request.getContextPath()%>/resource/img/contest/img_step01.png" alt="">
					</div>
					<div class="col-lg-3"></div>

				</div>

				<!--join step1-->

				<!--join step2-->
				<div class="join_step1_content">
					<div class="join_step1_content_img">
						<img src="<%=request.getContextPath()%>/resource/img/contest/join_info1.png" alt="">
					</div>

					<div class="join_step1_content_text">
						<span class="font_bold">1</span>. <span class="font_bold font_red">로고,
							일러스트 콘테스트에는 어떠한 스톡이미지, 프리벡터, 클립아트도 사용해서는 안 됩니다.</span><br> 상업적 사용이
						제한되는 폰트, 스톡이미지의 사용 규정 및 범위를 위반할 시, 계정이 영구적으로 삭제될 수 있습니다.<br>
						작품에 유료 폰트, 스톡이미지, 프리벡터 등을 사용한 경우에는 반드시 의뢰자에게 저작권 문제가 없음을 확인하고
						명시해야만 합니다.

					</div>

					<div class="join_step1_content_text">
						<span class="font_bold"> 2</span>. <span class="font_bold font_red">아이디어의 판단 하에 본 디자인이 다른 디자이너의
							작품을
							도용한 것으로 판단되는 경우,<br> 아이디어는 해당 디자이너의 활동을 제지 혹은 금지할 수 있습니다.
						</span><br> 또한 상금이 지급되었을 경우 아이디어는 디자이너에게 전액 환불을 요구할 수 있으며,<br>
						이에서 파생되는 의뢰자와의 분쟁 및 손해에 관해서는 관련법규에 따라 디자이너에게 배상의 의무가 부여될 수 있습니다.<br>
						<span class="font_bold"> 반드시 자신의 디자인만 등록해 주세요</span>
					</div>
					<div class="join_step1_content_text">
						<span class="font_bold"> 3</span>. <span class="font_bold">로고,
							일러스트</span> 등의 디자인은 반드시 <span class="font_bold font_red">벡터 형태</span>로
						작업해야 합니다. 이를 어길 시 이용정지 처리될 수 있습니다.
					</div>
					<div class="join_step1_content_text">
						<span class="font_bold"> 4</span>. 잘못된 디자인으로 인해 법적인 문제에 휘말리게 될 경우,
						모든 법적 그리고 금전적인 손실에 대한 책임은 디자이너 측에 있습니다.

					</div>
					<div class="join_step1_content_text">
						<span class="font_bold"> 5</span>. 아이디어는 실제 상업적으로 사용될 디자인을 의뢰하는 전문
						디자이너 플랫폼입니다.<br> 동일 디자이너의 시안에 대해 의뢰자의 불만이 지속적으로 발생 시, 아이디어는
						내부 검수를 통해 참여가 제한될 수 있습니다.
					</div>
				</div>
				<div class="join_step1_tail">
					<div class="join_step1_tail_text">
						* 콘테스트 참여 시 반드시<span class="font_bold"> [법률 제 11110호 -
							저작권법]</span>을 준수하여야 합니다.
					</div>
				</div>
				<div class="join_step1_check">
					<div class="row">
						<div class="col-lg-3"></div>
						<div class="col-lg-6">
							<button class="learn-more join_step1_checkbox"   id="join_step1_check" onclick="location.href='joininfo'">동의 하십니까?</button>
						</div>
						<div class="col-lg-3"></div>
					</div>
				</div>
			</div>
			<!--join step1-->
		</div>
		<!--main-->
	</div>
</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>