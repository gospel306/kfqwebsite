<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<script src="<%=request.getContextPath()%>/resource/js/contest/estimate.js"></script>
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/estimate.css">
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
	<!--header-->
	<div class="header_st">
		<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-paper.png">
		<!--�ζ��� ��Ҹ� ���ȭ ��Ű�� ����-->
		<h1 class="head_title">���׽�Ʈ ������ Ȯ��</h1>
		<p class="header_p_st">���׽�Ʈ ������ ���� �ݾ��� �������� ���� �̸� Ȯ���غ�����.</p>
	</div>
	<!--header end-->


	<!--content-->
	<div class="main">
		<!--1 category-->
		<div class="spacing_bottom">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> ī�װ� ����
				</div>
				<div class="col-sm-8">
					<div>
						<div class="dropdown">
							<div class="btn btn-white" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
								<div class="row ">
									<div class="col-sm-11 category_drop">
										<strong>�ΰ������</strong> �ΰ� ����
									</div>
									<div class="col-sm-1 dropdown-toggle"></div>
								</div>
							</div>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">�ΰ� ������ (�ΰ� ����)</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�귣�� SET</a>
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">�ΰ� ������ (�ΰ� ����)</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�귣�� SET</a>
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">�ΰ� ������ (�ΰ� ����)</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�귣�� SET</a>
								<div class="drop_title">LOGO/BI</div>
								<a class="dropdown-item" href="#">�ΰ� ������ (�ΰ� ����)</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�ΰ� + ����</a> <a
									class="dropdown-item" href="#">�귣�� SET</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--2 category-->
		<div class="contest_category">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> ���׽�Ʈ ��� ����
				</div>

				<div class="col-sm-8">
					<span class="span_st_1">�Ƿ��ڴ� ���꿡 ����, �˸��� ����� å�����ּ���.</span><br>
					<span class="span_st_2">(�� �׸� ���콺�� ���, �ڼ��� ������ ��Ÿ���ϴ�.)</span>
				</div>
			</div>
		</div>


		<div class="row">
			<!--bronze-->

			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="bronzebox" id="bronzebox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="bronzecheck" onclick="">
								<label for="bronzecheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_bronze">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-bronze.png"> ������
							</div>

						</div>

						<div class="box_price_bronze">30����~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-bronze-check.png"> 
								<span>���������̳�</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>1�� ����� ���� �Ұ�</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>�Ϻ� �����̳� ��������</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>��� ȯ�� �Ұ�</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<span> </span><br>
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
						</div>
						<div>
							<p class="font_bold">�����Է�</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control" id="bronze"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">��</span>
								</div>
							</div>
						</div>
					</div>
				</label>
			</div>

			<!--bronze end-->
			<!--silver-->
			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="silverbox" id="silverbox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="silvercheck">
								<label for="silvercheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_silver">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver.png"> �Ϲ���
							</div>
						</div>
						<div class="box_price_silver">60����~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver-check.png"> 
								<span>��µ����̳�</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver-check.png"> 
								<span>1�� ����� ���� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-silver-check.png"> 
								<span>��� �����̳� ���� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-ban.png"> 
								<span>��� ȯ�� �Ұ�</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
						</div>
						<div>
							<p class="font_bold">�����Է�</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">��</span>
								</div>
							</div>
						</div>
					</div>
				</label>
			</div>
			<!--silver end-->
			<!--gold-->
			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="goldbox" id="goldbox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="goldcheck">
								<label for="goldcheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_gold">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold.png"> �����
							</div>
						</div>

						<div class="box_price_gold">100����~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> <span>���������̳�</span> <img
									src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>1�� ����� ���� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>��� �����̳� ���� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>��� 50% ȯ�� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-gold-check.png"> 
								<span>����Ʈ ��� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<br>
							</p>
						</div>
						<div>
							<p class="font_bold">�����Է�</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">��</span>
								</div>

							</div>


						</div>

					</div>
				</label>
			</div>
			<!--gold end-->
			<!--prime-->

			<div class="col-lg-3 grade_box_padding">
				<label>
					<div class="primebox" id="primebox">
						<div class="row">
							<div class="col-sm-3">
								<input type="radio" name="grade" id="primecheck">
								<label for="primecheck"></label>
							</div>
							<div class="col-sm-9 gradeChoice_prime">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime.png"> �����̾�
							</div>

						</div>

						<div class="box_price_prime">150����~</div>
						<div class="gradebox_list">
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>ž��ŷ�����̳�</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>1�� ����� ���� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>��� �����̳� ���� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span> ��� 50% ȯ�� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>�ֻ�� ���� �ɼ� ����</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
							<p class="p_pad_bot">
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-prime-check.png"> 
								<span>SNS ���� ������ ȫ��</span> 
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-question.png">
							</p>
						</div>
						<div>
							<p class="font_bold">�����Է�</p>
							<div class="input-group" class="padding_top_5">
								<input type="text" class="form-control"
									aria-label="Dollar amount (with dot and two decimal places)">
								<div class="input-group-append">
									<span class="input-group-text">��</span>
								</div>
							</div>
						</div>
					</div>
				</label>
			</div>
			<!--prime end-->
			<div class="padding_20">
				<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-add.png" alt="">
			</div>
			<!--contestPrice-->
		</div>
		<div class="contestPrice">
			<div>
				������ ���׽�Ʈ ��Ϻ� <span class="span_st_20"> <span> 10����</span></span> 
				<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowright.png" alt=""> 
				<span class="span_st_6">
					7���� &nbsp;&nbsp; <span class="span_st_4"> �ű�ȸ������ </span>
				</span>
			</div>
		</div>

		<!--rank-->
		<div class="contestRank">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> 2��/3�� �߰�����
					<div class="est_category_contents">2, 3�� �߰� ������ ���Ͻ� ��쿡�� �����
						�������ּ���. 2,3���� �߰��ϸ� �� ���� ������ ������ �� �ֽ��ϴ�.</div>
				</div>
				<div class="col-sm-8 align_left">
					<div>
						<input type="checkbox" id="rank_check"> <label
							for="rank_check"></label> 2��/3�� ��»�ݼ���
					</div>
					<div class="contest_price_input" id="rank_check_input_2">
						<div class="input-group" class="padding_top_5">
							2����� <input type="text" class="form-control"
								aria-label="Dollar amount (with dot and two decimal places)">
							<div class="input-group-append">
								<span class="input-group-text">��</span>
							</div>
						</div>
					</div>
					<div class="contest_price_input" id="rank_check_input_3">
						<div class="input-group" class="padding_top_5">
							3����� <input type="text" class="form-control"
								aria-label="Dollar amount (with dot and two decimal places)">
							<div class="input-group-append">
								<span class="input-group-text">��</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--rank-->

		<!--�Ⱓ-->
		<div class="contestPeriod">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> �Ⱓ����
				</div>

				<div class="col-sm-8 align_left">
					<div>
						<input type="radio" name="periodeRadio" id="contestPeriod_week" checked> &nbsp;&nbsp;&nbsp;1����
					</div>
					<div>
						<input type="radio" name="periodeRadio" id="contestPeriod_week_add"> &nbsp;&nbsp; 1�� ����(�� 2��)
					</div>
					<div>
						<input type="radio" name="periodeRadio" id="contestPeriod_3week_add"> &nbsp;&nbsp;&nbsp;3�� ����(�� 4��)
					</div>
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �⺻ ���׽�Ʈ �Ⱓ�� 1�����Դϴ�.
					</div>
				</div>
			</div>
		</div>

		<!--�߰��ɼ�-->
		<div class="contestExtra">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> �߰��ɼǼ���
				</div>
				<div class="col-sm-8">
					<!--��ݿɼ�-->
					<div class="ChampPriceOption">
						<div class="ChampPriceOption_title">��ݿɼ�</div>
						<div class="ChampPriceOption_check">
							<input type="checkbox" id="ChampPriceOption_check"><label
								for="ChampPriceOption_check"></label> <strong>��� 100%
								����</strong> (��� ������ �Ƿ��� �δ�)
						</div>
						<div class="ChampPriceOption_content">
							����ҽ��� ǥ�õ� ����� 15%��(����� ���� ����) ������� ������ �� 85%�� �����̳ʿ��� ���޵˴ϴ�.<br>
							�� �ɼ��� üũ�Ͻø� �����Ḧ ������ ��� �δ��Ͽ� ����� 100%�� �����̳ʿ��� ���޵˴ϴ�.<br>
							�����̳� �������� ���� �� �ִ� �ɼ��Դϴ�
						</div>
					</div>
					<!--��ݿɼ�-->

					<!--ȫ�� �� ���� �ɼ�-->
					<div class="optionList">
						<div class="optionList_title">ȫ�� �� ���� �ɼ�</div>
						<div class="est_option option_upperPose">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="upperPose">
								<label for="upperPose"></label> &nbsp;
								<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-23.png"><strong>��ܳ���
									�ɼ�</strong> <span class="est_option_price">(��� ������ �Ƿ��� �δ�)</span>
							</div>
							<div>
								<div class="est_option_text">������ ���׽�Ʈ�� ����Ʈ �ֻ����� ��ġ�ϰ� �Ǿ�
									�ٸ� ���׽�Ʈ���� ���� ���� ����˴ϴ�.</div>
							</div>
						</div>
						<div class="est_option">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="highlight">
								<label for="highlight"></label> &nbsp;
									<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-103.png">
								<strong>���̶���Ʈ</strong> <span class="est_option_price">(+ 50,000 )</span>
							</div>
							<div>
								<div class="est_option_text">���׽�Ʈ ��Ͽ��� ������ �׵θ��� ���̶���Ʈ �Ǿ�
									ǥ�õ˴ϴ�. ���� ���� �����̳��� ������ ������� �� �ֽ��ϴ�.</div>
							</div>
						</div>
						<div class="est_option">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="secret"><label
									for="secret"></label> &nbsp;<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-3002.png"> <strong>��ũ��
									���׽�Ʈ</strong> <span class="est_option_price">(+ 100,000 )</span>
							</div>
							<div>
								<div class="est_option_text">���������༭(NDA)�� ������ �����̳� ȸ����
									���׽�Ʈ�� �� �� �ֽ��ϴ�. ����, ���̹� ���� ���а� ��Ʈ������������ ������� �ʽ��ϴ�. �ٸ� ������ �켱��
									�ǹǷ� ���, ���̽���, �������� ���� ȫ���� �Ұ����մϴ�.</div>
							</div>
						</div>
						<div class="est_option secret_disabled">
							<div class="est_option_title ">
								<input type="checkbox" name="optionBox" id="banner"><label
									for="banner"></label> &nbsp;<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-215.png"> <strong>ȫ��
									��� ����*1�� </strong><span class="est_option_price">(+ 100,000 )</span>
							</div>
							<div>
								<div class="est_option_text">���׽�Ʈ ����Ʈ ��ܿ� ������ ȫ�� ��ʸ� �����Ͽ�
									�����̳� �������� ũ�� ���Դϴ�.</div>
							</div>
						</div>
						<div class="est_option secret_disabled">
							<div class="est_option_title ">
								<input type="checkbox" name="optionBox" id="outter"><label
									for="outter"></label> &nbsp;<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-24.png"> <strong>���̽���
									/ ������ Ŀ�´�Ƽ ȫ��</strong> <span class="est_option_price">( ���� )</span>
							</div>
							<div>
								<div class="est_option_text">����ҽ̿��� �ܺ� ������ Ŀ�´�Ƽ�� ���̽��Ͽ�
									������ ���׽�Ʈ�� ȫ���ص帳�ϴ�.</div>
							</div>
						</div>
						<div class="est_option secret_disabled">
							<div class="est_option_title">
								<input type="checkbox" name="optionBox" id="sendingEmail">
								<label for="sendingEmail"></label> &nbsp;<img
									src="<%=request.getContextPath()%>/resource/img/estimate/ic-26.png"> <strong>�̸��� �������� ȫ��</strong><span
									class="est_option_price">( ���� )</span>
							</div>
							<div>
								<div class="est_option_text">���� �����ϸ��� �����̳� ȸ������ �߼۵Ǵ� �������Ϳ�
									������ ���׽�Ʈ�� ȫ���ص帳�ϴ�.</div>
							</div>
						</div>
					</div>
					<!--ȫ�� �� ���� �ɼ�-->
				</div>
			</div>
		</div>
		<!--�߰��ɼ�-->


		<div class="contestTotal">
			<div class="row">
				<div class="col-sm-4 est_category_title">
					<img src="<%=request.getContextPath()%>/resource/img/estimate/ic-arrowpoint.png"> Total
				</div>
				<div class="col-sm-8">
					<div class="est_total">
						<div class="contestPriceList">
							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">�� ���</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="1,200,000"
											readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">������ ��Ϻ�</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="100,000"
											readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">��� ������</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="" readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">�߰� �ɼ�</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="" readonly>
									</div>
								</div>
							</div>

							<div>
								<div class="row">
									<div class="col-sm-6 est_price_title">�ΰ���ġ��</div>
									<div class="col-sm-6 est_price_content">
										<input type="text" class="totalReadonly" value="130,000"
											readonly>
									</div>
								</div>
							</div>

							<div class="est_totalprice">
								<div class="row">
									<div class="col-sm-6 est_price_title">
										<br>
									</div>
									<div class=" col-sm-6 est_price_total">
										�հ� <input type="text" class="totalReadonly total_price_color"
											value="1,430,000" readonly>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="contestFooter">
			<div class="row">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<button type="button" class="btn btn-primary btn-lg btn-block">
						&lt; ����</button>
				</div>
				<div class="col-lg-4">
					<button type="button" class="btn btn-secondary btn-lg btn-block">����
						&gt;</button>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>