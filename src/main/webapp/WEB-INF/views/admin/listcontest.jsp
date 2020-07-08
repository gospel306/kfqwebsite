<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script
	src="<%=request.getContextPath()%>/resource/js/section/goTop.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/custom.css">


<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {
	margin: 0px auto;
}

div {
	
}

img {
	height: auto;
}

#pills-Proceeding img {
	width: auto;
	height: auto;
	vertical-align: middle;
}

#pills-Scoring img {
	width: auto;
	height: auto;
	vertical-align: middle;
}

#pills-Done 
    





        .top_width {
	background-color: #ebeff2;
}

.list_Tap {
	
}

.content_top {
	width: 100%;
	margin: 0px auto;
}

.list_Tap .nav-pills {
	padding-top: 20px;
}

.list_Tap .nav-link {
	padding: 0px;
	text-align: center;
}

.list_Tap .nav-pills .nav-link {
	background-color: #64636d;
	color: white;
	padding: 10px 0px;
	font-size: 18px;
}

.list_Tap .nav-pills .nav-link.active, .list_Tap  .nav-pills .nav-link.active:hover,
	.list_Tap .nav-pills .nav-link.active:focus {
	background-color: white;
	color: #64636d;
	border-top: 2px solid #64636d;
}

.list_Top {
	width: 75%;
	padding-top: 76px;
	margin: 0px auto;
}

.list_maintitle {
	font-size: 18px;
	font-weight: bold;
}

.List_ScoringTap_subTitle {
	display: none;
}

.List_DoneTap_subTitle {
	display: none;
}

.list_content {
	width: 75%;
	margin: 0px auto;
}

.list_Tap_sub {
	width: 100%;
	padding: 20px 0px 0px 20px;
	font-size: 13px;
	font-weight: bold;
}

.list_Title {
	padding: 20px 0px 0px 0px;
}

.padding_zero {
	padding: 1px;
}

.btn {
	font-weight: bold;
}

.dropdown:hover #dropdownKind1 {
	display: block;
}

.dropdown:hover #dropdownKind2 {
	display: block;
}

.dropdown:hover #dropdownKind3 {
	display: block;
}

.dropbox-inline {
	padding: 10px;
	margin-top: 50px;
}

.dropdown-menu {
	background-color: #444;
}

.dropdown-item {
	color: white;
	font-weight: bold;
}

.dropdown-item:hover {
	background-color: black;
	color: white;
}

.text_red {
	color: #FF5D5D;
}

.width75 {
	width: 75%;
}

#btnKind1 {
	width: 100%;
}

.list_tab_content {
	width: 75%;
	margin: 0px auto;
	padding-top: 50px;
}

.list_rank_title {
	text-align: center;
	padding-bottom: 30px;
	border-bottom: 2px solid #CCCCCC;
}

.btn-secondary {
	background-color: white;
	color: #64636d;
	;
}

.contest_rank_text {
	text-overflow: ellipsis;
	border: 0px solid white;
	width: 100%;
}

.contest_rank_text:hover {
	color: #FF5D5D;
}

.contest_rank_tail {
	border: 1px solid #f4f5f6;
	border-radius: 8px;
	background-color: #CCCCCC;
	text-align: center;
}

.rank_list_width {
	width: 80%;
}

.list_rank_content {
	font-size: 12px;
}

.item_box_tail {
	padding-top: 1%;
	padding-bottom: 1%;
}

.item_price {
	
}

.item_period {
	padding: 5px 0px;
}

.item_visitCount {
	
}

.item_price_text {
	width: 100%;
	text-align: center;
	border: 0px;
	background-color: #f4f5f6;
	padding: 5px 10px;
}

.item_period_text {
	width: 100%;
	text-align: center;
	border: 1px solid #cccccc;
	border-radius: 5px;
	padding: 5px 10px;
}

.item_visitCount_text {
	width: 100%;
	text-align: center;
	border: 1px solid #cccccc;
	border-radius: 5px;
	padding: 5px 10px;
}
/*item_box*/
.contest_list_item_roof {
	margin: 5% auto 0 auto;
	width: 75%;
}

