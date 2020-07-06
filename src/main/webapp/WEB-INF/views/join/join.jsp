<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<script src="<%=request.getContextPath()%>resource/js/contest/contestBrief.js"></script>
    <script src="<%=request.getContextPath() %>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/contest_join.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/join.css">
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
<div>
	<div class="first_layout">
		<!--main-->
		<div class="main">
			<!-- contest list item-->
			<div class="contest_list_item">
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-sm-2 brief_item_img">
								<img src="img/thumbimg_logo.png" alt="">
							</div>
							<div class="col-sm-3 brief_item_category">

								<input type="text" class="item_categoty" readonly value="�귣�� SET |">

							</div>

							<div class="col-sm-7 brief_item_title">
								<input type="text" class="item_title" readonly value="ȫ���� ������� �귣�� �ΰ� ������(ȫ��������н�����) ">

							</div>

						</div>

						<div class="row">
							<div class="col-sm-12 brief_item_content">
								<textarea class="brief_content_item_text_4 form-control animated" readonly
									id="brief_item_content_1">

                                 </textarea>
							</div>

						</div>

					</div>

					<div class="col-lg-4 item_box_tail">
						<div class="item_price">
							<input type="text" class="item_price_text" readonly value="1��: 500���� / 2��: 100����">

						</div>
						<div class="item_period">
							<input type="text" class="item_period_text" readonly value="�����Ⱓ: 13��(~07/14 24:00)">

						</div>
						<div class="item_visitCount">
							<input type="text" class="item_visitCount_text" readonly value="��ȸ�� : 9000">
						</div>


					</div>



				</div>
			</div>

			<!-- contest list item-->

			<!--join step1-->
			<div class="join_step1" id="join_step1">
				<div class="row">
					<div class="col-lg-3"></div>

					<div class="col-lg-6">
						<img class="join_step1_img" src="img/img_step01.png" alt="">
					</div>
					<div class="col-lg-3"></div>

				</div>

				<!--join step1-->

				<!--join step2-->
				<div class="join_step1_content">
					<div class="join_step1_content_img">
						<img src="img/join_info1.png" alt="">
					</div>

					<div class="join_step1_content_text">
						<span class="font_bold">1</span>. <span class="font_bold font_red">�ΰ�,
							�Ϸ���Ʈ ���׽�Ʈ���� ��� �����̹���, ��������, Ŭ����Ʈ�� ����ؼ��� �� �˴ϴ�.</span><br> ����� �����
						���ѵǴ� ��Ʈ, �����̹����� ��� ���� �� ������ ������ ��, ������ ���������� ������ �� �ֽ��ϴ�.<br>
						��ǰ�� ���� ��Ʈ, �����̹���, �������� ���� ����� ��쿡�� �ݵ�� �Ƿ��ڿ��� ���۱� ������ ������ Ȯ���ϰ�
						����ؾ߸� �մϴ�.

					</div>

					<div class="join_step1_content_text">
						<span class="font_bold"> 2</span>. <span class="font_bold font_red">���̵���� �Ǵ� �Ͽ� �� �������� �ٸ� �����̳���
							��ǰ��
							������ ������ �ǴܵǴ� ���,<br> ���̵��� �ش� �����̳��� Ȱ���� ���� Ȥ�� ������ �� �ֽ��ϴ�.
						</span><br> ���� ����� ���޵Ǿ��� ��� ���̵��� �����̳ʿ��� ���� ȯ���� �䱸�� �� ������,<br>
						�̿��� �Ļ��Ǵ� �Ƿ��ڿ��� ���� �� ���ؿ� ���ؼ��� ���ù��Կ� ���� �����̳ʿ��� ����� �ǹ��� �ο��� �� �ֽ��ϴ�.<br>
						<span class="font_bold"> �ݵ�� �ڽ��� �����θ� ����� �ּ���</span>
					</div>
					<div class="join_step1_content_text">
						<span class="font_bold"> 3</span>. <span class="font_bold">�ΰ�,
							�Ϸ���Ʈ</span> ���� �������� �ݵ�� <span class="font_bold font_red">���� ����</span>��
						�۾��ؾ� �մϴ�. �̸� ��� �� �̿����� ó���� �� �ֽ��ϴ�.
					</div>
					<div class="join_step1_content_text">
						<span class="font_bold"> 4</span>. �߸��� ���������� ���� ������ ������ �ָ����� �� ���,
						��� ���� �׸��� �������� �սǿ� ���� å���� �����̳� ���� �ֽ��ϴ�.

					</div>
					<div class="join_step1_content_text">
						<span class="font_bold"> 5</span>. ���̵��� ���� ��������� ���� �������� �Ƿ��ϴ� ����
						�����̳� �÷����Դϴ�.<br> ���� �����̳��� �þȿ� ���� �Ƿ����� �Ҹ��� ���������� �߻� ��, ���̵���
						���� �˼��� ���� ������ ���ѵ� �� �ֽ��ϴ�.
					</div>
				</div>
				<div class="join_step1_tail">
					<div class="join_step1_tail_text">
						* ���׽�Ʈ ���� �� �ݵ��<span class="font_bold"> [���� �� 11110ȣ -
							���۱ǹ�]</span>�� �ؼ��Ͽ��� �մϴ�.
					</div>
				</div>
				<div class="join_step1_check">
					<div class="row">
						<div class="col-lg-3"></div>
						<div class="col-lg-6">
							<button class="learn-more join_step1_checkbox"   id="join_step1_check" onclick="location.href='joininfo'">���� �Ͻʴϱ�?</button>
						</div>
						<div class="col-lg-3"></div>
					</div>
				</div>
			</div>
			<!--join step1-->
		</div>
		<!--main-->
	</div>
</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>