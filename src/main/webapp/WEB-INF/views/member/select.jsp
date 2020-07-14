<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅇㅏㅇㅣㄷㅣㅇㅓ</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- icon css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   	
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet"href="<%=request.getContextPath()%>/resource/css/select.css">
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
	<main>
		<div class="container-fluid">
			<div class="row mainbig d-flex justify-content-center">
				<div class="mainleft">
					<p class="ideasignup">
						<span class="join">ㅇㅏㅇㅣㄷㅣㅇㅓ</span> <span class="join1">회원가입</span>
					</p>
					<p style="font-size: 16px;">
						지금 바로 신규회원 가입하고<br>수많은 디자이너를 만나보세요!
					</p>

					<div class="signup_buttons">
						<button type="button" class="btn btn-light aaa">
							<span>네이버</span>로 간편하게 가입하기
						</button>
						<button type="button" class="btn btn-light aaa">
							<span>카카오</span>로 간편하게 가입하기
						</button>
						<button type="button" class="btn btn-light aaa" onclick="location.href='<%=request.getContextPath()%>/signin'">
							<span>이메일</span>로 간편하게 가입하기
						</button>
						<div class="aaa bordertop">
							<p>
								★ 이미 가입된 계정이 있으신가요?
								<button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-dark">로그인하기</button>
							</p>
						</div>
					</div>
				</div>

				<div class="rightimg d-none d-xl-block">
					<img src="<%=request.getContextPath()%>/resource/img/signupimg.jpg"
						class="card-img-top" alt="...">
				</div>

			</div>
		</div>
		<div class="modal fade modal--align-top" id="myModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" style="width: auto;">
				<div class="modal-content">
					<div class="modal-header" style="border-bottom: none">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<jsp:include page="../member/login.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</main>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>