.contest_list_item {
	border: 1px solid #cccccc;
	border-radius: 5px;
	padding: 10px;
}

.item_box_category {
	color: #FF5D5D;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.item_box_contestTitle {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.item_box_userId {
	
}

.item_content_roof {
	margin-top: 5%;
}

.item_content_tail_roof {
	margin-top: 5%;
}

.item_box_contestReward {
	text-align: center;
	border: 1px solid #ebeff2;
	border-radius: 5px;
	background-color: #ebeff2;
	padding: 1%;
}

.item_box_contestPeriod {
	text-align: center;
	border: 1px solid #ebeff2;
	border-radius: 5px;
	background-color: #ebeff2;
	padding: 1%;
}

.item_box_joinCount {
	text-align: center;
	border: 1px solid #ebeff2;
	border-radius: 5px;
	background-color: #ebeff2;
	padding: 1%;
}

.box_label {
	padding: 1% 5% 1% 1%;
}

.box_label img {
	
}

/*item_box*/
/*add_item_box*/
.last_item_size {
	width: 90%;
	height: 100%;
	overflow: hidden;
	margin-left: 5%;
}

.contest_list_Doneitem {
	border: 1px solid #cccccc;
	border-radius: 5px;
	padding: 10px;
}

.Done_Categoty_img {
	width: auto;
}

.padding_bottom {
	padding-bottom: 5%;
}

/* carousel*/
.img_index_z {
	position: relative;
	z-index: 0;
}
.text_index_z{
	position: absolute;
	top: 50%;
	left: 50%;
transform: translate( -50%, -50% );
	font-weight:bold;
	font-size:2rem;
	background-color: white
}

@media ( max-width : 768px) {
	.carousel-inner .carousel-item>div {
		display: none;
	}
	.carousel-inner .carousel-item>div:first-child {
		display: block;
	}
}

.carousel-inner .carousel-item.active, .carousel-inner .carousel-item-next,
	.carousel-inner .carousel-item-prev {
	display: flex;
}

/* display 3 */
@media ( min-width : 768px) {
	.carousel-inner .carousel-item-right.active, .carousel-inner .carousel-item-next
		{
		transform: translateX(50.000%);
	}
	.carousel-inner .carousel-item-left.active, .carousel-inner .carousel-item-prev
		{
		transform: translateX(-50.00%);
	}
}

.carousel-inner .carousel-item-right, .carousel-inner .carousel-item-left
	{
	transform: translateX(0);
}

.card {
	border: 0px solid white;
}

/* carousel*/
@media ( max-width :1000px) {
	#pills-Proceeding  .brief_item_img img {
		width: 60px;
		height: 60px;
	}
}

@media ( max-width :640px) {
	#pills-Proceeding  .brief_item_img img {
		width: 40px;
		height: 40px;
	}
}

