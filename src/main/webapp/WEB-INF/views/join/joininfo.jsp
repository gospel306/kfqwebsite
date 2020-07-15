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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/contest_join.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/contest/joininfo.css">
	<script src="<%=request.getContextPath()%>/resource/js/contest/contestBrief.js"></script>
	
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

    <script>
    $(document).ready(function(){
	    $('#summernote').summernote({    
	        tabsize: 2,
	        minHeight: 300,
	        maxHeight: null,
	        focus: true,
	        lang: 'ko-KR',
	        callbacks:{
	        	onImageUpload: function(files){
	        		uploadImageFile(files[0],this);
	        	},
	        	onMediaDelete : function(target){
	        		deleteFile(target[0].src);
	        	}
	        }
	        
	    });
	    $('#summernote').summernote('code', '${work.content}');
	    function uploadImageFile(file, editor){
	    	data = new FormData();
	    	data.append("file", file);
	    	data.append("title",$('#title').val())
	    	$.ajax({
	    		data: data,
	    		type: "POST",
	    		url: "uploadImageJoin",
	    		contentType: false,
	    		processData: false,
	    		success: function(data){
	    			$(editor).summernote('editor.insertImage',data.url);
	    			$('#imageBoard > ul').append('<div class="summernoteimg"><img src="'+data.url+'" width="50%" height="auto"/></div>');
	    		}
	    	});
	    }
	    function deleteFile(src){
	    	alert(src);
	    }
    });
    function submit(){
    	$.ajax({
    		type : "POST",
			url : "../../../titleCheck.do",
			data : $("#title").val(),
			success : function(data){
				if(data == "false"){
    				alert("이미 같은 제목이 있습니다. 다른걸로 바꿔주세요.");
				}
			}
    	});
    	var form = document.getElementById("content");
    	var content = form.content.value;
    	form.submit();
    }
    
	$(document).ready(function(){
		var myFile;
		$("#file").on("change", function (e) {
			var file = e.target.files[0];
			if(!valideImageType(file)) { 
			    alert("invalide image file type");
			    return;
			}
			myfile = file;
			$(".remove").remove();
			$(".imageThumb").remove();
			removeFile.bind(null, file);
			$('<div class="pip">' + '<span class="remove">X</span>' +
					'<img class="imageThumb" ' +
					'src="' + URL.createObjectURL(file) + '" ' +
					'title="' + file.name + '"/>' +
					'<br/>' +
					'</div>')
					.insertAfter("#file")
					.find(".remove").click(removeFile.bind(null, file));
		});
		function valideImageType(image) {
			  const result = ([ 'image/jpeg',
			                    'image/png',
			                    'image/jpg' ].indexOf(image.type) > -1);
			  return result;
			}
		function removeFile(file, evt) {
			$(evt.target).parent(".pip").remove();
		}
	});
	
    
    </script>
</head>
<header>
	<jsp:include page="../section/header.jsp"></jsp:include>
</header>
<body>
	<div class="first_layout">
		<!--main-->
		<div class="main">
			<!-- contest list item-->
			<div class="contest_list_item">
				<div class="row">
					<div class="col-lg-8">
						<div class="row">
							<div class="col-sm-2 brief_item_img">
								<img src="<%=request.getContextPath()%>/${contest.imgurl}" style="width:80px;height:80px" alt="">
							</div>
							<div class="col-sm-3 brief_item_category">
								<div class="item_categoty">
									${contest.contesttype}
								</div>
							</div>
							<div class="col-sm-7 brief_item_title">
								<div class="item_title">
									${contest.title}(${contest.company})
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 brief_item_content">
								<div class="brief_content_item_text_4 form-control animated" style="border:none" id="brief_item_content_1">
									${contest.serviceinfo }
                                 </div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 item_box_tail">
						<div class="item_price">
							<div class="item_price_text">
								1등: ${contest.firstprize}만원
								<c:if test="${contest.secondprize ne 0}">
									/ 2등: ${contest.secondprize}
									<c:if test="${contest.thirdprize ne 0}">
										/ 3등: ${contest.thirdprize}
									</c:if>
								</c:if>
							</div>
						</div>
						<div class="item_period">
							<div class="item_period_text">
							남은기간: ${contest.day}일(~${contest.enddate})
							</div>
						</div>
						<div class="item_visitCount">
							<div class="item_visitCount_text">
								조회수 : ${contest.views}
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- contest list item-->
			<div class="join_step_2" id="join_step_2">
			<div class="join_step_2_top">
				<div class="row">
					<div class="col-lg-3"></div>
					<div class="col-lg-6">
						<img class="join_step_2_img img" src="<%=request.getContextPath()%>/resource/img/contest/img_step02.png" alt="">
					</div>
					<div class="col-lg-3"></div>
				</div>
			</div>
				<div class="join_step_2_editor">
					<div class="row">
						<div class="col-lg-1"></div>
						<div class="col-lg-10">
							<form id="content" action="viewjoininfo" method="post" enctype="multipart/form-data">
							<div class="join_title">
								<div class="join_title_head">콘테스트 참여 작품</div>
								<input type="text" id="title" class="join_title_input" placeholder="제목" name="title">
							</div>
							<div id="join_editor">
								<textarea id="summernote" name="content"></textarea>
							</div>
							<div class="imgUP">
								<div>
									<span id="counter">썸네일 이미지</span>
								</div>
								<div class="row">
									<div class="col-lg-2">
										<div class="img_file_input">
											<input type="file" id="file" name="file" accept="image/*" /><br>
										</div>
									</div>
								</div>
							</div>
							</form>
							
						</div>
						<div class="col-lg-1"></div>
					</div>
				</div>
			</div>
			
            <div class="row">
                <div class="col-lg-4"></div>

                <div class="col-lg-4">
                    <button class="learn-more join_step1_checkbox" onclick="submit()"> 콘테스트 제출</button>
                </div>
                <div class="col-lg-4"></div>
            </div>
		</div>
		<!--main-->
	</div>
</body>
<footer>
	<jsp:include page="../section/footer.jsp"></jsp:include>
</footer>
</html>