<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

	<!-- icon css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   	
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/category.css">
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
	<div>
		<div class="container mt-5">
			<h2>디자인 콘테스트를 개최합니다.</h2>
			<div class="header">
				 <div class="row">
				    <div class="col" style="color:red;">
				    	1. 카테고리 선택
				    	<hr class="hr1" style="background-color:red;">
				    </div>
				    <div class="col">
				    	2. 브리핑 작성
				    	<hr class="hr1">
				    	</div>
				    <div class="col">
				    	3. 상금&옵션 선택
				    	<hr class="hr1">
				    </div>
				    <div class="col">
				    	4. 결제 및 등록완료
				    	<hr class="hr1">	
				    </div>
				 </div>
			</div>
			 
			 <div class="my-5" style="background-color:#EAEAEA; width:100%;">
				<div class="inner">
					<div class="row">
					    <div class="col-sm-5">
					    	<img src="<%=request.getContextPath()%>/resource/img/contest/guide.png" alt="...">
					    	<div class="title">
								<span class="text_type">LOGO / BI</span><br>
								<span class="text_add">콘테스트 등록비 10만원, 부가세 별도</span>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<button type="button" onclick="location.href='launch/logo'" class="subtype rounded w-100">
					    		> 로고 디자인 <span class="sub1">(로고만 제공)</span>
					    		<span class="startprice">상금 30만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/logo&bizcard'" class="subtype rounded w-100">
					    		> 로고 + 명함 | <span class="sub2">10만원 차감 효과</span>
					    		<span class="startprice" id="p1">상금 40만원 ~</span>
					    		<div class="detail">
						    		<p class="sub3">창업 필수품! 로고와 명함 디자인을 한번에 받아보세요.</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 로고 디자인</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 명함 디자인</p>
					    		</div>
					    	</button>
					    	<button type="button" onclick="location.href='launch/logo&sign'" class="subtype rounded w-100">
					    		> 로고 + 간판 | <span class="sub2">10만원 차감 효과</span>
					    		<span class="startprice" id="p2">상금 40만원 ~</span>
					    		<div class="detail">
						    		<p class="sub3">개업 필수품! 로고와 간판 디자인을 한번에 받아보세요.</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 로고 디자인</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 간판 디자인</p>
					    		</div>
					    	</button>
					    	<button type="button" onclick="location.href='launch/branding'" class="subtype rounded w-100">
					    		> 브랜딩 SET | <span class="sub2">30만원 차감 효과</span>
					    		<span class="startprice" id="p3">상금 100만원 ~</span>
					    		<div class="detail">
						    		<p class="sub3">브랜딩에 필요한 4가지 항목을 한번에 받아보세요.</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 로고 디자인</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 명함 디자인</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 간판 디자인</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 서식류 디자인</p>
					    		</div>
					    	</button>
					    </div>
					</div>
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<img src="<%=request.getContextPath()%>/resource/img/contest/idea.png" alt="...">
					    	<div class="title">
								<span class="text_type">NAMING /<br>&nbsp;IDEA</span><br>
								<span class="text_add">콘테스트 등록비 10만원, 부가세 별도</span>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<button type="button" onclick="location.href='launch/idea'" class="subtype rounded w-100">
					    		> 네이밍 / 아이디어 
					    		<span class="startprice">상금 30만원 ~</span>
					    		<div class="detail">
						    		<p class="sub3">디자인은 제공되지 않고, 다양한 아이디어가 제공됩니다.</p>
						    		<p class="sub4" style="color:red;"><img src="imag\check.png" alt="..." class="check"> 평균 참여자 100명 이상!</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 추후 디자인 콘테스트 개최시 <span style="color:red;">10만원 할인</span></p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 브랜드, 제품 네이밍 아이디어</p>
						    		<p class="sub4"><img src="<%=request.getContextPath()%>/resource/img/contest/check.png" alt="..." class="check"> 회사 슬로건 / 광고카피 아이디어</p>
					    		</div>
					    	</button>
					    </div>
					</div>
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<img src="<%=request.getContextPath()%>/resource/img/contest/box.png" alt="...">
					    	<div class="title">
								<span class="text_type">PRODUCT /<br>&nbsp;PACKAGE</span><br>
								<span class="text_add">콘테스트 등록비 10만원, 부가세 별도</span>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<button type="button" onclick="location.href='launch/designpackage'" class="subtype rounded w-100">
					    		> 패키지 디자인 <span class="sub1">(상품 박스, 외부 포장 등)</span>
					    		<span class="startprice">상금 50만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/labeldesign'" class="subtype rounded w-100">
					    		> 라벨 디자인 <span class="sub1">(라벨 / 스티커 등)</span>
					    		<span class="startprice" id="p4">상금 30만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/productdesign'" class="subtype rounded w-100">
					    		> 제품 디자인 <span class="sub1">(제품 3D 렌더링 등)</span>
					    		<span class="startprice" id="p5">상금 100만원 ~</span>
					    	</button>
					    </div>
					</div>
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<img src="<%=request.getContextPath()%>/resource/img/contest/print.png" alt="...">
					    	<div class="title">
								<span class="text_type">PRINT</span><br>
								<span class="text_add">콘테스트 등록비 10만원, 부가세 별도</span>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<button type="button" onclick="location.href='launch/poster'" class="subtype rounded w-100">
					    		> 포스터 / 전단지
					    		<span class="startprice">상금 30만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/brochure'" class="subtype rounded w-100">
					    		> 브로셔 / 리플렛 
					    		<span class="startprice" id="p6">상금 40만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/bizcard'" class="subtype rounded w-100">
					    		> 명함 / 봉투
					    		<span class="startprice" id="p7">상금 10만원 ~</span>
					    	</button>
					    </div>
					</div>
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<img src="<%=request.getContextPath()%>/resource/img/contest/app.png" alt="...">
					    	<div class="title">
								<span class="text_type">WEB / APP</span><br>
								<span class="text_add">콘테스트 등록비 10만원, 부가세 별도</span><br>
								<span class="sub2" style="margin-left:10px;">*포토샵 파일로 디자인만 제공합니다.</span>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<button type="button" onclick="location.href='launch/homepage'" class="subtype rounded w-100">
					    		> 웹사이트 <span class="sub1">(회사홈페이지, 쇼핑몰스킨 등)</span>
					    		<span class="startprice">상금 50만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/app'" class="subtype rounded w-100">
					    		> 모바일 앱 <span class="sub1">(아이폰, 안드로이드 어플리케이션)</span>
					    		<span class="startprice" id="p8">상금 50만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/landingpage'" class="subtype rounded w-100">
					    		> 상세 페이지 <span class="sub1">(랜딩페이지, 제품상세페이지 등)</span>
					    		<span class="startprice" id="p9">상금 30만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/benner'" class="subtype rounded w-100">
					    		> 배너광고 디자인 <span class="sub1">(배너광고, 카드뉴스, SNS광고)</span>
					    		<span class="startprice" id="p10">상금 20만원 ~</span>
					    	</button>
					    </div>
					</div>
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<img src="<%=request.getContextPath()%>/resource/img/contest/ruler.png" alt="...">
					    	<div class="title">
								<span class="text_type">OTHER</span><br>
								<span class="text_add">콘테스트 등록비 10만원, 부가세 별도</span>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<button type="button" onclick="location.href='launch/character'" class="subtype rounded w-100">
					    		> 캐릭터 디자인
					    		<span class="startprice">상금 50만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/illust'" class="subtype rounded w-100">
					    		> 일러스트 <span class="sub1">(일러스트레이션, 패션 드로잉)</span>
					    		<span class="startprice" id="p11">상금 30만원 ~</span>
					    	</button>
					    	<button type="button" onclick="location.href='launch/others'" class="subtype rounded w-100">
					    		> 기타 디자인 <span class="sub1">(그 외 모든 디자인)</span>
					    		<span class="startprice" id="p12">상금 30만원 ~</span>
					    	</button>
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>