.contest_list_Doneitem {
	min-width: 770px;
}
</style>
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
	<div class="content_top" id="content_top">
		<div class="top_width">
			<!-- list_Top -->
			<div class="list_Top">

				<div class="list_Title">
					<div class="row">
						<div class="col-lg-3 list_maintitle">콘테스트 보기</div>
						<div class="col-lg-3 list_subtitle">
							
						</div>
						<div class="col-lg-3"></div>
						<div class="col-lg-3"></div>
					</div>
					<!-- list_Tap -->
					<div class="list_Tap">

						<ul class="nav nav-pills" id="pills-tab123">
							<div class="list_Tap_sub">
								<div class="row">
									<div class="col-sm-2 padding_zero">
										<li class="nav-item" role="presentation">
											<a class="nav-link" id="proceeding" href="proceeding">진행중인 콘테스트 </a>
										</li>
									</div>
									<div class="col-sm-2 padding_zero">
										<li class="nav-item" role="presentation">
											<a class="nav-link" id="decision" href="decision"> 심사중인 콘테스트 </a>
										</li>
									</div>
									<div class="col-sm-2 padding_zero">
										<li class="nav-item" role="presentation">
											<a class="nav-link" id="endcontest" href="endcontest"> 종료된 콘테스트 </a>
										</li>
									</div>
									<div class="col-sm-2 padding_zero"></div>
									<div class="col-sm-2 padding_zero"></div>
									<div class="col-sm-2 padding_zero"></div>
								</div>
							</div>
						</ul>

					</div>
					<!-- list_Tap -->
				</div>
			</div>
			<!-- list_Top -->
		</div>
		
		<div class="list_content">
			<div class="dropbox-inline">
				<div class="row">

					<div class="col-lg-4">
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="btnKind1" aria-haspopup="true" aria-expanded="false">
								전체 카테고리보기 (#144)</button>
							<div class="dropdown-menu" aria-labelledby="btnKind1"
								id="dropdownKind1">
								<a class="dropdown-item text_red" href="#">전체 카테고리보기(#144)</a> <a
									class="dropdown-item" href="#">로고 디자인</a> <a
									class="dropdown-item" href="#">패키지 디자인</a> <a
									class="dropdown-item" href="#">제품 디자인</a> <a
									class="dropdown-item" href="#">웹/앱 디자인</a> <a
									class="dropdown-item" href="#">네이밍/아이디어</a> <a
									class="dropdown-item" href="#">캐릭터 디자인</a> <a
									class="dropdown-item" href="#">편집/기타</a>
							</div>
						</div>
					</div>

					<div class="col-lg-3">
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="btnKind2" aria-haspopup="true" aria-expanded="false">
								전체 업종보기(#144)</button>
							<div class="dropdown-menu" aria-labelledby="btnKind2"
								id="dropdownKind2">
								<a class="dropdown-item text_red" href="#">업종 전체</a> <a
									class="dropdown-item" href="#">식당/카페</a> <a
									class="dropdown-item" href="#">식품/건강</a> <a
									class="dropdown-item" href="#">IT/미디어</a> <a
									class="dropdown-item" href="#">뷰티/패션</a> <a
									class="dropdown-item" href="#">병원</a> <a class="dropdown-item"
									href="#">애완동물</a> <a class="dropdown-item" href="#">교육/육아</a> <a
									class="dropdown-item" href="#">재능기부/공공기관</a> <a
									class="dropdown-item" href="#">일반/기타</a>
							</div>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="btnKind3" aria-haspopup="true" aria-expanded="false">
								기본 정렬</button>
							<div class="dropdown-menu" aria-labelledby="btnKind13"
								id="dropdownKind3">
								<a class="dropdown-item text_red" href="#">기본 정렬</a> <a
									class="dropdown-item" href="#">마감임박 순 정렬</a> <a
									class="dropdown-item" href="#">최신등록 순 정렬</a> <a
									class="dropdown-item" href="#">참여자 순 정렬</a> <a
									class="dropdown-item" href="#">총상금 순 정렬</a> <a
									class="dropdown-item" href="#">조회 순 정렬</a>
							</div>
						</div>

					</div>
					<div class="col-lg-3">
						<div class="input-group flex-nowrap mr-3 bd-highlight"
							id="btn_search">

							<input type="text" class="form-control input_Search"
								placeholder="콘테스트 검색" aria-label="Username"
								aria-describedby="addon-wrapping"
								>
							<div class="input-icon">

								<img src="img/bt_magnifying-glass.png" alt="" onclick="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<c:if test="${listtype ne 'endcontest'}">
		<div class="list_tab_content">
			<div class="tab-content" id="pills-tabContent">

				<!-- 진행중 콘테스트-->
				<div class="tab-pane fade show active" id="pills-Proceeding"
					role="tabpanel" aria-labelledby="pills-Proceeding-tab">

					<div class="row ">
						<div class="col-lg-4">
							<div class="list_rank_title">
								<img src="<%=request.getContextPath()%>/resource/img/contest/22_pimg.png" alt=""> 우승 확률이 높은 콘테스트
							</div>
							<!--  content-->
							<div class="list_rank_content">
								<c:forEach items="${wins}" var="win" varStatus="status">
								<div class="list_rank_content_li">
									<div class="row">
										<div class="col-sm-1 ">
											<strong> ${status.count}</strong>
										</div>
										<div class="col-sm-6 padding_zero">
											<input type="text" class="contest_rank_text"
												value="${win.title} " readonly>
										</div>
										<div class="col-sm-4 contest_rank_tail padding_zero">

											<img src="img/people.png" alt="">&nbsp; <strong>${win.people}</strong>명
											|<strong> D</strong>- ${win.day}
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="list_rank_title">
								<img src="img/22_mimg.png" alt=""> 최대 상금 콘테스트
							</div>
							<!--  content-->
							<div class="list_rank_content">
								<c:forEach items="${costs}" var="cost" varStatus="status">
									<div class="list_rank_content_li">
										<div class="row">
											<div class="col-sm-1 ">
												<strong> ${status.count}</strong>
											</div>
											<div class="col-sm-6 padding_zero">
												<input type="text" class="contest_rank_text"
													value="${cost.title}" readonly>
											</div>
											<div class="col-sm-4 contest_rank_tail padding_zero">
												<img src="img/people.png" alt="">&nbsp; <strong>${cost.people}</strong>명
												|<strong> D</strong>- ${cost.day}
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="col-lg-4">
							<div class="list_rank_title">
								<img src="img/22_nimg.png" alt=""> 최신 등록 콘테스트
							</div>
							<!--  content-->
							<div class="list_rank_content">
								<c:forEach items="${lasts}" var="last" varStatus="status">
									<div class="list_rank_content_li">
										<div class="row">
											<div class="col-sm-1 ">
												<strong> ${status.count}</strong>
											</div>
											<div class="col-sm-6 padding_zero">
												<input type="text" class="contest_rank_text"
													value="${last.title}" readonly>
											</div>

											<div class="col-sm-4 contest_rank_tail padding_zero">

												<img src="img/people.png" alt="">&nbsp; <strong>${last.people}</strong>명
												|<strong> D</strong>- ${last.day}
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<!--  content-->

						</div>

					</div>
					<!--carousel-->
					<div class="container text-center my-3">
						<h2 class="font-weight-light"></h2>
						<div class="row mx-auto my-auto">
							<div id="recipeCarousel" class="carousel slide w-100"
								data-ride="carousel">
								<div class="carousel-inner w-100" role="listbox">
									<div class="carousel-item active">
										<div class="col-md-3">	
											<div class="card card-body">
                                                <div class="img_index_z"><img class="img-fluid " src="<%=request.getContextPath()%>/resource/img/contest/20200619052718bn_mhh.png"></div>
                                                <div class= "text_index_z" >텍스트검열 </div>
                                            </div>
											
											
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-md-3">
											<div class="card card-body">
                                                <div class="img_index_z"><img class="img-fluid " src="<%=request.getContextPath()%>/resource/img/contest/20200619052718bn_mhh.png"></div>
                                                <div class= "text_index_z" >텍스트검열 </div>
                                            </div>
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-md-3">
											<div class="card card-body">
                                                <div class="img_index_z"><img class="img-fluid " src="<%=request.getContextPath()%>/resource/img/contest/20200619052718bn_mhh.png"></div>
                                                <div class= "text_index_z" >텍스트검열 </div>
                                            </div>
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-md-3">
											<div class="card card-body">
                                                <div class="img_index_z"><img class="img-fluid " src="<%=request.getContextPath()%>/resource/img/contest/20200619052718bn_mhh.png"></div>
                                                <div class= "text_index_z" >텍스트검열 </div>
                                            </div>
										</div>
									</div>
									<div class="carousel-item">
										<div class="col-md-3">
										<div class="card card-body">
                                                <div class="img_index_z"><img class="img-fluid " src="<%=request.getContextPath()%>/resource/img/contest/20200619052718bn_mhh.png"></div>
                                                <div class= "text_index_z" >텍스트검열 </div>
                                            </div>
										</div>
									</div>
								</div>
								<a class="carousel-control-prev w-auto" href="#recipeCarousel"
									role="button" data-slide="prev"> <span
									class="carousel-control-prev-icon bg-dark border border-dark rounded-circle"
									aria-hidden="true"></span> <span class="sr-only">Previous</span>
								</a> <a class="carousel-control-next w-auto" href="#recipeCarousel"
									role="button" data-slide="next"> <span
									class="carousel-control-next-icon bg-dark border border-dark rounded-circle"
									aria-hidden="true"></span> <span class="sr-only">Next</span>
								</a>
							</div>
						</div>
						<h5 class="mt-2"></h5>
					</div>
					<!--carousel-->
				</div>
			</div>
		</div>
		</c:if>
		<div class="contest_list_item_roof">
			<c:forEach items="${lists}" var="list">
			<div class="contest_list_item">
				<div class="row">
                    <div class="col-lg-3 padding_zero">
                    <c:choose>
                    <c:when test="${listtype ne 'endcontest'}">
                        <img  class="last_item_size" src="<%=request.getContextPath()%>/resource/img/default/${list.imgurl}" alt="">
                    </c:when>
                    <c:otherwise>
                    	<img class="last_item_size" src="<%=request.getContextPath()%>/${list.imgurl}">
                    </c:otherwise>
                    </c:choose>
                    </div>
                    <div class="col-lg-6">
                        <div class="row padding_bottom"> 
                            <div class="col-sm-3">
                                <div class=" item_box_category" id="item_box_3_category">${list.contesttype}</div>
                                <div class="item_box_userId" id="item_box_3_userId">${list.company}</div>
                            </div>
                            <div class="col-sm-7">
                                <div class="item_box_contestTitle">
                                    <span id="item_box_3_contestTitle"></span>
                                </div>
                                <div class='item_box_userName' id='item_box_3_userName'></div>
                                <div class='item_box_optionImage' id='item_box_3_optionImage'></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 item_box_contestContent" id="item_box_3_contestContent"></div>
                        </div>
                    </div>
                    <div class="col-lg-3 item_box_tail">
                        <div class="box_label row justify-content-end">
                            <div class="col-sm-3">
                            	<img src="img/label_premium.png" alt="">
                            </div>  
                            
                            <c:if test="${list.fullprize eq 1}">
                            <div class="col-sm-3">
                                <img src="<%=request.getContextPath()%>/resource/img/contest/label_100.png" alt="">
                            </div>
                           </c:if>
                        </div>
                        <div class="item_box_contestReward item_content_tail_roof" id="item_box_3_contestReward">
                        	1등: ${list.firstprize} 만원
                        <c:if test="${list.secondprize ne 0}">
                        	&ensp;2등: ${list.secondprize} 만원
                        </c:if>
                        <c:if test="${list.thirdprize ne 0}">
                        	&ensp;3등: ${list.thirdprize} 만원
                        </c:if>
                        </div>
                        <div class="item_box_contestPeriod item_content_tail_roof" id="item_box_3_contestPeriod"></div>
                        <div class="item_box_joinCount item_content_tail_roof" id="item_box_3_joinCount"></div>
                    </div>
                </div>
			</div>
			</c:forEach>
		<div id="paginationBox">
			<ul class="pagination">
				<c:if test="${pagination.prev}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
					</li>
				</c:if>
				<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
					<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
						<a class="page-link" href="#" onClick="fn_pagination('${idx}')"> ${idx} </a>
					</li>
				</c:forEach>
				<c:if test="${pagination.next}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a>
					</li>
				</c:if>
			</ul>
		</div>
		</div>
		<div style="margin: 5% 0%;"></div>
	</div>
</body>
<script>
	$(document).ready(function() {
						var categoryName = '브랜딩SET |'
						var contestTitle = '홍성군 평생교육 브랜드 로고 공모전(홍성군평생학습센터)'
						var userId = 'userId'
						var userName = 'userName'
						var contestContent = "* 공모주제 : 홍성군평생학습센터 브랜드 이미지 * 활용범위 : 홈페이지, 현수막, 배너, 안내판, 현판, 수료증 등 * 개발방향 : 평생교육사업 취지와 친근감을 주고 기억하기 쉬우며 학습 참여 동기를 유발할 수 있는 이미지, 온·오프라인 홍보에 응용이 가능하고 사업 현장에 적용할 수 있는 단순하고 간결한 디자인";
						var item_box_contestReward = "contestReward"
						var item_box_contestPeriod = "item_box_contestPeriod"
						var item_box_joinCount = "item_box_joinCount"

						//document.getElementById("brief_item_content_1").value = bci4;
						$('#item_box_category').text(categoryName);
						$('#item_box_contestTitle').text(contestTitle);
						$('#item_box_userId').text(userId);
						$('#item_box_userName').text(userName);
						$('#item_box_contestContent').text(contestContent);
						$('#item_box_contestReward').text(
								item_box_contestReward);
						$('#item_box_contestPeriod').text(
								item_box_contestPeriod);
						$('#item_box_joinCount').text(item_box_joinCount);

						$('#item_box_category_image').append(
								" <img src='img/thumbimg_logo.png'>");
						$('#item_box_optionImage').append(
								"<img src='img/22_mimg.png'>");

						$('#item_box_2_category').text(categoryName);
						$('#item_box_2_contestTitle').text(contestTitle);
						$('#item_box_2_userId').text(userId);
						$('#item_box_2_userName').text(userName);
						$('#item_box_2_contestContent').text(contestContent);
						$('#item_box_2_contestReward').text(
								item_box_contestReward);
						$('#item_box_2_contestPeriod').text(
								item_box_contestPeriod);
						$('#item_box_2_joinCount').text(item_box_joinCount);

						$('#item_box_2_category_image').append(
								" <img src='img/thumbimg_logo.png'>");
						$('#item_box_2_optionImage').append(
								"<img src='img/22_mimg.png'>");

						$('#item_box_3_category').text(categoryName);
						$('#item_box_3_contestTitle').text(contestTitle);
						$('#item_box_3_userId').text(userId);
						$('#item_box_3_userName').text(userName);
						$('#item_box_3_contestContent').text(contestContent);
						$('#item_box_3_contestReward').text(
								item_box_contestReward);
						$('#item_box_3_contestPeriod').text(
								item_box_contestPeriod);
						$('#item_box_3_joinCount').text(item_box_joinCount);

						$('#item_box_3_category_image').append(
								" <img src='img/thumbimg_logo.png'>");
						$('#item_box_3_optionImage').append(
								"<img src='img/22_mimg.png'>");
						var searchOption = document.location.pathname.split("/")[2];
						if(searchOption == "proceeding"){
							$("#proceeding").addClass("active");
						}else if(searchOption == "decision"){
							$("#decision").addClass("active");
						}else{
							$("#endcontest").addClass("active");
						}
						function dropdown_initial() {
							$("#dropdownKind1").attr('style', "display:none;");
							$("#dropdownKind2").attr('style', "display:none;");
							$("#dropdownKind3").attr('style', "display:none;");
						}

						//list tap
						$("#btnkind1").on('click', function() {
							dropdown_initial();
						})

						$("#btnKind1").hover(function() {

							// $("#dropdownKind1").attr('style', "display:block;");
							//$('#dropdownKind1').addClass('show');
							//$('#dropdownKind1').addClass('show');
						})

						//carousel

						$('#recipeCarousel').carousel({
							interval : 2000
						})

						$('.carousel .carousel-item').each(
								function() {
									var minPerSlide = 4;
									var next = $(this).next();
									if (!next.length) {
										next = $(this).siblings(':first');
									}
									next.children(':first-child').clone()
											.appendTo($(this));

									for (var i = 0; i < minPerSlide; i++) {
										next = next.next();
										if (!next.length) {
											next = $(this).siblings(':first');
										}

										next.children(':first-child').clone()
												.appendTo($(this));
									}
								});

						//carousel

					});
</script>
</html>