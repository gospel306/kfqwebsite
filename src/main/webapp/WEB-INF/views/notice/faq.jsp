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
	<script src="<%=request.getContextPath() %>/resource/js/faq.js"></script>
    <script src="<%=request.getContextPath() %>/resource/js/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/notice/faq.css">
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
	<div class="first_layout">

		<!--header-->
		<div class="contest_faq_header">
			<div class="row">

				<div class="col-lg-3"></div>
				<div class="col-lg-6">
					<div class="faq_head_title">
						고객센터 <small>-FAQ</small>
					</div>
				</div>
				<div class="col-lg-3"></div>


			</div>

			<div class="row">

				<div class="col-lg-3"></div>
				<div class="col-lg-6">
					<div class="faq_head_content">아이디어 서비스 이용의 궁금증을 해결해드립니다.</div>
				</div>
				<div class="col-lg-3"></div>


			</div>

		</div>
		<!--header-->


		<!--tap-->
		<div class="contest_faq_content">

			<div class="contest_faq_tap">
				<div class="row contest_faq_tap_size">
					<div class="col-lg-2 faq_tap_1 tap_padding">FAQ</div>
					<div class="col-lg-2 faq_tap_2 tap_padding">문의게시판</div>
					<div class="col-lg-2 faq_tap_2 tap_padding">공지사항</div>
					<div class="col-lg-2 tap_padding"></div>
					<div class="col-lg-2 tap_padding"></div>
					<div class="col-lg-2 tap_padding"></div>
				</div>

			</div>


			<!--tap-->

			<!--contest_faq_searchbox-->
			<div class="contest_faq_searchbox">
				<div class="row">

					<div class="col-lg-4 sandwitch ">
						<div class="faq_searchbox_brief">
							자주하는 질문 검색<br> <small>서비스 이용시 궁금하신 내용을 입력해주세요.</small>
						</div>
					</div>

					<div class=" col-lg-8 sandwitch">
						<div class="faq_searchbox_item">
							<div class="cover" id="cover">
								<form method="get" action="">
									<div class="tb">
										<div class="td">
											<input type="text" class="serch_input"
												placeholder="이곳에 질문을 입력해주세요." required>
										</div>
										<div class="td" id="s-cover">
											<button type="submit">
												<div class="s-circle" id="s-circle"></div>
												<span></span>
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>



				</div>
			</div>


			<!--contest_faq_searchbox-->


			<div class="contest_faq_innerTap">
				<div class="innerTap_item">

					<div class="contest_faq_tap">
						<div class="row contest_faq_tap_size">
							<div
								class="col-lg-2 faq_innerTap_all  faq_innerTap_active tap_btn tap_padding">
								전체</div>
							<div class="col-lg-2 faq_innerTap_doing tap_btn  tap_padding">
								진행 중</div>
							<div class="col-lg-2 faq_innerTap_dip tap_btn  tap_padding">
								심사 중</div>
							<div class="col-lg-2 faq_innerTap_done tap_btn  tap_padding">
								완료</div>
							<div class="col-lg-2 faq_innerTap_etc tap_btn  tap_padding">
								일반</div>
							<div class="col-lg-2 tap_padding"></div>
						</div>

					</div>

				</div>



				<div class="innerTap_all innerTapAll"></div>






				<div class="innerTap_doing innerTapAll">

					<!--accodion-->
					<div class="accordion" id="accordionDoing">

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_doing_1" aria-expanded="false"
										aria-controls="collapseOne">올라온 디자인 시안이 너무 적어요. 어떻게
										해야 하나요?</button>
								</h2>
							</div>

							<div id="innerTap_doing_1" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDoing">
								<div class="card-body">
									<p>
										아직 콘테스트가 진행 중이신가요?<br> 그렇다면 종료 시간까지 차분히 기다려주세요.<br>
										대부분의 디자이너들이 마감시간에 맞춰서 작업을 진행합니다.<br> 70~80% 이상의 시안이 마감
										직전에 등록되고 있습니다!
									</p>

									<p>
										만약 콘테스트가 종료되었는데도 시안 수가 적다면, <br> 보장해드리는 최소 유효시안의 기준이
										존재합니다.
									</p>

									<p>아래 내용을 참고 부탁드립니다.</p>

									<p>
										로고(로고+명함/로고+간판/브랜딩SET)콘테스트: 10개<br> 로고 이외 모든 콘테스트: 5개
									</p>

									<p>
										최소 유효시안 갯수 이하일 경우에는 고객센터 aaaa-bbbb로 연락 부탁드립니다.<br> 추가 시안을
										더 받아 보실 수 있도록 콘테스트 연장을 무료로 진행해드리고 있습니다 :-)
									</p>
								</div>
							</div>
						</div>
						<!---->

						<!---->
						<div class="card">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_doing_2" aria-expanded="false"
										aria-controls="collapseTwo">참여 할 수 있는 시안 수 또는 팀(그룹)
										참여가 제한 되어 있나요?</button>
								</h2>
							</div>
							<div id="innerTap_doing_2" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordionDoing">
								<div class="card-body">
									<p>
										1. 다른 컨셉의 디자인 작품으로 하나의 콘테스트에는 최대 3개까지만 작품 등록이 가능합니다.<br>
										동일한 컨셉의 작품 이미지를 여러번 등록하시면 각 각의 작품으로 보기에는 다소 무리가 있을 수 있습니다.<br>
										브리핑 내용과 무관한 작품의 경우는 바로 삭제 처리될 수 있으니 참고 부탁드립니다.
									</p>

									<p>
										2. 아이디어소싱에서는 본인 휴대폰 인증후, 회원가입이 가능합니다.<br> 법인, 기관, 단체 그룹의
										경우 대표로 한 분의 휴대폰 번호 인증으로 회원 가입하실 수 있습니다.<br> 팀 또는 그룹 단위로
										참여를 원하시는 경우, 대표로 한 분의 ID로만 등록하실 수 있습니다.<br> (참여하신 팀내 상금
										분배 지급 등은 아이디어소싱에서는 책임지지 않으니 참고 부탁드리겠습니다.)<br>
								</div>
							</div>
						</div>
						<!---->

						<!---->
						<div class="card">
							<div class="card-header" id="headingThree">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_doing_3" aria-expanded="false"
										aria-controls="collapseThree">브리핑 내용은 무엇을 적어야 하나요?</button>
								</h2>
							</div>
							<div id="innerTap_doing_3" class="collapse"
								aria-labelledby="headingThree" data-parent="#accordionDoing">
								<div class="card-body">
									<p>디자인 브리핑 상세 내용은 디자이너가 작업하는데 가장 많은 영향을 줍니다.</p>

									<p>원하시는 디자인 스타일이 확실하다면 브리핑을 최대한 상세하게 적어주시고,</p>

									<p>디자이너의 스타일대로 작업을 맡기신다면 대략적인 큰 가이드라인만 제시해 주시면 됩니다.</p>

									<p>아래는 브리핑에 기재하면 디자이너들에게 도움이 될 만한 내용들이기 때문에 아래 항목들 중 선택적으로
										작성해주시면 됩니다.</p>

									<p></p>

									<p></p>

									<p>1. 사업에 대한 소개</p>

									<p>사업 서비스/상품 설명 및 특징, 브랜드 스토리, 타겟 고객, 디자인에 담고 싶은 회사명 의미 등.</p>

									<p></p>

									<p>2. 디자인 요구사항</p>

									<p>선호하거나 지양하는 스타일, 컨셉, 참고 할 수 있는 타브랜드의 선호 디자인 등.</p>

									<p></p>

									<p>3. 디자인 분야별 필수 기재사항</p>

									<p>- 패키지/라벨</p>

									<p>도면(칼선) 또는 정확한 사이즈, 디자인에 필수로 포함 되어야 하는 내용이나 문구, 삽입 될 로고
										파일 등.</p>

									<p>- 제품</p>

									<p>제품에 대한 정확하고 세부적인 설명이나 관련된 파일, 참고 도면, 유사 제품 사진 등.</p>

									<p>- 포스터/브로셔/리플렛</p>

									<p>제작 인쇄물의 규격, 장수, 양면·단면 구분, 삽입 될 내용 및 사진 등.</p>

									<p>- 웹/어플</p>

									<p>작업 페이지 수, 각 페이지 기획안, 삽입 될 삽입 될 내용 및 사진 등.</p>

									<p></p>
								</div>
							</div>
						</div>
						<!---->


						<!---->
						<div class="card">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_doing_4" aria-expanded="false"
										aria-controls="collapseTwo">브리핑 안에 첨부 파일 업로드가 되지
										않습니다.</button>
								</h2>
							</div>
							<div id="innerTap_doing_4" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordionDoing">
								<div class="card-body">
									<p>브리핑에 첨부 파일이 업로드 되지 않는 경우는 아래와 같으며,</p>

									<p>단일 파일보다는 .zip 파일로 압축하여 올려주시면 더 좋습니다.</p>

									<p>1. 총 파일 용량이 50MB 이상</p>

									<p>2. 파일명의 특수 기호 첨부 (파일명은 영문명 권장)</p>

									<p>3. 확장자의 오류</p>

									<p></p>

									<p>파일 용량이 50MB가 넘을 경우 라우드소싱 고객센터 이메일 help@loud.kr 로 보내주시면</p>

									<p>디자이너들이 다운 받을 수 있도록 파일 다운로드 주소를 브리핑 내용에 추가해 드리고 있습니다.</p>

									<p></p>
								</div>
							</div>
						</div>
						<!---->


						<!---->
						<div class="card">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_doing_4" aria-expanded="false"
										aria-controls="collapseTwo">공모전을 일주일 이상 진행이 가능한가요?</button>
								</h2>
							</div>
							<div id="innerTap_doing_4" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordionDoing">
								<div class="card-body">
									<p>가능합니다. 일반형 이상의 공모전 브리핑을 작성할 때 상금 설정 페이지에서 기간 연장 옵션을
										선택하시면 됩니다. 기간 연장 옵션 비용은 1주에 100,000원(VAT 별도)입니다.</p>

									<p>유효한 시안이 최소 시안 갯수 이상으로 등록되었지만 기간 연장을 원하실 경우, 디자이너님들의 추가
										참여 독려를 위하여 상금을 20만원 이상 상향후 진행이 가능하니 이용 약관을 참고해 주시기 바랍니다.(해당
										금액은 단순 옵션 비용이 아닌 상금으로 사용됩니다.)</p>

									<p>* 콘테스트 마감시, 최소 시안 갯수 미만으로 마감되었다면 상금은 상향하지 않고 1주일 기간 연장으로
										시안을 더 받아보실 수 있도록 최대한 도움드리고 있습니다.</p>

									<p>
										- 로고(로고+명함/로고+간판/브랜딩SET)콘테스트: 10개<br> - 로고 이외 모든 콘테스트: 5개
									</p>

									<p>성공적인 콘테스트 진행을 위해서 최선을 다하겠습니다. 감사합니다 :-)</p>
								</div>
							</div>
						</div>
						<!---->
					</div>
					<!--accodion-->


				</div>
				<div class="innerTap_dip innerTapAll">
					<!--accodion-->
					<div class="accordion" id="accordionDip">

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_dip_1" aria-expanded="false"
										aria-controls="collapseOne">심사기간이 지났는데 왜 아직 발표가 안되고
										있나요?</button>
								</h2>
							</div>

							<div id="innerTap_dip_1" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDip">
								<div class="card-body">
									<p>의뢰자는 콘테스트 진행 마감이 된 시점으로부터 7일 동안 검토(심사) 기간을 가지게 됩니다.</p>

									<p>이 기간 동안 의뢰자는 디자인을 점검하고 우승 작품을 선정하게 됩니다.</p>

									<p>훌륭한 디자인이 많이 올라올수록 의뢰자는 우승작 선정에 심사숙고 중이거나 1차 통과자와 수정 내용
										조율 등의 이유로 심사가 지체될 수도 있습니다. 또는 기업, 기관에서 의뢰를 할 경우 심사에 대한 의사결정이
										개인에 주어진 것이 아닌 많은 결재라인을 통하여 결정이 되는 부분에 있어, 몇몇 콘테스트는 이러한 각 업체의
										사정에 의하여 심사가 지연되는 경우가 두루 발생되고 있습니다!</p>

									<p></p>

									<p>이렇듯 심사가 지연되는 경우 저희 라우드 팀에서 별도 매니저님이 배분되어 해당 내용을 조율 및 연락을
										드려 심사를 진행할 수 있도록 안내를 드립니다. 심사가 지연되는 모든 콘테스트는 담당 매니저님들이 배분되어 내용
										조율 중에 있으니 조금만 더 기다려주세요. :)</p>

									<p></p>

									<p>또한 사전 공지 또는 발표 없이 14일 후에도 우승 작품을 선정하지 않는 경우에는 해당 콘테스트는
										강제종료가 되어, 최초 결제된 상금은 1/N로 배분처리가 되어, 의뢰자는 추후에 콘테스트에 등록된 그 어떤
										디자인 시안 및 아이디어도 사용할 수 없습니다.</p>

									<p></p>
								</div>
							</div>
						</div>
						<!---->

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_dip_2" aria-expanded="false"
										aria-controls="collapseOne">디자이너들이 1:1 코멘트에 답변이 없습니다.
									</button>
								</h2>
							</div>

							<div id="innerTap_dip_2" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDip">
								<div class="card-body">
									<p>1:1 코멘트를 등록하게 되면 디자이너들이 라우드소싱 사이트 로그인 했을 때 팝업으로 나옵니다.</p>

									<p>코멘트 등록 후 며칠 동안 디자이너가 회신이 없을 경우</p>

									<p>라우드소싱 고객센터로 문의 주시면 디자이너에게 유선 연락이나 문자 등을 발송하여 안내를 드리고
										있습니다.</p>

									<p></p>

									<p>디자이너가 디자인 작업을 진행할때에는 사이트에 오랜 기간 동안 접속을 안할 수도 있으니 이 점
										참고해주세요!</p>
								</div>
							</div>
						</div>
						<!---->
						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_dip_3" aria-expanded="false"
										aria-controls="collapseOne">네이밍 콘테스트는 환불이 안 되나요? 우승작
										추가 선정도 가능한가요?</button>
								</h2>
							</div>

							<div id="innerTap_dip_3" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDip">
								<div class="card-body">
									<p>
										네이밍 콘테스트는 디자인 콘테스트와 달리 고급형, 프리미엄형도 환불이 불가능합니다.<br> 이는
										아이디어만 받아보고 환불을 진행하는 것을 방지하여 참여자의 아이디어를 보호하기 위함입니다.
									</p>

									<p>
										(여러 아이디어를 보았으나 의뢰업체의 방향성이 맞지 않아 선정을 포기하게 된다면, 의뢰자는 등록된
										네이밍/아이디어를 무단으로 사용할 수 없으며, 최초의 결제된 상금은 참여자에게 1/N로 배분 처리됩니다.)<br>
										<br> 만약 마음에 드는 네이밍/아이디어가 2개 이상이라면 우승작 추가 선정도 가능합니다.
									</p>

									<p>최초 의뢰자님도 생각하지 못했던 참신한 아이디어가 있다면 2등을 추가로 선정해 아이디어를 사용하는
										경우도 두루 있으니 참고 부탁드립니다 :-)</p>
								</div>
							</div>
						</div>
						<!---->


						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_dip_4" aria-expanded="false"
										aria-controls="collapseOne">디자이너와 유선 통화가 가능한가요?</button>
								</h2>
							</div>

							<div id="innerTap_dip_4" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDip">
								<div class="card-body">
									<p>디자이너와 직접 통화는 어렵습니다.</p>

									<p>라우드소싱은 온라인 기반 제공 서비스로 의뢰자와 디자이너간의 소통은 메시지, 콘테스트 문의사항,
										1:1 코멘트 이렇게 3가지 방식을 통해서 가능합니다.</p>

									<p>반드시 직접 통화를 진행 해야 하는 경우에는 작품 내에 1:1 코멘트 창을 통해 연락처 기재해
										주시면서 디자이너분에게 통화 진행 의사를 확인해 주셔야 합니다.</p>

									<p>다만 서로간의 연락처를 공유 해야 하는 의무는 없으며, 디자이너와의 소통 문제로 라우드소싱 운영진의
										도움이 필요하시면 고객센터로 연락 바랍니다.</p>

									<p></p>
								</div>
							</div>
						</div>
						<!---->

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_dip_5" aria-expanded="false"
										aria-controls="collapseOne">디자이너들이 등록한 시안은 어떻게 확인 할 수
										있나요?</button>
								</h2>
							</div>

							<div id="innerTap_dip_5" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDip">
								<div class="card-body">
									<p>개최하신 공모전 페이지에 접속하시면 공모전이 진행되는 기간 동안</p>

									<p>디자이너들이 등록한 시안을 실시간으로 확인 가능합니다.</p>

									<p>그리고 공모전이 종료된 후에는 모든 작품을 한 눈에 보실 수 있습니다.</p>

									<p>개최하신 공모전 페이지에 접속하는 방법은</p>

									<p>로그인 후 마이페이지 -> 콘테스트에서 등록하신 공모전을 클릭하시면 바로 확인 됩니다.</p>
									<p></p>
								</div>
							</div>
						</div>
						<!---->

					</div>
					<!--accodion-->



				</div>
				<div class="innerTap_done innerTapAll">
					<!--accodion-->
					<div class="accordion" id="accordionDone">

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_done_1" aria-expanded="false"
										aria-controls="collapseOne">참여 보상은 무엇인가요?</button>
								</h2>
							</div>

							<div id="innerTap_done_1" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDone">
								<div class="card-body">
									<p>총 상금의 10%를 우승자를 제외한 1차 통과자들에게 1/n로 지급하는 보상제도 입니다.</p>

									<p>이는 우승하지 못했더라도 1차 통과까지 수고해주신 디자이너님들께도 보상시스템이 존재해야 한다는 여러
										디자이너님들의 여론에 의한 설문을 통해 수렴한 결과입니다.</p>

									<p>단, 아래와 같이 상금 패키지등급 기준으로 참여 보상의 지급 유무가 발생됩니다.</p>

									<p>- 일반형, 고급형, 프리미엄 콘테스트만 참여보상 지급</p>

									<p>- 상금 패키지등급 기준은 디자인 종류 카테고리 별로 상이함으로 개별 확인 요망</p>

									<p>
										[추가사항] <br> * 우승작품을 제외한 1차 통과작품이 0개인 경우, 참여보상비는 참여자들 중
										일부(랜덤)에게 1만원씩 지급됩니다.<br> 참여자수가 참여보상 지급대상자보다 적을 경우, 참여자
										수만큼만 1만원씩 지급됩니다.<br>
									</p>
								</div>
							</div>
						</div>
						<!---->


						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_done_2" aria-expanded="false"
										aria-controls="collapseOne">환불절차는 어떻게 되나요?</button>
								</h2>
							</div>

							<div id="innerTap_done_2" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDone">
								<div class="card-body">
									<p>
										고급형, 프리미엄형 콘테스트를 진행 중인 의뢰자님들 중에 마음에 드시는 작품이 없어서 50% 환불을 원하실
										경우,<br> 월요일~금요일 10:00~18:00 영업시간 내에 유선전화, 채팅상담 또는<br>
										라우드소싱 사이트>고객센터>문의 게시판을 통해 해당 내용을 접수해 주시면 신속하게 처리해 드리겠습니다.
									</p>

									<p>
										단, 환불이 가능한 경우는 아래 환불 정책에 따라 제한적으로 적용되오니,<br> 상세 정책을 꼼꼼히
										확인해주세요.
									</p>

									<p>
										[환불 정책]<br> 1) 환불 과정은 콘테스트 등록 중의 결제 방법과 동일하게 이루어집니다.<br>
										2) 콘테스트가 종료된 후 참여자가 0명인 경우, 결제한 모든 금액을 환불 받을 수 있습니다.<br>
										3) 참여자가 1명 이상인 경우 저가형, 일반형 패키지는 환불이 불가능합니다.<br> 4) 고급형,
										프리미엄 패키지의 경우 상금의 50% 환불이 가능하지만, 네이밍 공모전과 저가형, 일반형 패키지의 경우 환불이
										불가능합니다.<br> 단, 의뢰사의 부득이한 사정으로 심사가 지연되어 2회 이상 연장될 경우, 기존
										환불 정책과 관계없이 ‘환불 불가 콘테스트’로 변경됩니다.<br> 5) 1차통과작이나 우승작을 이미
										선정한 경우 역시 환불이 불가능합니다.<br> 6) 환불이 불가능한 콘테스트는 우승작을 선정하지 않는
										경우 수수료를 제외한 상금이 참여자에게 1/n 로 배분됩니다.
									</p>

									<p>
										- 공모전 진행 도중에 취소는 안됩니다.(1차통과작 선정 후 번복/연장/환불 절대 불가)<br> -
										네이밍 콘테스트의 경우 상금 환불이 절대 불가합니다.<br> - 골드 패키지 이상의 공모전(*네이밍
										제외)은 등록비를 제외한 상금의 50%가 환불 가능하며, 나머지 50%에 해당하는 금액은 참여한 모든
										디자이너들에게 1/N로 균등하게 지급됩니다.<br> - 참여 수 부족으로 인한 환불<br>
										콘테스트가 종료된 후 참여자가 0명인 경우, 등록비를 제외한 상금 전액을 환불 받을 수 있습니다.<br>
									</p>
									</p>
								</div>
							</div>
						</div>
						<!---->

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_done_3" aria-expanded="false"
										aria-controls="collapseOne">디자이너에게 상금은 자동으로 지급되나요?</button>
								</h2>
							</div>

							<div id="innerTap_done_3" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionDone">
								<div class="card-body">
									<p>아닙니다. 의뢰자 분께서 상금 지급 요청을 해주셔야 지급됩니다.</p>

									<p>
										공모전이 종료되고 우승작 전송 페이지에서 저작권 양도 후 파일을 다운로드 받았다면,<br> 공모전
										종료를 알릴 수 있는 대화창 내 '수령 확인 및 상금전달승인' 을 클릭해 주셨을 때 상금이 지급됩니다.
									</p>
									</p>
								</div>
							</div>
						</div>
						<!---->

					</div>
					<!--accodion-->

				</div>
				<div class="innerTap_etc innerTapAll">
					<!--accodion-->
					<div class="accordion" id="accordionEtc">

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_etc_1" aria-expanded="false"
										aria-controls="collapseOne">세금계산서 발행을 하고 싶습니다.</button>
								</h2>
							</div>

							<div id="innerTap_etc_1" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionEtc">
								<div class="card-body">
									<p>세금계산서 발행을 하고 싶습니다.</p>

									<p>
										무통장, 계좌이체로 결제하셨다면 세금계산서 발행이 가능합니다. <br> 최종 결제 단계 전에 세금계산서
										신청란이 있습니다. 해당 페이지를 통해 작성해주시면 담당자가 확인 후 2-3일 이내로 발급해 드리고 있습니다.
									</p>

									<p>
										혹시 세금계산서 신청란에 입력을 못하셨다면,<br> 이메일 bill@loud.kr 또는 FAX
										02-2019-8949 으로 사업자 등록증과 전자세금계산서 발급 받으실 이메일 주소를 함께 기재하신 후
										보내주시면 발급 가능합니다.
									</p>

									<p>※ 세금계산서는 결제일 기준 익월 10일까지만 발급 요청 가능합니다</p>
								</div>
							</div>
						</div>
						<!---->
						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_etc_2" aria-expanded="false"
										aria-controls="collapseOne">디자인 공모전 말고 디자이너 1명에게 작업
										의뢰를 하고 싶습니다.</button>
								</h2>
							</div>

							<div id="innerTap_etc_2" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionEtc">
								<div class="card-body">
									<p>
										한명의 디자이너에게 의뢰하실 수 있습니다.<br> 원하는 디자이너의 프로필 페이지에 가면 1:1 의뢰
										문의하기 버튼이 보이실 거에요.<br> 어떤 프로젝트를 의뢰하고 싶은지 설명하면 둘만의 채팅창이
										생성됩니다.<br> 채팅창 상에서 견적서 발송과 결제, 원본파일 수령 등 모든 프로세스가 진행됩니다!
									</p>
								</div>
							</div>
						</div>
						<!---->
						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_etc_3" aria-expanded="false"
										aria-controls="collapseOne">공모전 제목 옆 업체 이미지 등록은 어떻게
										하나요?</button>
								</h2>
							</div>

							<div id="innerTap_etc_3" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionEtc">
								<div class="card-body">
									<p>업체 이미지 등록의 경우 마이페이지 안에 들어가시면 회원정보 변경 메뉴를 통해 등록하실 수 있습니다.</p>

									<p>회원정보 변경 내에 포함되어 있는 프로필 사진은 공모전 제목 옆 이미지뿐만 아니라 모든 게시글에
										아이디와 함께 반영됩니다.</p>

									<p>업체 이미지는 공모전 개최 후에도 언제든 신규 및 재등록 가능하오니 이점 혼동 없으시길 바랍니다.</p>

									<p>이미지 파일 크기는 132x132 px가 가장 적합하게 적용됩니다.</p>
								</div>
							</div>
						</div>
						<!---->

						<!---->
						<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link btn-block text-left collapsed"
										type="button" data-toggle="collapse"
										data-target="#innerTap_etc_4" aria-expanded="false"
										aria-controls="collapseOne">어플리케이션에 사용하는 이미지는 불법적으로
										다운받아도 상관없나요?</button>
								</h2>
							</div>

							<div id="innerTap_etc_4" class="collapse"
								aria-labelledby="headingOne" data-parent="#accordionEtc">
								<div class="card-body">
									<p>어플리케이션 즉 시뮬레이션에 사용하는 이미지는 반드시 무료라고 명시되어 있거나 출처가 분명해야합니다.</p>

									<p>
										불법적으로 다운 받은 유료 어플리케이션을 사용할 경우, <br> 발생하는 불이익은 디자이너 본인에게
										발생하며라우드소싱 측에서는 일체 책임을 지지 않습니다.<br>
									</p>
								</div>
							</div>
						</div>
						<!---->
					</div>
					<!--accodion-->
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>