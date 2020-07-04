<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
    function test(no){
        for(i=1; i<=4; i++){
            if(no==i)
                document.getElementById('div'+i).style.display='block';
            else
                document.getElementById('div'+i).style.display='none';
        }
    }
    
    function show_layer(div_name){
    	document.all.div_01.style.display="none";
    	document.all.div_02.style.display="none";
    	document.all.div_03.style.display="none";
    	document.all.div_04.style.display="none";
    	document.all.div_05.style.display="none";
    	switch(div_name) {
	    	case '1':
	    	document.all.div_01.style.display="";
	    	break;
	    	case '2':
	    	document.all.div_02.style.display="";
	    	break;
	    	case '3':
	    	document.all.div_03.style.display="";
	    	break;
	    	case '4':
		    document.all.div_04.style.display="";
		    break;
	    	case '5':
		    document.all.div_05.style.display="";
		    break;
    	}
    }
    
    function show_content(div_name){
    	document.all.div_one.style.display="none";
    	document.all.div_two.style.display="none";
    	switch(div_name) {
	    	case '1':
	    	document.all.div_one.style.display="";
	    	break;
	    	case '2':
	    	document.all.div_two.style.display="";
	    	break;
    	}
    }
    
    function show_ms(div_name){
    	document.all.div_ms_one.style.display="none";
    	document.all.div_ms_two.style.display="none";
    	switch(div_name) {
	    	case '1':
	    	document.all.div_ms_one.style.display="";
	    	break;
	    	case '2':
	    	document.all.div_ms_two.style.display="";
	    	break;
    	}
    }
    
</script>

