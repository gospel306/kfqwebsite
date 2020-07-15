<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- icon css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   	
    <!-- custom js -->
    <script src="<%=request.getContextPath()%>/resource/js/contest/codePen_Card.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/contest/contestBrief.js"></script>
	<script src="<%=request.getContextPath()%>/resource/js/contest/contest_done.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/section/goTop.js"></script>
    
    <!-- custom css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/codePen_Card.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/contest_join.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/contest_done.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/custom.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick-theme.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/slick_custom.css">
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
	<jsp:include page="../section/goTop.jsp"></jsp:include>
</header>
<body>
	<div class="first_layout">
		<div class="contest_done_head">
			<div class="contest_done_head_category">
				<div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-3"></div>

					<div class="col-lg-2 done_category" id="done_category">${contest.contesttype }
					</div>
					<div class="col-lg-4 done_contestTitle" id="done_contestTitle">${contest.title }
					</div>
					<div class="col-lg-1"></div>
					<div class="col-lg-1"></div>
				</div>
			</div>
			<c:if test="${contest.winner ne 0 }">
			<div class="contest_done_head_title">
				<div class="row">
					<div class="col-lg-12 contest_done_head_title">디자인 콘테스트 우승작이 선정되었습니다.</div>
				</div>
			</div>
			<div class="contest_done_head_user">
				<div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-1"></div>
					<div class="col-lg-4 contest_done_head_userName" id='contest_done_head_userName'>${member.nickname}</div>
					<div class="col-lg-4 contest_done_head_userId" id='contest_done_head_userId'>
					</div>
					<div class="col-lg-1"></div>
					<div class="col-lg-1"></div>
				</div>
			</div>
			</c:if>
			<!-- Done contest list item-->

			<div class="contest_list_Doneitem contest_list_item_roof">
				<div class="row">
					<div class="col-lg-3 padding_zero">
						<img class="last_item_size"
							src="<%=request.getContextPath()%>/${contest.imgurl}" alt="">
					</div>
					<div class="col-lg-6">
						<div class="row padding_bottom">
							<div class="col-sm-1">
							</div>
							<div class="col-sm-3">
								<div class=" item_box_category" id="item_box_2_category">${contest.contesttype}
								</div>
								<div class="item_box_userId" id="item_box_2_userId">${contest.company}
								</div>
							</div>
							<div class="col-sm-7">
								<div class="item_box_contestTitle">
									<span id="item_box_2_contestTitle">${contest.title}</span>
								</div>
								<div class='item_box_userName' id='item_box_2_userName'>
								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-sm-12 item_box_contestContent" id="item_box_2_contestContent">
							${contest.serviceinfo}
							</div>
						</div>
					</div>
					<div class="col-lg-3 item_box_tail">
						<div class="item_box_contestReward item_content_tail_roof" id="item_box_2_contestReward">
							1등: ${contest.firstprize} 만원
                        <c:if test="${contest.secondprize ne 0}">
                        	/2등: ${contest.secondprize} 만원
                        </c:if>
                        <c:if test="${contest.thirdprize ne 0}">
                        	/3등: ${contest.thirdprize} 만원
                        </c:if>
						</div>
						<jsp:useBean id="now" class="java.util.Date"/>
						<fmt:parseDate value="${contest.enddate}" pattern="yyyy-MM-dd" var="endDate"/>
						<div class="item_box_contestPeriod item_content_tail_roof" id="item_box_2_contestPeriod">
						남은 기간: 
                    		<c:choose>
                    			<c:when test="${endDate > now}">
                    				${contest.day}일
                    			</c:when>
                    			<c:otherwise>
                    				심사중
                    			</c:otherwise>
                    		</c:choose>
                    		(~${contest.enddate})
						</div>
						<div class="item_box_joinCount item_content_tail_roof" id="item_box_2_joinCount">
						<c:choose>
                        	<c:when test="${endDate > now}">
                        		조회수: ${contest.views }
                        	</c:when>
                        	<c:otherwise>
                        		참여자: ${contest.people }
                        	</c:otherwise>
                        </c:choose>	
						</div>
					</div>
				</div>
			</div>
			<!-- Done contest list item-->
		</div>
		<div class="codePen_Card">
			<div class="row">
			<c:forEach items="${works}" var="work">
				<div class="col-lg-4">
					<figure class="snip1268 ">
						<div class="image">
							<img src="<%=request.getContextPath()%>/${work.thumbnailurl}"
								alt="sq-sample4" />
							<div class="icons ">
								<a href="#"><i class="ion-star"></i></a> <a href="#"> <i
									class="ion-share"></i></a> <a href="#"> <i class="ion-search"></i></a>
							</div>
							${work.id }
							<a href="#" onclick="show(${work.id})" class="add-to-cart" data-toggle="modal">Open</a>
						</div>
						<figcaption>
							<a href="#" class="userId_join">
								<h2 id="userId_join1"></h2>
							</a>

							<div class="contestResult" id="contestResult1">우승작</div>
						</figcaption>
					</figure>
				</div>
				</c:forEach>

				
			</div>
		</div>
	</div>
	<script>
	function show(id){
		var data = {id: id}
		$.ajax({
			type : "POST",
			url :"../../showwinner.do",
			data : data,
			success : function(data){
				console.log(data.work);
				$("#modaltitle").text(data.work.title);
				$("#modalcontent").html(data.work.content);
				$("#modelmeminfo").append("<a href='#'>design by</a><br>"+data.member.nickname);
				if(data.requester == true){
					$("#modalmakewinner").append("<button type='button' class='btn watch-contest-winner' onclick='makewinner("+
							data.work.contest_id+","+data.work.id+")'>우승작으로 선정하기</button>")
				}
				$("#exampleModal").modal("toggle");
			}
		});
	}
	$(document).ready(function() { $( "div.add-to-cart" ).click(function() { $('div.contet-img img').css({'width' : '100%'}); $('div.contet-img iframe').css({'width' : '100%'}); }); });
	function makewinner(contestid,winner){
		var newForm = $('<form></form>');
	  	newForm.attr("name","newForm");
	  	newForm.attr("method","post");
	  	newForm.attr("action","../../makewinner.do");
	  	  
	  	newForm.append($('<input/>',{type:'hidden',name:'contestid', value: contestid}));
	  	newForm.append($('<input/>',{type:'hidden',name:'workid', value: winner}));
	  	newForm.appendTo('body');
		newForm.submit();
	}
	</script>
	<div class="idea_modal">
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="d-flex justify-content-center">
                    <div class="modal-left">
                        <div class="modal-left-header">
                            <p>★ 콘테스트 우승작</p>
                            <div class="modal-left-header-name">
                                <a href="#" class="modal-left-header-contname" id="modaltitle"></a>
                                <button type="button" class="btn watch-contest">콘테스트 보기</button>
                            </div>
                        </div>
                        <div class="contet-img" id="modalcontent">
                            
                        </div>
                        <div>
                            <p
                                style="font-size: 15px; font-weight: bold; padding: 20px 0 4px 70px; border-bottom:2px solid black;">
                                작품 댓글 (##건)</p>
                        </div>
                        <div style="padding-left: 70px;">
                            <img src="image/pngwing.com.png" class="card-img-top" alt="..."
                                style="width: 55px; height: 55px;float: left;  margin-right: 10px;">
                            <form action="inputBook_check.jsp" method="post" style="float: left;">
                                <textarea cols="50" rows="8" name="CONTENT"
                                    style="height: 50px; float: left;"></textarea>
                                <input type="submit"
                                    style="float:left; background-color: black; color: white; width: 78px; height: 55px;"
                                    value="글쓰기">
                            </form>
                        </div>
                    </div>

                    <div class="modal-right">
                        <div class="modal-right-content">
                            <div class="modal-right-content-header">
                                <img src="image/pngwing.com.png" class="right-pic1">
                                <p class="modal-right-id" id="modelmeminfo"></p>
                            </div>
                            <div class="right-cust-info">
                                <p><span class="font1">우승</span>1회 | <span class="font1">상금</span> 30만원</p>
                                <div class="button-cover" id="modalmakewinner">
                                </div>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>