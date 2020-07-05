<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
	</script>
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/member/mailauth.css">
</head>
<body>
	 <div id="mail_head" class="d-flex justify-content-center">
        <p id="mail_head_txt">메일 인증이 <br>완료되었습니다!
            <br><span style="font-size: 20px;">ㅇㅏㅇㅣㄷㅣㅇㅓ와 함께<br>세상을 빛낼 아이디어를 소개해주세요!</span></p>
        <img src="image/idea_email.webp">
    </div>
    <div id="button_button" class="d-flex justify-content-center">
        <!-- Button One -->
        <c:choose>
        <c:when test="${userclass eq 'requester'}">
        <div class="btn-perspective" style="float: left;">
            <a href="launch"> <button class="btn btn-3d btn-one">컨테스트 개최하기</button></a>
        </div>
		</c:when>
        <!-- Button Two -->
        <c:when test="${userclass eq 'participant'}">
        	<div class="btn-perspective" style="float: left;">
            	<a href="#"><button class="btn btn-3d btn-two">컨테스트 참가하기</button></a>
        	</div>
        </c:when>
		</c:choose>
        <!-- Button Three -->
        <div class="btn-perspective">
            <a href="main"><button class="btn btn-3d btn-three">컨테스트 보러가기</button></a>
        </div>
    </div>
</body>
</html>