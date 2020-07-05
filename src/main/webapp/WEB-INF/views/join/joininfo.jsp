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
	    $('#summernote').summernote('code', '${notice.content}');
	    function uploadImageFile(file, editor){
	    	data = new FormData();
	    	data.append("file", file);
	    	$.ajax({
	    		data: data,
	    		type: "POST",
	    		url: "uploadImageJoin",
	    		contentType: false,
	    		processData: false,
	    		success: function(data){
	    			$(editor).summernote('editor.insertImage',data.url);
	    		}
	    	});
	    }
	    function deleteFile(src){
	    	alert(src);
	    }
    });
    function submit(){
    	var form = document.getElementById("content");
    	var content = form.content.value;
    	alert(content);
    	form.submit();
    }
    
    </script>
</head>
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
								<img src="img/thumbimg_logo.png" alt="">
							</div>
							<div class="col-sm-3 brief_item_category">
								<input type="text" class="item_categoty" readonly value="브랜드 SET |">
							</div>
							<div class="col-sm-7 brief_item_title">
								<input type="text" class="item_title" readonly value="홍성군 평생교육 브랜드 로고 공모전(홍성군평생학습센터) ">
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
							<input type="text" class="item_price_text" readonly value="1등: 500만원 / 2등: 100만원">
						</div>
						<div class="item_period">
							<input type="text" class="item_period_text" readonly value="남은기간: 13일(~07/14 24:00)">
						</div>
						<div class="item_visitCount">
							<input type="text" class="item_visitCount_text" readonly value="조회수 : 9000">
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
						<img class="join_step_2_img" src="img/img_step02.png" alt="">
					</div>
					<div class="col-lg-3"></div>
				</div>
			</div>
				<div class="join_step_2_editor">
					<div class="row">
						<div class="col-lg-1"></div>
						<div class="col-lg-10">
							<div id="join_editor">
								<form id="content" method="post" action="viewjoininfo">
									<textarea id="summernote" name="content"></textarea>
								</form>
							</div>
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
</html>