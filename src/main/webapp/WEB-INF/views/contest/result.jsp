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
			<h2>������ ���׽�Ʈ�� �����մϴ�.</h2>	
			<div class="header">
				 <div class="row">
				    <div class="col">
				    	1. ī�װ� ����
				    	<hr class="hr1">
				    </div>
				    <div class="col">
				    	2. �긮�� �ۼ�
				    	<hr class="hr1">
				    	</div>
				    <div class="col">
				    	3. ���&�ɼ� ����
				    	<hr class="hr1">
				    </div>
				    <div class="col" style="color:red;">
				    	4. ���� �� ��ϿϷ�
				    	<hr class="hr1" style="background-color:red;">	
				    </div>
				 </div>
			</div>
			 
			 <div class="my-5" style="background-color:#EAEAEA; width:100%;">
				<div class="inner">
					<div class="title">
						<span class="text_type">Step 4</span><br>
						<p class="text_add1">���� �� ��� �Ϸ�</p>
					</div>
					
					<hr size="1" align="center" style="margin-top:30px;">
					
					<div class="row">
					    <div class="col-sm-5">
					    	<div class="title">
								<span class="text_type">Total</span><br>
								<p class="text_add1">�����Ͻ� �� �ݾ��Դϴ�.</p>
							</div>
					    </div>
					    <div class="col-sm-7">
					   	 	<div class="total_money">
					    		<ul>
					    			<li>
					    				<div style="font-weight:bold; padding:8px 0;">���׽�Ʈ �׸�</div>
					    				<div style="padding:8px 0;">���̹�/���̵�� | �����̾� ��Ű�� <span style="color:red;">(ȯ�ҺҰ�)</span></div>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>��� 1��</span>
					    					<span class="pp">1,200,000��</span>
					    				</div>
					    				<div style="padding:8px 0;">
					    					<span>������ ��Ϻ�</span>
					    					<span class="pp">100,000��</span>
					    				</div>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>���̽���/������ Ŀ�´�Ƽ ȫ��</span>
					    					<span class="pp">0��</span>
					    				</div>
					    				<div style="padding:8px 0;">
					    					<span>��� ���� �ɼ�</span>
					    					<span class="pp">0��</span>
					    				</div>
					    				<div style="padding:8px 0;">
					    					<span>�̸��� �������� ȫ��</span>
					    					<span class="pp">0��</span>
					    				</div>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>�������</span>
					    					<span class="pp">��ϵ� ������ �����ϴ�.</span>
					    				</div>
					    			</li>
					    			<li>
					    				<div style="padding:8px 0;">
					    					<span>�ΰ���(10%)</span>
					    					<span class="pp">130,000��</span>
					    				</div>
					    			</li>
					    			<li style="border-bottom:0;">
					    				<div style="padding:8px 0;">
					    					<span>�հ�</span>
					    					<span class="pp" style="color:red;">1,430,000��</span>
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
								<p class="text_add1">���� ���� �Է�</p>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<div class="etcbox" style="margin-top:20px;">
					    		<ul>
					    			<li style="border-bottom:0; padding:0 0;'">
					    				<span style="font-weight:bold; font-size:14px; padding:8px 0;">��������</span>
					    				<div style="float:right;">
					    					<select>
					    						<option>�ſ�ī��</option>
					    						<option>�������Ա�</option>
					    						<option>�ǽð�������ü</option>
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
								<p class="text_add1">ȯ�ұ��� �� ��� ����</p>
							</div>
					    </div>
					    <div class="col-sm-7">
					    	<div class="etcbox">
					    		<ul>
					    			<li style="border-bottom:0; padding:0 0;'">
					    				<img src="imag\ban.png" alt="...">
					    				<span style="font-weight:bold; font-size:14px; padding:8px 0;">ȯ�� �Ұ� ���׽�Ʈ</span>
					    				<span style="float:right; font-size:14px; color:#666666; font-weight:bold; padding:2px 0;">
					    				<img src="imag\check.png" alt="..." style="margin-right:3px;">���̹� ���׽�Ʈ</span>
					    			</li>
					    		</ul>
					    	</div>
					    	<span class="text_add" style="color:red;">* ���̹�/���̵�� ���׽�Ʈ�� ���̵� ����� ������ �־� � ��쿡�� ȯ���� �Ұ����մϴ�.</span>
					    	<div class="refund">
					    		<p class="text_add" style="margin-bottom:5px;">1. �ڹ����� ����</p>
					    		<span class="text_add2">������ ���׽�Ʈ�� ������ �����̳� ȸ������ �ڹ������� �����ϴ� �ý����Դϴ�.
					    		 ���� �� ���� �����̳ʰ� ������ ���� Ȯ���Ǿ� ���� �ʽ��ϴ�.
					    		  ��ݰ� �۾����� ���� 3~5���� �������� ������ ���� ���׽�Ʈ���� �����մϴ�.
					    		   ���� Ȱ���� ������ ���ؼ��� �ֱ� ����� ��ʵ��� �����Ͽ�, �䱸 �۾����� ��� �Ը� �������� Ȯ�����ּ���.</span>
					    		<p class="text_add" style="margin-bottom:5px; margin-top:20px;">2. ���� ���� �� ȯ��</p>
					    		<span class="text_add2">���׽�Ʈ�� ����� ����� ���·� ���ֵǾ�, �� ����� ���� �����̳� ȸ������ �����մϴ�. 
					    		���׽�Ʈ ������ ���� �ð��� ����� �ҿ�Ǳ� ������ ������ ���� ������� �̸� ��ӵ� ����� ȯ���� �Ұ����մϴ�. 
					    		���ϴ� ��ǰ�� ��� �ɻ縦 �����Ͻ� ���, ����� �����Ͻ� �����̳ʴԵ鲲 1/N���� ���޵˴ϴ�. 
					    		(�� '�����, �����̾��� ��Ű��'�� ��� 50% ȯ���� �����մϴ�.)</span>
					    	</div>
					    	<div class="agree_check">
					    		<div class="form-check" style="padding-left:0;">
									  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
									  <label class="form-check-label" for="defaultCheck1" style="font-size:16px; font-weight:bold;">
									  	&ensp;�� ������ Ȯ���Ͽ����� ������ �����մϴ�. <span style="color:red;">(�ʼ�)</span>
									  </label>
								</div>
					    	</div>
					    </div>
					</div>
					
					<hr size="1" align="center" style="margin-top:30px;">
					
					<button type="button" onclick="location.href='#'" class="subtype1">�����ϱ�</button>
				</div>
			</div>
					
		</div>
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>