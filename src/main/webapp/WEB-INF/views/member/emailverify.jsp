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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   	
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/resource/js/goTop.js"></script>
    
    <!-- custom css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/emailverify.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
</head>
<body>
	<div class="emailContent">
        <div class="emailTopimg">
            <img src="img/200_idea2.png">
        </div>
        <div  class="emailTitle">
            <p> 인증메일 발송이 완료되었습니다.</p>
        </div>
        <div class="emailP">
            <p> 메일을 확인하시고 등록을 완료하세요 <br>

                혹시 메일이 도착하지 않는다면 스팸함을 확인해주세요.
            </p>
        </div>

        <div>
            <div class="row emailBtn">
                <div class="col-lg-3"></div>
                <div class=" col-lg-3"> <button type="button" class="btn btn-primary btn-lg btn-block">e-mail 재전송</button></div>
                <div class=" col-lg-3"><button type="button" class="btn btn-secondary btn-lg btn-block">e-mail 설정 변경</button></div>
                <div class="col-lg-3"></div>
            </div>
        </div>
    </div>
</body>
</html>