$(document).ready(function() {
	$('#mobile_button').on('click', function() {
		$('.modal-wrapper').removeClass('close');
		$('.modal-wrapper').addClass('open');
		$('#mobile_button').attr('style', 'display:none');
		$('#mobile_button_close').attr('style', 'display:block');
	});
	$('#mobile_button_close').on('click', function() {
		$('.modal-wrapper').removeClass('open');
		$('.modal-wrapper').addClass('close');
		$('#mobile_button_close').attr('style', 'display:none');
		$('#mobile_button').attr('style', 'display:block');
	});
});

var urlpath = "";
var pathname = document.location.pathname.split("/");
var link = "";
for (var i = 1; i < pathname.length; i++) {
	if (i != 1)
		link += "/";
	link += pathname[i];
	if (i == 1)
		continue;
	urlpath += "../";
}
function makecontest() {
		$.ajax({
			type : "POST",
			url : urlpath + "existContest.do",
			success: function(data){
				if(data != "false"){
					if(confirm("이미 임시저장중인 항목이 있습니다. 사용하시겠습니까?") == true){
						location.href=urlpath+"launch/"+data;
					}else{
						deleteContest();
						location.href=urlpath+"launch";
					}
				}else{
					location.href= urlpath+"launch";
				}
			}
		});
}
function deleteContest(){
	$.ajax({
		type:"POST",
		url : urlpath + "deleteContest.do",
		success: function(data){},
		error: function(error){alert(error)}
	});
}
function signin(){
	location.href = urlpath+"select";
}
function logout(){
	location.href = urlpath+"logout.do?link="+link;
}