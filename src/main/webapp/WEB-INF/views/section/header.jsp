<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/header.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/header.js"></script>
</head>
<body>
   <div class="header_123">
        <a href="<%=request.getContextPath() %>/main" class="name_page">
            <span style="font-size: 30px;">ㅇㅏ</span>
            <span style="font-size: 22px;">ㅇㅣ</span>
            <span style="font-size: 28px;">ㄷㅣ</span>
            <span>ㅇㅓ</span>
        </a>
        <div class="nav_content">
            <div class="nav_content_div">
                <div class="nav_name">
                    <p>콘테스트 개최하기</p>
                </div>
                <div class="nav_name">
                    <p>진행중인 콘테스트</p>
                </div>
                <div class="nav_name">
                    <p>공지 사항</p>
                </div>
            </div>
            <div class="logsign">
            	<c:choose>
            		<c:when test="${empty sessionScope.useremail}">
		                <p><a href="#" data-toggle="modal" data-target="#myModal" class="loglog">로그인</a></p>
		                <p><a href="#" onclick="signin()" class="loglog">회원가입</a></p>
            		</c:when>
            		<c:otherwise>
		                <p><a href="#" class="loglog">마이페이지</a></p>
		                <p><a href="#" onclick="logout()" class="loglog">로그아웃</a></p>
            		</c:otherwise>
            	</c:choose>
            </div>   
        </div>
        <!--우측 상단 버튼입니다.-->
        <div class="mobile_button" id="mobile_button">
            <a class="btn trigger" id="button_openclose" href="#">open me</a>
        </div>
        <div class="mobile_button_close" id="mobile_button_close">
            <a class="btn trigger" id="button_openclose" href="#">close me</a>
        </div>

    </div>
    <div class="navbar_123">
        <p class="name_page" style="color: white;">ㅇㅏㅇㅣㄷㅣㅇㅓ</p>
        <div class="nav_name1">
            <p><a href="#" onclick="makecontest()">콘테스트 개최하기</a></p>
            <p><a href="#" target="blank">가격 안내</a></p>
        </div>
        <div class="nav_name1">
            <p><a href="#" target="blank">진행중인 콘테스트</a></p>
            <p><a href="#" target="blank">심사중인 콘테스트</a></p>
            <p><a href="#" target="blank">종료된 콘테스트</a></p>
        </div>
        <div class="nav_name1">
            <p><a href="#" target="blank">공지 사항</a></p>
            <p><a href="#" target="blank">문의하기</a></p>
            <p><a href="#" target="blank">고객 센터</a></p>
            <p><a href="#" target="blank">오시는 길</a></p>
        </div>
    </div>

    <div id="button_all" class="modal-wrapper close">
        <div class="button_bar">
            <div class="row">
                <div class="col-4">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home"
                            role="tab" aria-controls="v-pills-home" aria-selected="true"
                            style="background-color: #c0c5ca; margin-bottom: 10px;">콘테스트 개최하기</a>
                        <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
                            role="tab" aria-controls="v-pills-profile" aria-selected="false"
                            style="background-color: #c0c5ca; margin-bottom: 10px;">진행중인 콘테스트</a>
                        <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages"
                            role="tab" aria-controls="v-pills-messages" aria-selected="false"
                            style="background-color: #c0c5ca; margin-bottom: 10px;">공지 사항</a>
                    </div>
                </div>

                <div class="col-8">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"
                            aria-labelledby="v-pills-home-tab"> <a href="#" target="blank">
                                <p id="tab_txt">#콘테스트 개최하기</p>
                            </a>
                            <a href="#" target="blank">
                                <p id="tab_txt">#가격 안내</p>
                            </a></div>
                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
                            aria-labelledby="v-pills-profile-tab"> <a href="#" target="blank">
                                <p id="tab_txt">#진행중인 콘테스트</p>
                            </a> <a href="#" target="blank">
                                <p id="tab_txt">#심사중인 콘테스트</p>
                            </a>
                            <a href="#" target="blank">
                                <p id="tab_txt">#종료된 콘테스트</p>
                            </a></div>
                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
                            aria-labelledby="v-pills-messages-tab"> <a href="#" target="blank">
                                <p id="tab_txt">#공지 사항</p>
                            </a>
                            <a href="#" target="blank">
                                <p id="tab_txt">#문의하기</p>
                            </a>
                            <a href="#" target="blank">
                                <p id="tab_txt">#고객 센터</p>
                            </a>
                            <a href="#" target="blank">
                                <p id="tab_txt">#오시는 길</p>
                            </a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="modal fade modal--align-top" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" style="width:auto;">
			<div class="modal-content">
				<div class="modal-header" style="border-bottom:none">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				</div>
				<jsp:include page="../member/login.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>