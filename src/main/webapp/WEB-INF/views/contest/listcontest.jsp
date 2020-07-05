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
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
	<style>
        #main_top {
            width: 1550px;
            height: 200px;
            background-color: #ebeff2
        }

        #pills-tab123 {
            padding-top: 20px;
        }
    </style>
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
	   <div id="main_top">
        <p style="font-size: 23px; font-weight: bold; margin-left: 17%; padding-top: 70px;">���׽�Ʈ ����<span
                style="font-size: 18px;"> - �������� ���׽�Ʈ</span></p>
        <ul class="nav nav-pills mb-3" id="pills-tab123" role="tablist" style="background-color:#ededed;">
            <li class="nav-item" role="presentation"
                style="margin-right: 10px; width: auto; background-color:white; margin-left: 17%;">
                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
                    aria-controls="pills-home" aria-selected="true"
                    style="border-top:2px solid black; width: 140px; background-color: white;">
                    <p style="color:black; font-size: 13px; font-weight: bold; padding-top: 4px; text-align: center;">
                        �������� ���׽�Ʈ</p>
                </a>
            </li>
            <li class="nav-item" role="presentation" style="margin-right: 10px;background-color:#64636d; ">
                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab"
                    aria-controls="pills-profile" aria-selected="false"
                    style="border-top:2px solid black; width: 140px;">
                    <p style="color:white; font-size: 13px; font-weight: bold; padding-top: 4px; text-align: center;">
                        �ɻ����� ���׽�Ʈ</p>
                </a>
            </li>
            <li class="nav-item" role="presentation" style="margin-right: 10px; background-color:#64636d;">
                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab"
                    aria-controls="pills-contact" aria-selected="false"
                    style="border-top:2px solid black; width: 140px;">
                    <p style="color:white; font-size: 13px; font-weight: bold; padding-top: 4px; text-align: center;">
                        ����� ���׽�Ʈ</p>
                </a>
            </li>
        </ul>

        <div style="background-color: white; width: 1024px; height: 385px; margin-left:17.5%; margin-right: 40px; float: left; margin-top: 40px;;">


            <div class="dropdown" style="float: left;">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ��ü ī�װ����� (#144)
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <a class="dropdown-item" href="#">��ü ī�װ�����(#144)</a>
                    <a class="dropdown-item" href="#">�ΰ� ������</a>
                    <a class="dropdown-item" href="#">��Ű�� ������</a>
                    <a class="dropdown-item" href="#">��ǰ ������</a>
                    <a class="dropdown-item" href="#">��/�� ������</a>
                    <a class="dropdown-item" href="#">���̹�/���̵��</a>
                    <a class="dropdown-item" href="#">ĳ���� ������</a>
                    <a class="dropdown-item" href="#">����/��Ÿ</a>
                </div>
            </div>

            <div class="dropdown" style="float: left; margin: 0 10px 0 10px;">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ��ü ��������(#144)
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                    <a class="dropdown-item" href="#">���� ��ü</a>
                    <a class="dropdown-item" href="#">�Ĵ�/ī��</a>
                    <a class="dropdown-item" href="#">��ǰ/�ǰ�</a>
                    <a class="dropdown-item" href="#">IT/�̵��</a>
                    <a class="dropdown-item" href="#">��Ƽ/�м�</a>
                    <a class="dropdown-item" href="#">����</a>
                    <a class="dropdown-item" href="#">�ֿϵ���</a>
                    <a class="dropdown-item" href="#">����/����</a>
                    <a class="dropdown-item" href="#">��ɱ��/�������</a>
                    <a class="dropdown-item" href="#">�Ϲ�/��Ÿ</a>
                </div>
            </div>

            <div class="dropdown" style="float: left;">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton3"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    �⺻ ����
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton3">
                    <a class="dropdown-item" href="#">�⺻ ����</a>
                    <a class="dropdown-item" href="#">�����ӹ� �� ����</a>
                    <a class="dropdown-item" href="#">�ֽŵ�� �� ����</a>
                    <a class="dropdown-item" href="#">������ �� ����</a>
                    <a class="dropdown-item" href="#">�ѻ�� �� ����</a>
                    <a class="dropdown-item" href="#">��ȸ �� ����</a>
                </div>
            </div>
            <div class="input-group flex-nowrap mr-3 bd-highlight" id="btn_search" style="width: 150px; margin-left: 700px;">
                <div class="input-group-prepend">
                    <span class="input-group-text input_Search_icon" style="padding-top: 6px;" id="addon-wrapping"><i
                            class="material-icons">search</i></span>
                </div>
                <input type="text" class="form-control input_Search" placeholder="Search" aria-label="Username"
                    aria-describedby="addon-wrapping">
            </div>
            <div class="tab-content" id="pills-tabContent">

                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    123
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                    14
                </div>
                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                    .51
                </div>
            </div>
        </div>
    </div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>