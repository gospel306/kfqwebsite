<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/briefing.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/resource/js/briefinglogin.js"></script>
</head>
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
				<form>
					<div class="title">
						<span class="text_type">Step 2-2</span><br> <span
							class="text_add">작업 내용을 상세히 설명해 주세요.</span>
					</div>

					<hr size="1" align="center" style="margin-top: 30px;">

					<div class="row">
						<div class="col-sm-5">
							<div class="title">
								<span class="text_type">1.</span><br> <span
									class="text_add">의뢰하실 내용을 설명해주세요.</span>
								<p class="text_add1">
									디자이너가 좋은 아이디어를 제출하기 위해서는<br>자세한 설명이 필요합니다.<br>가능한 많은
									디자이너의 참여를 유도하기 위해<br>최대한 자세히 적어주세요.
								</p>
							</div>
						</div>
						<div class="col-sm-7">
							<form>
								<div class="form-group mt-4">
									<p class="input">제목</p>
									<input type="text" class="form-control1 rounded-0"
										id="exampleInputEmail1" aria-describedby="emailHelp">
									<p class="sub_input">예시> 디자인플랫폼 네이밍 의뢰</p>
								</div>
								<div class="form-group">
									<p class="input">회사(단체)명</p>
									<input type="text" class="form-control1 rounded-0"
										id="exampleInputPassword1">
									<p class="sub_input">예시> 라우더스</p>
								</div>
								<div class="form-group mt-4">
									<p class="input">서비스 설명</p>
									<div class="control-group">
										<div
											class="form-group floating-label-form-group controls mb-0 pb-2">
											<textarea class="form-control2" id="content" rows="7"
												required="required"
												data-validation-required-message="내용을 입력하세요"></textarea>
										</div>
									</div>
									<p class="sub_input">예시> XXX은 국내 최초 디자인 오픈마켓 입니다. 디자인이 필요한
										고객이 상금을 걸고 콘테스트를 개최하면 수 많은 디자이 너들이 콘테스트에 참여하고, 고객은 제출된 시안 중 가장
										마음에 드는 디자인을 선택합니다. 저희 타겟층은 디자인이 필요한 기업, 자영업자, 창업자 및 개인 입니다.</p>
								</div>
								<div class="form-group mt-4">
									<p class="input">업종</p>
									<label><input type="radio" name="category">
										식당/카페 &nbsp;</label> <label><input type="radio"
										name="category"> 식품/건강 &nbsp;</label> <label><input
										type="radio" name="category"> IT/미디어 &nbsp;</label> <label><input
										type="radio" name="category"> 뷰티/패션 &nbsp;</label> <label><input
										type="radio" name="category"> 병원 &nbsp;</label> <br> <label><input
										type="radio" name="category"> 애완용품 &nbsp;</label> <label><input
										type="radio" name="category"> 교육/육아 &nbsp;</label> <label><input
										type="radio" name="category"> 공기업/기관 &nbsp;</label> <label><input
										type="radio" name="category"> 일반/기타</label>
								</div>
							</form>
						</div>
					</div>

					<hr size="1" align="center" style="margin-top: 30px;">

					<div class="row">
						<div class="col-sm-5">
							<div class="title">
								<span class="text_type">2.</span><br> <span
									class="text_add">어떤 아이디어가 필요하세요?</span>
								<p class="text_add1">
									핵심적인 내용을 정확히 적어주시고,<br>세부 내용(느낌, 참고사항, 필수사항 등)은<br>아래
									4번에 입력해주세요.
								</p>
							</div>
						</div>
						<div class="col-sm-7">
							<div class="control-group">
								<div
									class="form-group floating-label-form-group controls mb-0 pb-2">
									<textarea class="form-control2" id="content" rows="13"
										required="required"
										data-validation-required-message="내용을 입력하세요"></textarea>
								</div>
							</div>
						</div>
					</div>

					<hr size="1" align="center" style="margin-top: 30px;">

					<div class="row">
						<div class="col-sm-5">
							<div class="title">
								<span class="text_type">3.</span><br> <span
									class="text_add">디자이너들이 참고할 수 있는 이미지와<br>&nbsp;스케치,
									템플릿 등의 자료가 있으신가요?
								</span>
							</div>
						</div>
						<div class="col-sm-7">
							<div class="control-group">
								<div
									class="form-group floating-label-form-group controls mb-0 pb-2">
									<textarea class="form-control2" id="content" rows="13"
										required="required"
										data-validation-required-message="내용을 입력하세요"></textarea>
								</div>
							</div>
						</div>
					</div>

					<hr size="1" align="center" style="margin-top: 30px;">

					<div class="row">
						<div class="col-sm-5">
							<div class="title">
								<span class="text_type">4.</span><br> <span
									class="text_add">콘테스트 브리핑 상세내용</span>
								<p class="text_add1">
									모든 세부 요청사항을 자세히 적어주세요.<br>
									<br>(예1) .co.kr 등록가능한 네이밍<br>(예2) 상표검색에서 동일한 상표 검색되지
									않는 네이밍<br>(예3) 15자 이내의 짧은 광고 카피
								</p>
							</div>
						</div>
						<div class="col-sm-7">
							<div class="control-group">
								<div
									class="form-group floating-label-form-group controls mb-0 pb-2">
									<textarea class="form-control2" id="content" rows="13"
										required="required"
										data-validation-required-message="내용을 입력하세요"></textarea>
								</div>
							</div>
							<p class="sub_input">좋은 아이디어를 얻기 위해 가장 중요한 부분입니다. 고객님의 설명이
								세부적이고 명확할수록 마음에 꼭 드는 아이디어를 받아보실 확률이 높아지므로, 최대한 자세히 작성해 주세요. 브리핑
								작성과 관련해서 도움이 필요하시면 언제든지 1599-4952으로 전화해 주세요.</p>
						</div>
					</div>

					<hr size="1" align="center" style="margin-top: 30px;">

					<button type="button" onclick="location.href=''" class="subtype3">임시
						저장</button>
					<button type="button" onclick="checkbriefing()"
						class="subtype1">다음&nbsp;&nbsp;></button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>