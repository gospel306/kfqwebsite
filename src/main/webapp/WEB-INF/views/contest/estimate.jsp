<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<script src="<%=request.getContextPath()%>/resource/js/contest/estimate.js"></script>
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/estimate.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
	<!--header-->
	<div class="header_st">
		<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-paper.png">
		<!--인라인 요소를 블록화 시키고 마진-->
		<h1 class="head_title">콘테스트 견적서 확인</h1>
		<p class="header_p_st">콘테스트 개최전 결제 금액을 견적서를 통해 미리 확인해보세요.</p>
	</div>
	<!--header end-->


	<!--content-->
	<div class="main">
		<!--1 category-->
		<div class="spacing_bottom">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> 카테고리 선택
				</div>
				<div class="col-sm-8">
					<div>
						<div class="dropdown">
							<div class="btn btn-white" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
								<div class="row ">
									<div class="col-sm-11 category_drop">
										<strong>로고디자인</strong> 로고만 제공
									</div>
									<div class="col-sm-1 dropdown-toggle"></div>
								</div>
							</div>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">로고 디자인 (로고만 제공)</a> <a
									class="dropdown-item" href="#">로고 + 명함</a> <a
									class="dropdown-item" href="#">로고 + 간판</a> <a
									class="dropdown-item" href="#">브랜딩 SET</a>
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">로고 디자인 (로고만 제공)</a> <a
									class="dropdown-item" href="#">로고 + 명함</a> <a
									class="dropdown-item" href="#">로고 + 간판</a> <a
									class="dropdown-item" href="#">브랜딩 SET</a>
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">로고 디자인 (로고만 제공)</a> <a
									class="dropdown-item" href="#">로고 + 명함</a> <a
									class="dropdown-item" href="#">로고 + 간판</a> <a
									class="dropdown-item" href="#">브랜딩 SET</a>
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">로고 디자인 (로고만 제공)</a> <a
									class="dropdown-item" href="#">로고 + 명함</a> <a
									class="dropdown-item" href="#">로고 + 간판</a> <a
									class="dropdown-item" href="#">브랜딩 SET</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--2 category-->
		<div class="contest_category">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> 콘테스트 상금 선택
				</div>

				<div class="col-sm-8">
					<span class="span_st_1">의뢰자님 예산에 맞춰, 알맞은 상금을 책정해주세요.</span><br>
					<span class="span_st_2">(상세 항목에 마우스를 대면, 자세한 설명이 나타납니다.)</span>
				</div>
			</div>
		</div>


		<div class="row">
			<!--bronze-->

			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="bronzebox" id="bronzebox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="bronzecheck" onclick="">
								<label for="bronzecheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_bronze">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-bronze.png"> 저가형
							</div>

						</div>

						<div class="box_price_bronze">30만원~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-bronze-check.png"> 
								<span>신진디자이너</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>1차 통과작 선정 불가</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>일부 디자이너 참여제한</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>상금 환불 불가</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<span> </span><br>
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
						</div>
						<div>
							<p class="font_bold">직접입력</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control" id="bronze"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">원</span>
								</div>
							</div>
						</div>
					</div>
				</label>
			</div>

			<!--bronze end-->
			<!--silver-->
			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="silverbox" id="silverbox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="silvercheck">
								<label for="silvercheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_silver">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver.png"> 일반형
							</div>
						</div>
						<div class="box_price_silver">60만원~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver-check.png"> 
								<span>경력디자이너</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver-check.png"> 
								<span>1차 통과작 선정 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver-check.png"> 
								<span>모든 디자이너 참여 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>상금 환불 불가</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
						</div>
						<div>
							<p class="font_bold">직접입력</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">원</span>
								</div>
							</div>
						</div>
					</div>
				</label>
			</div>
			<!--silver end-->
			<!--gold-->
			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="goldbox" id="goldbox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="goldcheck">
								<label for="goldcheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_gold">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold.png"> 고급형
							</div>
						</div>

						<div class="box_price_gold">100만원~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> <span>상위디자이너</span> <img
									src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>1차 통과작 선정 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>모든 디자이너 참여 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>상금 50% 환불 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>리스트 상단 노출</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
						</div>
						<div>
							<p class="font_bold">직접입력</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">원</span>
								</div>

							</div>


						</div>

					</div>
				</label>
			</div>
			<!--gold end-->
			<!--prime-->

			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="primebox" id="primebox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="primecheck">
								<label for="primecheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_prime">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime.png"> 프리미엄
							</div>

						</div>

						<div class="box_price_prime">150만원~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>탑랭킹디자이너</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>1차 통과작 선정 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>모든 디자이너 참여 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span> 상금 50% 환불 가능</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>최상단 노출 옵션 무료</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>SNS 무료 컨텐츠 홍보</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
						</div>
						<div>
							<p class="font_bold">직접입력</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">원</span>
								</div>
							</div>
						</div>
					</div>
				</label>
			</div>
			<!--prime end-->
			<div class="padding_20">
				<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-add.png" alt="">
			</div>
			<!--contestPrice-->
		</div>
		<div class="contestPrice">
			<div>
				디자인 콘테스트 등록비 <span class="span_st_20"> <span> 10만원</span></span> 
				<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowright.png" alt=""> 
				<span class="span_st_6">
					7만원 &nbsp;&nbsp; <span class="span_st_4"> 신규회원할인 </span>
				</span>
			</div>
		</div>

		<!--rank-->
		<div class="contestRank">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> 2위/3위 추가선정
					<div class="est_category_contents">2, 3위 추가 수령을 원하실 경우에만 상금을
						기입해주세요. 2,3위를 추가하면 더 많은 참여를 유도할 수 있습니다.</div>
				</div>
				<div class="col-sm-8 align_left">
					<div>
						<input type="checkbox" id="rank_check"> <label
							for="rank_check"></label> 2위/3위 우승상금설정
					</div>
					<div class="contest_price_input" id="rank_check_input_2">
						<div class="input-group" class="padding_top_5">
							2위상금 <input type="text" class="form-control"
								aria-label="Dollar amount (with dot and two decimal places)">
							<div class="input-group-append">
								<span class="input-group-text">원</span>
							</div>
						</div>
					</div>
					<div class="contest_price_input" id="rank_check_input_3">
						<div class="input-group" class="padding_top_5">
							3위상금 <input type="text" class="form-control"
								aria-label="Dollar amount (with dot and two decimal places)">
							<div class="input-group-append">
								<span class="input-group-text">원</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--rank-->

		<!--기간-->
		<div class="contestPeriod">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> 기간설정
				</div>

				<div class="col-sm-8 align_left">
					<div>
						<input type="radio" name="periodeRadio" id="contestPeriod_week" checked> &nbsp;&nbsp;&nbsp;1주일
					</div>
					<div>
						<input type="radio" name="periodeRadio" id="contestPeriod_week_add"> &nbsp;&nbsp; 1주 연장(총 2주)
					</div>
					<div>
						<input type="radio" name="periodeRadio" id="contestPeriod_3week_add"> &nbsp;&nbsp;&nbsp;3주 연장(총 4주)
					</div>
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 기본 콘테스트 기간은 1주일입니다.
					</div>
				</div>
			</div>
		</div>

		<!--추가옵션-->
		<div class="contestExtra">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> 추가옵션선택
				</div>
				<div class="col-sm-8">
					<!--상금옵션-->
					<div class="ChampPriceOption">
						<div class="ChampPriceOption_title">상금옵션</div>
						<div class="ChampPriceOption_check">
							<input type="checkbox" id="ChampPriceOption_check"><label
								for="ChampPriceOption_check"></label> <strong>상금 100%
								지급</strong> (상금 수수료 의뢰자 부담)
						</div>
						<div class="ChampPriceOption_content">
							라우드소싱은 표시된 상금의 15%를(우승자 세금 포함) 수수료로 공제한 후 85%가 디자이너에게 지급됩니다.<br>
							위 옵션을 체크하시면 수수료를 고객님이 대신 부담하여 상금의 100%가 디자이너에게 지급됩니다.<br>
							디자이너 참여도를 높일 수 있는 옵션입니다
						</div>
					</div>
					<!--상금옵션-->

					<!--홍보 및 노출 옵션-->
					<div class="optionList">
						<div class="optionList_title">홍보 및 노출 옵션</div>
						<div class="est_option option_upperPose">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="upperPose">
								<label for="upperPose"></label> &nbsp;
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-23.png"><strong>상단노출
									옵션</strong> <span class="est_option_price">(상금 수수료 의뢰자 부담)</span>
							</div>
							<div>
								<div class="est_option_text">고객님의 콘테스트가 리스트 최상위에 위치하게 되어
									다른 콘테스트보다 더욱 많이 노출됩니다.</div>
							</div>
						</div>
						<div class="est_option">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="highlight">
								<label for="highlight"></label> &nbsp;
									<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-103.png">
								<strong>하이라이트</strong> <span class="est_option_price">(+ 50,000 )</span>
							</div>
							<div>
								<div class="est_option_text">콘테스트 목록에서 배경색과 테두리가 하이라이트 되어
									표시됩니다. 보다 많은 디자이너의 눈길을 사로잡을 수 있습니다.</div>
							</div>
						</div>
						<div class="est_option">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="secret"><label
									for="secret"></label> &nbsp;<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-3002.png"> <strong>시크릿
									콘테스트</strong> <span class="est_option_price">(+ 100,000 )</span>
							</div>
							<div>
								<div class="est_option_text">비밀유지계약서(NDA)에 동의한 디자이너 회원만
									콘테스트를 볼 수 있습니다. 구글, 네이버 등의 포털과 포트폴리오에서도 노출되지 않습니다. 다만 보안이 우선시
									되므로 배너, 페이스북, 뉴스레터 등의 홍보는 불가능합니다.</div>
							</div>
						</div>
						<div class="est_option secret_disabled">
							<div class="est_option_title ">
								<input type="checkbox" name="optionBox" id="banner"><label
									for="banner"></label> &nbsp;<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-215.png"> <strong>홍보
									배너 게재*1주 </strong><span class="est_option_price">(+ 100,000 )</span>
							</div>
							<div>
								<div class="est_option_text">콘테스트 리스트 상단에 공모전 홍보 배너를 게재하여
									디자이너 참여도를 크게 높입니다.</div>
							</div>
						</div>
						<div class="est_option secret_disabled">
							<div class="est_option_title ">
								<input type="checkbox" name="optionBox" id="outter"><label
									for="outter"></label> &nbsp;<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-24.png"> <strong>페이스북
									/ 디자인 커뮤니티 홍보</strong> <span class="est_option_price">( 무료 )</span>
							</div>
							<div>
								<div class="est_option_text">라우드소싱에서 외부 디자인 커뮤니티와 페이스북에
									고객님의 콘테스트를 홍보해드립니다.</div>
							</div>
						</div>
						<div class="est_option secret_disabled">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="sendingEmail">
								<label for="sendingEmail"></label> &nbsp;<img
									src="<%=request.getContextPath()%>/resource/img/estimate/ic-26.png"> <strong>이메일 뉴스레터 홍보</strong><span
									class="est_option_price">( 무료 )</span>
							</div>
							<div>
								<div class="est_option_text">매주 수요일마다 디자이너 회원에게 발송되는 뉴스레터에
									고객님의 콘테스트를 홍보해드립니다.</div>
							</div>
						</div>
					</div>
					<!--홍보 및 노출 옵션-->
				</div>
			</div>
		</div>
		<!--추가옵션-->


		<div class="contestTotal">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> Total
				</div>
				<div class="col-sm-8">
					<div class="est_total">
						<div class="contestPriceList">
							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">총 상금</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="1,200,000"
											readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">공모전 등록비</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="100,000"
											readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">상금 수수료</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="" readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">추가 옵션</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="" readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">부가가치세</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="130,000"
											readonly>
									</div>
								</div>
							</div>

							<div class="est_totalprice">
								<div class="row">
									<div class="col-sm-6 est_price_title">
										<br>
									</div>
									<div class=" col-sm-6 est_price_total">
										합계 <input type="text" class="totalReadonly total_price_color"
											value="1,430,000" readonly>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="contestFooter">
			<div class="row">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<button type="button" class="btn btn-primary btn-lg btn-block">
						&lt; 이전</button>
				</div>
				<div class="col-lg-4">
					<button type="button" class="btn btn-secondary btn-lg btn-block">다음
						&gt;</button>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>