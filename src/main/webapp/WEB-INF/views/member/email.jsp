<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div id="background_div">
        <p id="upper_text">라우드소싱 회원가입<br><span id="upper_text02">아래 간단한 내용만 입력하면, 회원가입이 완료됩니다!</span></p>

        <!--버튼 2개-->
        <div class="d-flex justify-content-center" id="two_btn_back">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="pills-home-tab" onclick="requester()">아이디어가 필요하세요?<br>
                    <span id="font123">의뢰자로 가입하기</span></a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="pills-profile-tab" onclick="participants()">공모전에 참여하려면?<br>
                    <span id="font123">디자이너로 가입하기</span></a>
                </li>
            </ul>
        </div>
		<script type="text/javascript">
			function requester(){
				document.getElementById("pro_box_text").innerHTML = "의뢰자 고객으로 선택되었습니다.";
				document.getElementById("pro_box_text2").innerHTML = "디자이너 회원이시라면, '디자이너로 가입하기'를 선택해주세요.";
				document.getElementById("userclass").value = "requester";
			}
			function participants(){
				document.getElementById("pro_box_text").innerHTML = "디자이너 고객으로 선택되었습니다.";
				document.getElementById("pro_box_text2").innerHTML = "의뢰자 회원이시라면, '의뢰자로 가입하기'를 선택해주세요.";
				document.getElementById("userclass").value = "participants";
			}
			function isSame(){
				var pwd1 = $("#passwd1").val();
				var pwd2 = $("#passwd2").val();
				if(pwd1 !='' && pwd2 == ''){
					null;
				}else if(pwd1 !=""|| pwd2 != ""){
					if(pwd1 == pwd2){
						 document.getElementById('alert').innerHTML = '비밀번호가 일치합니다.';
						 document.getElementById('alert').style.color = 'blue';
					}else{
						document.getElementById('alert').innerHTML = '비밀번호가 일치하지 않습니다.';
						document.getElementById('alert').style.color = 'red';
					}
				}
			}
		</script>


        
        <!--버튼에대한 내용-->
        <div class="d-flex justify-content-center" id="signup_div">
            <!--의뢰자 내용-->
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home">
                	<form action="insert.do" method="post">
                    <div class="d-flex justify-content-center" id="producer_main">
                        <div id="producer_up_box">
                            	<span id="pro_box_text">의뢰자 고객으로 선택되었습니다.</span><br>
                            	<p id="pro_box_text2">디자이너 회원이시라면, '디자이너로 가입하기'를 선택해주세요.</p>
                            	<input id="userclass" name="userclass" style="display:none" value="requester">
                        </div>
                    </div>
					
                    <div class="d-flex justify-content-center" id="producer_main">
                        <div id="sign_box">
                       		이메일
                            <input id="input_txt" type="text" name="email" class="form-control">
                        </div>
                    </div>
                    <div class="d-flex justify-content-center pw" id="producer_main">
                        <div id="sign_box">
                     		비밀번호
                            <input id="passwd1" type="password" name="passwd" class="form-control">
                        </div>
                    </div>
                    <div class="d-flex justify-content-center pw" id="producer_main">
                        <div id="sign_box">
                      		비밀번호 확인
                            <input id="passwd2" type="password" class="form-control" onchange="isSame()">
                            <span id="alert"></span>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center" id="producer_main">
                        <div id="sign_box">
                        	닉네임
                            <input id="input_txt" type="text" name="nickname" class="form-control">
                        </div>
                    </div>
                    <div class="d-flex justify-content-center" id="producer_main">
                        <div id="checkbox">
                            <p>
                            <span style="font-weight: bold;">전체약관 동의</span><br>
                        	ㅇㅏㅇㅣㄷㅣㅇㅓ 서비스 이용약관(필수)
                             </p>
                        </div>
                    </div>
                    <button type="submit">가입하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>