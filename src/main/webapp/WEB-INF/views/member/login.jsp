<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
        .logincontainer{
            width: 100%;
        }
        .btn_login{
        padding-top:6px;
        padding-left:12px;
        padding-right:12px;
        padding-bottom:6px;
        height:50px;
        }
        
        .btn{
        height:50px;
        }
        
        #exampleInputEmail1::placeholder {
                  color: #BDBDBD;
        }
        #exampleInputPassword1::placeholder {
                  color: #BDBDBD;
        }
    </style>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	$("#btnLogin").click(function(){
    		var useremail = $("#userEmail").val();
    		var userpasswd = $("#userPw").val();
    		if(useremail == ""){
    			alert("이메일을 입력하세요.");
    			$("#userEmail").focus();
    			return;
    		}
    		if(userPw==""){
    			alert("비밀번호를 입력하세요.");
    			$("#userPw").focus();
    			return;
    		}
    		var form_data ={
					email:useremail,
					passwd:userpasswd,
				};
			$.ajax({
				type : "POST",
				url : "loginCheck.do",
				data : form_data,
				success : function(data){
					if(data){
	    				document.getElementById("link").value = document.location.pathname.split("/")[1];
	    				document.login.action="login.do";
	    				document.login.submit();
					}else{
						alert("아이디나 비밀번호가 맞지 않습니다.")
					}
				},
				error : function(error){
					alert("error");
				}
			});
    	});
    		
    	
    });
    </script>
</head>
<body>
	<div class="container content_block logincontainer">     
        <div>
			<h1 class="font-weight-bold">로그인</h1>
			<form name="login" method="post">
				<div class="form-group mt-4">
			    	<input type="email" class="form-control rounded-0" style="height:50px" id="userEmail" name="email" aria-describedby="emailHelp" placeholder="아이디">
			  	</div>
			  	<div class="form-group">
			    	<input type="password" class="form-control rounded-0" style="height:50px" id="userPw" name="passwd" placeholder="비밀번호">
			  	</div>
			  	<div class="form-group form-check">
				  	<div class="row">
				    	<div class="col-6">
				    		<input type="checkbox" class="form-check-input" id="exampleCheck1">
			    			<label class="form-check-label" for="exampleCheck1" style="color:#747474">아이디 저장</label>
				    	</div>
				    	<div class="col-6" style="color:#747474">
				    		<a href="#" class="text-reset">아이디/비밀번호 찾기</a>
				    	</div>
				  	</div>
			  	</div>
			  	<input type="text" style="display:none" id="link" name="link">
			  	<button type="button" id="btnLogin" class="btn_login rounded-0 w-100 border-0 mt-3 text-white font-weight-bold" style="background-color:#3DB7CC">로그인</button>
			</form>
			<div class="row row-cols-4 my-3">
			    <div class="col-5"><HR size="1" align="center"></div>
			    <div class="col-2" style="color:#747474;">또는</div>
			    <div class="col-5"><HR size="1" align="center"></div>
			</div>
			  
			<button type="submit" class="btn btn-primary rounded-0 font-weight-bold w-100" style="background-color:#050099">
				<img src="<%=request.getContextPath()%>/resource/img/login/facebook.png" alt="...">
				  페이스북으로 로그인
			</button>
			    
			<div class="mt-4"></div>
			<div class="row">
				<div class="col">
				    <button type="submit" class="btn btn-light bg-transparent rounded-0 w-100" style="border: 1px solid #c9c9c9">
				    	<img src="<%=request.getContextPath()%>/resource/img/login/kakao.png" alt="...">
				    	&ensp;카카오
				    </button>
				</div>
				<div class="col">
					<button type="submit" class="btn btn-light bg-transparent rounded-0 w-100" style="border: 1px solid #c9c9c9">
						<img src="<%=request.getContextPath()%>/resource/img/login/naver.png" alt="..." style="width:35px; height:35px;">
						네이버
					</button>
				</div>
				<div class="w-100"></div>
				<div class="my-2"></div>
				<div class="col">
				    <button type="submit" class="btn btn-light bg-transparent rounded-0 w-100" style="border: 1px solid #c9c9c9">
				    	<img src="<%=request.getContextPath()%>/resource/img/login/google.png" alt="...">
				    	&ensp;구글
				    </button>
				</div>
				<div class="col">
				    <button type="submit" class="btn btn-light bg-transparent rounded-0 w-100" style="border: 1px solid #c9c9c9">
				    	<img src="<%=request.getContextPath()%>/resource/img/login/twitter.png" alt="...">
				    	&ensp;트위터
				    </button>
				</div>
			</div>
			<div class="mt-4">
				<p class="text-center">
					아직 FUNd 계정이 없나요?&emsp;
					<a href="#" style="color:#3DB7CC">
						<U>회원가입</U>
					</a>
				</p>
			</div>
		</div>
    </div>
</body>
</html>