//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
	var page = ((range - 2) * rangeSize) + 1;
	var url = "notice/p-"+ page;
	location.href = url;
}
//페이지 번호 클릭
function fn_pagination(page) {
	var url = "notice/p-"+page;
	location.href = url;	
}
//다음 버튼 이벤트
function fn_next(page, range, rangeSize) {
	var page = parseInt((range * rangeSize)) + 1;
	var url = "notice/p-" + page;
	location.href = url;
}