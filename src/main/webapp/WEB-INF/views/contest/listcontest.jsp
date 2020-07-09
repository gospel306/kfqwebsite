<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script src="<%=request.getContextPath()%>/resource/js/section/pagination.js"></script>
<script src="<%=request.getContextPath()%>/resource/js/contest/listcontest.js"></script>
<script src="<%=request.getContextPath()%>/resource/js/section/goTop.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/listcontest.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/custom.css">


<meta name="viewport" content="width=device-width, initial-scale=1">

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
							<div class="List_ProceedingTap_subTitle">
								<small>- 진행중인 콘테스트</small>
							</div>


							<div class="List_ScoringTap_subTitle">
								<small>- 심사중인 콘테스트</small>
							</div>

							<div class="List_DoneTap_subTitle">
								<small>- 종료된 콘테스트</small>
							</div>
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
											<a class="nav-link" id="proceeding" href="<%=request.getContextPath()%>/contestlist/proceeding">진행중인 콘테스트 </a>
										</li>
									</div>
									<div class="col-sm-2 padding_zero">
										<li class="nav-item" role="presentation">
											<a class="nav-link" id="decision" href="<%=request.getContextPath()%>/contestlist/decision"> 심사중인 콘테스트 </a>
										</li>
									</div>
									<div class="col-sm-2 padding_zero">
										<li class="nav-item" role="presentation">
											<a class="nav-link" id="endcontest" href="<%=request.getContextPath()%>/contestlist/endcontest"> 종료된 콘테스트 </a>
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
								onkeydown="if (event.keyCode == 13) ">
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
								<div class="list_rank_content_li" onclick="location.href='<%=request.getContextPath()%>/contest/${win.id}'">
									<div class="row">
										<div class="col-sm-1 ">
											<strong> ${status.count}</strong>
										</div>
										<div class="col-sm-6 padding_zero">
											<input type="text" class="contest_rank_text"
												value="${win.title} " readonly>
										</div>
										<div class="col-sm-4 contest_rank_tail padding_zero">

											<img src="<%=request.getContextPath()%>/resource/img/contest/people.png" alt="">&nbsp; <strong>${win.people}</strong>명
											|<strong> D</strong>- ${win.day}
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="list_rank_title">
								<img src="<%=request.getContextPath()%>/resource/img/contest/22_mimg.png" alt=""> 최대 상금 콘테스트
							</div>
							<!--  content-->
							<div class="list_rank_content">
								<c:forEach items="${costs}" var="cost" varStatus="status">
									<div class="list_rank_content_li" onclick="location.href='<%=request.getContextPath()%>/contest/${cost.id}'">
										<div class="row">
											<div class="col-sm-1 ">
												<strong> ${status.count}</strong>
											</div>
											<div class="col-sm-6 padding_zero">
												<input type="text" class="contest_rank_text"
													value="${cost.title}" readonly>
											</div>
											<div class="col-sm-4 contest_rank_tail padding_zero">
												<img src="<%=request.getContextPath()%>/resource/img/contest/people.png" alt="">&nbsp; <strong>${cost.people}</strong>명
												|<strong> D</strong>- ${cost.day}
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="col-lg-4">
							<div class="list_rank_title">
								<img src="<%=request.getContextPath()%>/resource/img/contest/22_nimg.png" alt=""> 최신 등록 콘테스트
							</div>
							<!--  content-->
							<div class="list_rank_content">
								<c:forEach items="${lasts}" var="last" varStatus="status">
									<div class="list_rank_content_li" onclick="location.href='<%=request.getContextPath()%>/contest/${last.id}'">
										<div class="row">
											<div class="col-sm-1 ">
												<strong> ${status.count}</strong>
											</div>
											<div class="col-sm-6 padding_zero">
												<input type="text" class="contest_rank_text"
													value="${last.title}" readonly>
											</div>

											<div class="col-sm-4 contest_rank_tail padding_zero">

												<img src="<%=request.getContextPath()%>/resource/img/contest/people.png" alt="">&nbsp; <strong>${last.people}</strong>명
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
								<c:forEach items="${benners}" var="benner">
									<div class="carousel-item">
										<div class="col-md-3">	
											<div class="card card-body" onclick="location.href='<%=request.getContextPath()%>/contest/${benner.id}'">
                                                <div class="img_index_z"><img class="img-fluid " src="<%=request.getContextPath()%>/${benner.imgurl}"></div>
                                                <div class= "text_index_z" >${benner.title} </div>
                                            </div>
										</div>
									</div>
								</c:forEach>
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
			<div id="contestitem" class="contest_list_item" onclick="location.href='<%=request.getContextPath()%>/contest/${list.id}'">
				<div id="highlight" class="highLight_check"style="display:none">${list.highlight}</div>
				<div class="row">
                    <div class="col-lg-3 padding_zero">
                    	<img class="last_item_size" src="<%=request.getContextPath()%>/${list.imgurl}">
                    </div>
                    <div class="col-lg-6">
                        <div class="row padding_bottom"> 
                            <div class="col-sm-3">
                                <div class=" item_box_category" id="item_box_3_category">${list.contesttype}</div>
                                <div class="item_box_userId" id="item_box_3_userId">${list.company}</div>
                            </div>
                            <div class="col-sm-7">
                                <div class="item_box_contestTitle">
                                    <span id="item_box_3_contestTitle">${list.title}</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 item_box_contestContent" id="item_box_3_contestContent">${list.serviceinfo }</div>
                        </div>
                    </div>
                    <div class="col-lg-3 item_box_tail">
                        <div class="box_label row justify-content-end">
                        	<c:if test="${list.paytype eq 'primecheck' }">
                            <div class="col-sm-3">
                            	<img src="<%=request.getContextPath()%>/resource/img/contest/label_premium.png" alt="">
                            </div>  
                            </c:if>
                            <c:if test="${list.fullprize eq 1}">
                            <div class="col-sm-3">
                                <img src="<%=request.getContextPath()%>/resource/img/contest/label_100.png" alt="">
                            </div>
                           </c:if>
                        </div>
                        <div class="item_box_contestReward item_content_tail_roof" id="item_box_3_contestReward">
                        	1등: ${list.firstprize} 만원
                        <c:if test="${list.secondprize ne 0}">
                        	/2등: ${list.secondprize} 만원
                        </c:if>
                        <c:if test="${list.thirdprize ne 0}">
                        	/3등: ${list.thirdprize} 만원
                        </c:if>
                        </div>
                        <div class="item_box_contestPeriod item_content_tail_roof" id="item_box_3_contestPeriod">
                        <c:choose>
                    	<c:when test="${listtype ne 'endcontest'}">
                    		남은 기간: 
                    		<c:choose>
                    			<c:when test="${listtype eq 'proceeding'}">
                    				${list.day}일
                    			</c:when>
                    			<c:otherwise>
                    				심사중
                    			</c:otherwise>
                    		</c:choose>
                    		(~${list.enddate})
                    	</c:when>
                    	<c:otherwise>
                    		진행기간: ${list.day}일
                    	</c:otherwise>
                    	</c:choose>
                        </div>
                        <div class="item_box_joinCount item_content_tail_roof" id="item_box_3_joinCount">
                        <c:choose>
                        	<c:when test="${listtype eq 'proceeding'}">
                        		조회수: ${list.views }
                        	</c:when>
                        	<c:otherwise>
                        		참여자: ${list.people }
                        	</c:otherwise>
                        </c:choose>
                        	
                        </div>
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
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>