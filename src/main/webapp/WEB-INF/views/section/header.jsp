<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	 <div class="border-bottom">
        <div class="nav_container">
            <nav class="navbar navbar-expand-lg navbar-light  bg-white">
                <a class="navbar-brand" href="#">ConVik</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto text-center">
                        <li class="nav-item">
                            <a class="nav-link" href="#">소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">공지</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="check()">펀딩하기</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">고객센터</a>
                        </li>
                    </ul>
                    <script type="text/javascript">
                    function check(){
                    	$.ajax({
                    		url: "existContest.do",
                    		type:"POST",
                    		data: null,
                    		dataType:'json',
                    		success:function(data){
                    			if(data == true){
                    				if(confirm("이미 작성하고 있는 페이지가 있습니다. 이어서 작성하시겠습니까?")==true){
                    					location.href = "launch";
                    				}else{
                    					location.href = "launch";
                    				}
                    			}else{
                    				location.href = "launch";
                    			}
                    		}
                    	});
                    }
                    </script>
                    <!-- 검색과 로그인 -->
                    <div class="">
                        <div class="pl-5 row">
                            <div class="col-12 col-lg-2 ml-auto"></div>
                            <div class="col-12 col-lg-6 ml-auto">
                                <div class="input-group flex-nowrap mr-3 bd-highlight" id="btn_search"
                                    style="min-width: 150px; ">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text input_Search_icon" style="padding-top: 6px;"
                                            id="addon-wrapping"><i class="material-icons">search</i></span>
                                    </div>
                                    <input type="text" class="form-control input_Search" placeholder="Search"
                                        aria-label="Username" aria-describedby="addon-wrapping">
                                </div>
                            </div>
                            <div class="col-12 col-lg-4 ml-auto">
                                <div class="d-flex justify-content-center">
                                	<c:choose>
                                	<c:when test="${empty sessionScope.useremail}">
                                    	<div class="pt-1" style="min-width: 70px;">
                                        	<a class="login_button" data-toggle="modal" data-target="#myModal" id="btn_signin" href="#" style="color:gray;">로그인</a>
                                    	</div>
                                    	<div class="pt-1" style="min-width: 80px;">
                                        	<a class="sginin_button" id="btn_signup" href="select" style="color:gray;">회원가입</a>
                                    	</div>
									</c:when>
									<c:otherwise>
										<div class="pt-1" style="min-width: 80px;">
											${sessionScope.nickname }
										</div>
										<div class="pt-1" style="min-width: 80px;">
											<form name="logout" action="logout.do" method="post" style="visibility:hidden">
												<input type="text" style="visibility:hidden;display:none" name="link">
											</form>
											<a class="logout_button" id="btn_logout" href="javascript:goPage()" style="color:gray;">로그아웃</a>
											<script type="text/javascript">
											function goPage(){
												var f = document.logout;
												f.link.value = document.location.pathname.split("/")[1];
												f.submit();
											}
											</script>
										</div>
									</c:otherwise>
                                    </c:choose>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="">
                        <button class="btn btn-outline-primary m-2 my-sm-0 btn_project" style="min-width: 130px;" type="button">프로젝트 신청</button>
                    </div>

                </div>
            </nav>
        </div>

        <!-- submenu -->
        <div class="">
            <ul class="nav justify-content-center">
                <li class="nav-item navsub">
                    <a class="nav-link submenu_item active" href="#">Q & A</a>
                </li>
                <li class="nav-item navsub">
                    <a class="nav-link submenu_item" href="#">1대1 문의</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="modal fade modal--align-top" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" style="width:auto;">
			<div class="modal-content">
				<div class="modal-header" style="border-bottom:none">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
				</div>
				<jsp:include page="../member/login.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>