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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/result.css">
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
				    <div class="col">
				    	1. 카테고리 선택
				    	<hr class="hr1">
				    </div>
				    <div class="col">
				    	2. 브리핑 작성
				    	<hr class="hr1">
				    	</div>
				    <div class="col">
				    	3. 상금&옵션 선택
				    	<hr class="hr1">
				    </div>
				    <div class="col" style="color:red;">
				    	4. 결제 및 등록완료
				    	<hr class="hr1" style="background-color:red;">	
				    </div>
				 </div>
			</div>
			 
			 <div class="my-5" style="background-color:#EAEAEA; width:100%;">
				<div class="inner">
					<div class="title">
						<span class="text_type">Step 4</span><br>
						<p class="text_add1">결제 및 등록 완료</p>
					</div>
					
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<div class="title">
								<span class="text_type">Total</span><br>
								<p class="text_add1">결제하실 총 금액입니다.</p>
							</div>
					    </div>
					    <div class="col-sm-7">
					   	 	<div class="total_money">
					    		<ul>
					    			<li>
					    				<div style="font-weight:bold; padding:8px 0;">콘테스트 항목</div>
					    				<div style="padding:8px 0;">${ctype} | ${paytype } 패키지 <span style="color:red;">(환불불가)</span></div>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>상금 1등</span>
					    					<span class="pp">${firstprize}만원</span>
					    				</div>
					    				<c:if test="${secondprize ne 0}">
					    					<div style="padding:8px 0;">
					    					<span>상금 2등</span>
					    					<span class="pp">${secondprize}만원</span>
					    				</div>
					    				</c:if>
					    				<c:if test="${thirdprize ne 0}">
					    					<div style="padding:8px 0;">
					    					<span>상금 3등</span>
					    					<span class="pp">${thirdprize}만원</span>
					    					</div>
					    				</c:if>
					    				<div style="padding:8px 0;">
					    					<span>공모전 등록비</span>
					    					<span class="pp">${enroll}만원</span>
					    				</div>
					    			</li>
					    			<li>
					    				<c:if test="${show ne 0}">
					    					<div style="padding:8px 0;">
					    					<span>상단 노출 옵션</span>
					    					<span class="pp">${show}만원</span>
					    					</div>
					    				</c:if>
					    				<c:if test="${highlight ne 0}">
					    				<div style="padding:8px 0;">
					    					<span>하이라이트</span>
					    					<span class="pp">${highlight}만원</span>
					    				</div>
					    				</c:if>
					    				<c:if test="${benner ne 0}">
					    				<div style="padding:8px 0;">
					    					<span>베너 홍보</span>
					    					<span class="pp">${benner}만원</span>
					    				</div>
					    				</c:if>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>쿠폰등록</span>
					    					<span class="pp">등록된 쿠폰이 없습니다.</span>
					    				</div>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>부가세(10%)</span>
					    					<span class="pp">${tax_price}만원</span>
					    				</div>
					    			</li>
					    			<li style="border-bottom:0;">
					    				<div style="padding:8px 0;">
					    					<span>합계</span>
					    					<span class="pp" style="color:red;">${total}만원</span>
					    				</div>
					    			</li>
					    		</ul>
					    	</div>
					    </div>
					</div>
					
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<div class="title">
								<span class="text_type">Pay info</span><br>
								<p class="text_add1">결제 수단 입력</p>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<div class="etcbox" style="margin-top:20px;">
					    		<ul>
					    			<li style="border-bottom:0; padding:0 0;'">
					    				<span style="font-weight:bold; font-size:14px; padding:8px 0;">결제수단</span>
					    				<div style="float:right;">
					    					<select>
					    						<option>신용카드</option>
					    						<option>무통장입금</option>
					    						<option>실시간계좌이체</option>
					    					</select>
					    				</div>
					    			</li>
					    		</ul>
					    	</div>
					    </div>
					</div>
					
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<div class="title">
								<span class="text_type">Confirm</span><br>
								<p class="text_add1">환불규정 및 약관 동의</p>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<div class="etcbox">
					    		<ul>
					    			<li style="border-bottom:0; padding:0 0;'">
					    				<img src="imag\ban.png" alt="...">
					    				<span style="font-weight:bold; font-size:14px; padding:8px 0;">환불 불가 콘테스트</span>
					    				<span style="float:right; font-size:14px; color:#666666; font-weight:bold; padding:2px 0;">
					    				<img src="imag\check.png" alt="..." style="margin-right:3px;">네이밍 콘테스트</span>
					    			</li>
					    		</ul>
					    	</div>
					    	<span class="text_add" style="color:red;">* 네이밍/아이디어 콘테스트는 아이디어만 도용될 위험이 있어 어떤 경우에도 환불이 불가능합니다.</span>
					    	<div class="refund">
					    		<p class="text_add" style="margin-bottom:5px;">1. 자발적인 참여</p>
					    		<span class="text_add2">디자인 콘테스트는 수많은 디자이너 회원들이 자발적으로 참여하는 시스템입니다.
					    		 따라서 몇 명의 디자이너가 참여할 지는 확정되어 있지 않습니다.
					    		  상금과 작업량에 따라 3~5명에서 수백명까지 참여자 수는 콘테스트별로 상이합니다.
					    		   보다 활발한 참여를 위해서는 최근 종료된 사례들을 참고하여, 요구 작업량과 상금 규모가 적당한지 확인해주세요.</span>
					    		<p class="text_add" style="margin-bottom:5px; margin-top:20px;">2. 선정 포기 및 환불</p>
					    		<span class="text_add2">콘테스트는 상금을 약속한 상태로 개최되어, 그 상금을 보고 디자이너 회원들이 참여합니다. 
					    		콘테스트 참여에 많은 시간과 노력이 소요되기 때문에 참여자 수와 관계없이 미리 약속된 상금의 환불은 불가능합니다. 
					    		원하는 작품이 없어서 심사를 포기하실 경우, 상금은 참여하신 디자이너님들께 1/N으로 지급됩니다. 
					    		(단 '고급형, 프리미엄형 패키지'의 경우 50% 환불이 가능합니다.)</span>
					    	</div>
					    	<div class="agree_check">
					    		<div class="form-check" style="padding-left:0;">
									  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
									  <label class="form-check-label" for="defaultCheck1" style="font-size:16px; font-weight:bold;">
									  	&ensp;위 내용을 확인하였으며 결제에 동의합니다. <span style="color:red;">(필수)</span>
									  </label>
								</div>
					    	</div>
					    </div>
					</div>
					
					<hr size="1" align="center" style="margin-top:30px;">
					
					<button type="button" onclick="submit()" class="subtype1">결제하기</button>
					<script>
						function submit(){
							$.ajax({
								type: 'POST',
								url: "../../payed",
								success: function(result){
									if(result.result == "success"){
										alert("성공적으로 등록되었습니다. 작성된 페이지로 갑니다.");
										location.href="../../contest/"+result.idx;
									}
								}
							});
						}
					</script>
				</div>
			</div>
					
		</div>
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>