<style>
	.member_img{
		margin-bottom:10px;
	}
	h2{
		text-align:center;
	}
	.linkaddress{
		color:#676767;
		font-size:13px;
		text-align:center;
	}
	.editinfo{
		border:1px solid #ddd;
		padding:10px 0px;
		cursor:pointer;
		width:17%;
		font-size:13px;
		margin-top:10px;
		margin-left:auto;
		margin-right:auto;
	}
	.wrap{
		border-bottom:1px solid #e2e2e2;
		
	}
	ul.menu{
		line-height:35px;
		margin-bottom:0px;
		margin-left:10%;
	}
	ul.menu li{
		list-style: none;
	    display: inline-block;
	    text-align: center;
	    margin-right: 30px;
	    padding-left: 10px;
	    padding-right: 10px;
	    padding-top: 6px;
	    position: relative;
	    cursor: pointer;
	    font-size: 14px;
	    width:15%;
	}
	.catSelect{
		border: 1px solid #ccc;
	    font-weight: bold;
	    font-size: 13px;
	    background-color: #fff;
	    width:17%;
	    padding-top:5px;
	    padding-bottom:5px;
	    padding-left:2%;
	}
	span.subtitle{
		font-size: 14px;
	    font-weight: bold;
	    color: #666;
	    margin-bottom: 10px;
	    margin-top: 10px;
	    border-left: 2px solid #ff6364;
	    padding-left: 6px;
	    display:block;
	}
	.contentlist{
		background-color:#fff;
		padding:30px 0px;
		text-align:center;
		margin-bottom:30px;
	}
	.contentlist1{
		background-color:#fff;
		padding:30px 20px;
		margin-bottom:30px;
	}
	.startcontest{
		background-color: #302f3a;
	    color: white;
	    font-weight: bold;
	    padding: 8px 0;
	    width: 200px;
	    margin: 20px auto 0;
	    display: inline-block;
	    border: 1px solid #302f3a;
	}
	.startcontest:hover{
		background-color:#60606D;
		border-color:#60606D;
	}
	.my_portfolio li {
	    position: relative;
	    vertical-align: top;
	    height: auto;
	    margin: 0px 0 7px 0px;
	    padding: 0;
	    display: block;
	    width: 100%;
	    overflow: hidden;
	    text-align: left;
	    background: #fff;
	    border-bottom: 1px solid #d3d3d3;
	    box-shadow: 1px 1px 2px 0px #dedede;
	    min-height: 100px;
	}
	ul.my_portfolio{
		padding-left:0px;
	}
	.my_portfolio img{
		margin-bottom:2%;
		margin-left:2%;
	}
	.contest_des{
		display:inline-block;
		font-size:14px;
		padding:30px 0px 20px 45px;
	}
	.content_title{
		display:inline-block;
	}
	.contest_des .content_title span {
	    display: inline-block;
	    padding-left: 5px;
	    border-left: 1px solid #696969;
	    color: #696969;
	    font-weight: bold;
	    line-height: 15px;
	    font-size: 15px;
	}
	h3 {
	    display: inline-block;
	    margin-right: 5px;
	    color: #fd6467;
	    font-weight: bold;
	    font-size: 15px;
	}
	.detail{
		color: #959595;
	    margin-top: 2px;
	}
	.content_join {
	    display: inline-block;
	    float: right;
	    vertical-align: top;
	    font-size: 12px;
	    margin-right: 30px;
	    position: relative;
	    margin-top: 10px;
	}
	.content_box, .content_box1{
		background: #ebeff2;
	    border-radius: 5px;
	    padding: 12px 0;
	    text-align: center;
	    width: 240px;
	}
	.content_box{
		margin-top: 20px;
	}
	.content_box1{
	    color:black;
	}
	.temp{
		display: inline-block;
	    padding: 5px 10px;
	    margin-right: 5px;
	    border: 1px solid #eee;
	    background: #fff;
	}
	.temp:hover{
		border: 1px solid #D5D5D5;
	}
	.sm-link{
	    --uismLinkDisplay: var(--smLinkDisplay, inline-flex);   
	    --uismLinkTextColor: var(--smLinkTextColor);
	    --uismLinkTextColorHover: var(--smLinkTextColorHover);  
	    
	    display: var(--uismLinkDisplay);
	    color: var(--uismLinkTextColor);
	    position: relative;
	    overflow: hidden;
	}
	.sm-link__label{
	  display: block;
	}
	.sm-link_padding-bottom{
	    --uismLinkLineWeight: var(--smLinkLineWeight, 2px);
	    --uismLinkLineColor: var(--smLinkLineColor, #000);  
	    
	    padding-bottom: var(--uismLinkLineWeight);  
	    position: relative;
	}
	.sm-link_padding-bottom::after{
	  content: "";
	  width: 100%;
	  height: var(--uismLinkLineWeight);
	    background-color: var(--uismLinkLineColor);
	    
	  position: absolute;
	  left: 0;
	  bottom: 0;
	}
	.sm-link4::after{
	  opacity: 0;
	  transform: translate3d(0, 100%, 0);
	  transition: transform .3s ease-out, opacity .3s ease-out;
	}
	.sm-link4:hover::after{
	  opacity: 1;
	  transform: translate3d(0, 0, 0);
	}
	.pay_text{
		font-size:13px;
		font-weight:bold;
	}
	.paylist{
		border-top: 2px solid #E2E2E2;
		color: #8a8a8a;
	    text-align: center;
	}
	.pay_complete{
		background:#fff;
		padding: 5px 10px;
		display: inline-block;
		margin-bottom:0px;
	}
	.pay_complete1{
		padding: 5px 10px;
		margin-bottom:10px;
		font-weight:bold;
		font-size:14px;
	}
	.pay_complete:hover{
		border: 1px solid #D5D5D5;
	}
	.bar{
		font-weight:bold; 
		margin-right:13px; 
		font-size:23px;
	}
	.ask{
		background:white;
		padding: 15px 20px;
	}
	a, a.ask_content, a.rank, a.pay_complete, a.tab, a.temp, a.on, a.off{
		text-decoration:none;
		color:black;
	}
	a.onebyone, a.startcontest, a.delete{
		text-decoration:none;
		color:white;
	}
	.page-link1{
		position: relative;
	    display: block;
	    padding: .5rem .75rem;
	    margin-left: -1px;
	    line-height: 1.25;
	    background-color: #fff;
	    border: 1px solid #dee2e6;
	}
	a.page-link1{
		color:black;
	}
	.type{
		background:white;
		font-size:13px;
		margin-bottom:10px;
		float:right;
		padding:3px;
		border:1px solid #dfe1e0;
		diplay:inline-block;
	}
	a.on{
		background: #edeef0;
   		font-weight: bold;
	}
	.type a{
		display: inline-block;
	    color: #555658;
	    border: none;
	    line-height: 26px;
	    padding: 0 14px;
	}
	.rank{
		background-color:white;
		padding:10px 43px;
		font-weight:bold;
		text-align:center;
		color:black;
		font-size:15px;
		width:30%;
		border:1px solid black;
	}
	.rank:hover{
		background-color:#EAEAEA;
	}
	.onebyone, .delete{
		border:1px solid black;
		background-color:black;
		padding:10px 30px;
		font-weight:bold;
		text-align:center;
		color:white;
		font-size:15px;
		width:30%;
	}
	.onebyone:hover, .delete:hover{
		background-color:#676767;
	}
	.delete{
		float:right;
	}
</style>
</head>
<body>
	<div class="wrap">
		<div class="container my-5">
			<!-- 사진 -->
			<div class="member_img">
				<img src="imag\user.png" alt="..." style="display: block; margin: 0px auto; ">
			</div>
			<!-- 사진 밑 정보 -->
			<div class="member_info">
				<div class="member_id">
					<h2>dnjsgml1203</h2>
				</div>
				<div class="linkaddress">
					<img src="imag\home.png" alt="...">
					<span>https://www.loud.kr/m/dnjsgml1203</span>
				</div>
				<div class="editinfo">
					<img src="imag\settings.png" alt="..." style="margin-right:10px; margin-left:20px; margin-top:2px;">
					<span style="margin-right:5%;">회원정보 수정하기</span>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 콘테스트 -->
	<div id="div_01">
		<div class="wrap">
			<div class="container">
				<ul class="menu">
					<li id="tab_contest" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label" onClick="window.location.reload()" >
						콘테스트
					</li>
					<li id="tab_onebyone" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('2');" class="tab">
						1:1 프로젝트
						</a>
					</li>
					<li id="tab_msg" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('3');" class="tab">
						메세지
						</a>
					</li>
					<li id="tab_qa" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('4');" class="tab">
							문의
						</a>
					</li>
					<li id="tab_pay" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('5');" class="tab">
							결제내역
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div style="background-color:#EAEAEA;">
			<div class="container" style="padding-top:50px; padding-bottom:100px;">
			
				<div style="padding-bottom:30px;">
					<select class="catSelect" onchange='test(this.value)'>
						<option selected value="1">전체 콘테스트</option>
						<option value="2">결제대기 콘테스트</option>
						<option value="3">임시저장 콘테스트</option>
						<option value="4">종료된 콘테스트</option>
					</select>
				</div>
				
				<div class="content">
					<div id="div1" style="display:block;">
						<span class="subtitle">결제대기 콘테스트</span>
						<span class="subtitle">임시저장 콘테스트</span>
							<ul class="my_portfolio">
								<li>
									<img src="imag\guide.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>로고 디자인</h3>
												<span>크라우드 펀딩 사이트 로고</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 로고 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="temp" style="margin-right:13px; margin-left:18px;">삭제</a>
												<span class="bar">|</span>
												<a href="#" class="temp" style="margin-right:0px;">이어쓰기</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\app.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>웹사이트</h3>
												<span>크라우드 펀딩 웹사이트</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 웹사이트 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="temp" style="margin-right:13px; margin-left:18px;">삭제</a>
												<span class="bar">|</span>
												<a href="#" class="temp" style="margin-right:0px;">이어쓰기</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\print.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>포스터 / 전단지</h3>
												<span>크라우드 펀딩 포스터</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 포스터 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="temp" style="margin-right:13px; margin-left:18px;">삭제</a>
												<span class="bar">|</span>
												<a href="#" class="temp" style="margin-right:0px;">이어쓰기</a>
											</span>
										</div>
									</div>
								</li>
							</ul>
						<span class="subtitle">종료된 콘테스트</span>
						<span class="subtitle">전체 콘테스트</span>
							<ul class="my_portfolio">
								<li>
									<img src="imag\box.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>패키지 디자인</h3>
												<span>청소기 상품 박스 디자인</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 로고 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="pay_complete">자세히 보기</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\app.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>웹사이트</h3>
												<span>크라우드 펀딩 웹사이트</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 웹사이트 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="pay_complete">자세히 보기</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\print.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>포스터 / 전단지</h3>
												<span>크라우드 펀딩 포스터</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 포스터 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="pay_complete">자세히 보기</a>
											</span>
										</div>
									</div>
								</li>
							</ul>
					</div>
					<div id="div2" style="display:none;">
						<div class="contentlist">
							<p style="font-weight:bold;">아직 개최한 콘테스트가 없습니다.</p>
							<p>지금 바로 콘테스트를 개최해보세요.</p>
							<a href="#" class="startcontest">콘테스트 개최</a>
						</div>
					</div>
					<div id="div3" style="display:none;">
						<ul class="my_portfolio">
								<li>
									<img src="imag\guide.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>로고 디자인</h3>
												<span>크라우드 펀딩 사이트 로고</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 로고 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="temp" style="margin-right:13px; margin-left:18px;">삭제</a>
												<span class="bar">|</span>
												<a href="#" class="temp" style="margin-right:0px;">이어쓰기</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\app.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>웹사이트</h3>
												<span>크라우드 펀딩 웹사이트</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 웹사이트 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="temp" style="margin-right:13px; margin-left:18px;">삭제</a>
												<span class="bar">|</span>
												<a href="#" class="temp" style="margin-right:0px;">이어쓰기</a>
											</span>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\print.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>포스터 / 전단지</h3>
												<span>크라우드 펀딩 포스터</span>
											</div>
											<div class="detail">
												크라우드 펀딩 사이트인 FUNd의 포스터 제작을 부탁드립니다.
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box">
											<span>
												<a href="#" class="temp" style="margin-right:13px; margin-left:18px;">삭제</a>
												<span class="bar">|</span>
												<a href="#" class="temp" style="margin-right:0px;">이어쓰기</a>
											</span>
										</div>
									</div>
								</li>
							</ul>
					</div>
					<div id="div4" style="display:none;">
						<div class="contentlist">
							<p style="font-weight:bold;">아직 개최한 콘테스트가 없습니다.</p>
							<p>지금 바로 콘테스트를 개최해보세요.</p>
							<a href="#" class="startcontest">콘테스트 개최</a>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
	</div>

	<!-- 메세지 -->
	<div id="div_03" style="display:none;">
		<div class="wrap">
			<div class="container">
				<ul class="menu">
					<li id="tab_contest" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('1');" class="tab">
							콘테스트
						</a>
					</li>
					<li id="tab_onebyone" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('2');" class="tab">
						1:1 프로젝트
						</a>
					</li>
					<li id="tab_msg" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						메세지
					</li>
					<li id="tab_qa" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('4');" class="tab">
							문의
						</a>
					</li>
					<li id="tab_pay" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('5');" class="tab">
							결제내역
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div style="background-color:#EAEAEA;">
			<div class="container" style="padding-top:50px; padding-bottom:120px;">
				<div id="div_ms_one">
					<h3 style="margin-bottom:30px;">> <span style="color:black;">일반 메세지함</span></h3>
					<div class="type">
						<a href="#" class="on">받은 메세지</a>
						<a href="javascript:show_ms('2');" class="off">보낸 메세지</a>
					</div>
					<div class="contentlist1" id="div_on">
						<div class="contentlist">
							<p style="font-size:13px; font-weight:bold; margin-bottom:0px;">메세지가 없습니다.</p>
						</div>
					</div>
					<a href="#" class="delete">선택항목 삭제</a>
				</div>
				<div id="div_ms_two" style="display:none;">
					<h3 style="margin-bottom:30px;">> <span style="color:black;">일반 메세지함</span></h3>
					<div class="type">
						<a href="javascript:show_ms('1');" class="off">받은 메세지</a>
						<a href="#" class="on">보낸 메세지</a>
					</div>
					<div class="contentlist1" id="div_on">
						<div class="contentlist">
							<p style="font-size:13px; font-weight:bold; margin-bottom:0px;">메세지가 없습니다.</p>
						</div>
					</div>
					<a href="#" class="delete">선택항목 삭제</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 1:1 프로젝트 -->
	<div id="div_02" style="display:none;">
		<div class="wrap">
			<div class="container">
				<ul class="menu">
					<li id="tab_contest" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('1');" class="tab">
							콘테스트
						</a>
					</li>
					<li id="tab_onebyone" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						1:1 프로젝트
					</li>
					<li id="tab_msg" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('3');" class="tab">
						메세지
						</a>
					</li>
					<li id="tab_qa" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('4');" class="tab">
							문의
						</a>
					</li>
					<li id="tab_pay" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('5');" class="tab">
							결제내역
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div style="background-color:#EAEAEA;">
			<div class="container" style="padding-top:50px; padding-bottom:100px;">
				<div id="div_one">
					<h3 style="margin-bottom:30px;">> <span style="color:black;">1:1 프로젝트</span></h3>
					<div class="type">
						<a href="#" class="on">1:1 대화</a>
						<a href="javascript:show_content('2');" class="off">프로젝트</a>
					</div>
					<div class="contentlist1" id="div_on">
						<div class="contentlist">
							<p style="font-weight:bold; margin-bottom:0px;">아직 진행중인 대화가 없습니다.</p>
							<p style="margin-bottom:38px;">마음에 드는 디자이너가 있다면 1:1 프로젝트를 신청해보세요.</p>
							<a href="#" class="rank">디자이너 랭킹</a>
							<a href="#" class="onebyone">1:1 프로젝트 의뢰</a>
						</div>
					</div>
				</div>
				<div id="div_two" style="display:none;">
					<h3 style="margin-bottom:30px;">> <span style="color:black;">1:1 프로젝트</span></h3>
					<div class="type">
						<a href="javascript:show_content('1');" class="off">1:1 대화</a>
						<a href="#" class="on">프로젝트</a>
					</div>
					<div class="contentlist1" id="div_on">
						<div class="contentlist">
							<p style="font-weight:bold; margin-bottom:0px;">아직 등록된 1:1 프로젝트가 없습니다.</p>
							<p style="margin-bottom:38px;">지금 바로 1:1 프로젝트를 의뢰해보세요.</p>
							<a href="#" class="onebyone">프로젝트 보러가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 문의 -->
	<div id="div_04" style="display:none;">
		<div class="wrap">
			<div class="container">
				<ul class="menu">
					<li id="tab_contest" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('1');" class="tab">
							콘테스트
						</a>
					</li>
					<li id="tab_onebyone" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('2');" class="tab">
						1:1 프로젝트
						</a>
					</li>
					<li id="tab_msg" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('3');" class="tab">
						메세지
						</a>
					</li>
					<li id="tab_qa" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
							문의
					</li>
					<li id="tab_pay" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('5');" class="tab">
							결제내역
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div style="background-color:#EAEAEA;">
			<div class="container" style="padding-top:50px; padding-bottom:100px;">
			
				<div class="ask">
					<table class="table table-hover">
						<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>등록일</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>3</td>
							<td><a href="#" class="ask_content">디자이너 컨택 관련 문의드립니다.</a></td>
							<td>2020.07.03</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="#" class="ask_content">결제 내역에 대해 문의드립니다.</a></td>
							<td>2019.12.03</td>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="#" class="ask_content">콘테스트 개최 과정에 대해 문의드립니다.</a></td>
							<td>2019.04.15</td>
						</tr>
						</tbody>
					</table>
					<nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					    <li class="page-item">
					      <a class="page-link1" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    <li class="page-item"><a class="page-link1" href="#">1</a></li>
					    <li class="page-item"><a class="page-link1" href="#">2</a></li>
					    <li class="page-item"><a class="page-link1" href="#">3</a></li>
					    <li class="page-item">
					      <a class="page-link1" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					  </ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 결제내역 -->
	<div id="div_05" style="display:none;">
		<div class="wrap">
			<div class="container">
				<ul class="menu">
					<li id="tab_contest" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('1');" class="tab">
							콘테스트
						</a>
					</li>
					<li id="tab_onebyone" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('2');" class="tab">
						1:1 프로젝트
						</a>
					</li>
					<li id="tab_msg" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('3');" class="tab">
						메세지
						</a>
					</li>
					<li id="tab_qa" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
						<a href="javascript:show_layer('4');" class="tab">
							문의
						</a>
					</li>
					<li id="tab_pay" class="sm-link sm-link_padding-bottom sm-link4 sm-link__label">
							결제내역
					</li>
				</ul>
			</div>
		</div>
		
		<div style="background-color:#EAEAEA;">
			<div class="container" style="padding-top:50px; padding-bottom:100px;">
			
				<h3 style="margin-bottom:30px;">> <span style="color:black;">결제내역</span></h3>
				<div class="contentlist1">
					<p class="pay_text">전체 3건</p>
					<div class="paylist">
						<ul class="my_portfolio">
								<li>
									<img src="imag\box.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>패키지 디자인</h3>
												<span>청소기 상품 박스 디자인</span>
											</div>
											<div class="detail">
												1,430,000원
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box1">
											<p class="pay_complete1">결제 완료</p>
											<a href="#" class="pay_complete">자세히 보기</a>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\app.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>웹사이트</h3>
												<span>크라우드 펀딩 웹사이트</span>
											</div>
											<div class="detail">
												1,300,000원
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box1">
											<p class="pay_complete1">결제 완료</p>
											<a href="#" class="pay_complete">자세히 보기</a>
										</div>
									</div>
								</li>
								<li>
									<img src="imag\print.png" alt="...">
									<div class="contest_des">
										<div class="content_title">
											<div>
												<h3>포스터 / 전단지</h3>
												<span>크라우드 펀딩 포스터</span>
											</div>
											<div class="detail">
												1,550,000원
											</div>
										</div>
									</div>
									<div class="content_join">
										<div class="content_box1">
											<p class="pay_complete1">결제 완료</p>
											<a href="#" class="pay_complete">자세히 보기</a>
										</div>
									</div>
								</li>
							</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>