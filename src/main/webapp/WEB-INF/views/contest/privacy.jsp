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
<script src="<%=request.getContextPath()%>/resource/js/contest/privacy.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/briefing.css">
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
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
					<div class="col" style="color: red;">
						2. 브리핑 작성
						<hr class="hr1" style="background-color: red;">
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

			<div class="my-5" style="background-color: #EAEAEA; width: 100%;">
				<div class="inner">
					<div class="row">
						<div class="col-sm-5">
							<div class="title">
								<span class="text_type">Step 2-1</span><br> <span
									class="text_add">기본 정보를 확인해주세요.</span>
							</div>
						</div>
						<div class="col-sm-7">
							<form name="login" method="post">
								<div class="form-group mt-4">
									<p class="input">이메일</p>
									<input type="email" class="form-control1 rounded-0"
										id="exampleInputEmail2" aria-describedby="emailHelp"
										readonly="readonly" value="${sessionScope.useremail}">
								</div>
								<div class="form-group mt-4">
									<p class="input">성명</p>
									<input type="text" class="form-control1 rounded-0"
										id="exampleInputEmail1" readonly="readonly" value="${sessionScope.nickname}">
								</div>
								<div class="form-group">
									<p class="input">휴대전화</p>
									<input type="text" class="form-control1 rounded-0"
										id="exampleInputPassword1">
								</div>
								<input type="text" style="display:none" id="link" name="link">
							</form>
						</div>
					</div>

					<hr size="1" align="center" style="margin-top: 30px;">

					<button type="button" onclick="next()" class="subtype1">다음&nbsp;&nbsp;></button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>