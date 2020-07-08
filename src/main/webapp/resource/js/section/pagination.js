//이전 버튼 이벤트

function fn_prev(page, range, rangeSize) {
	var page = ((range - 2) * rangeSize) + 1;
	var urlpath = "";
	var pathname = document.location.pathname.split("/");
	var link = "";
	for (var i = 1; i < pathname.length; i++) {
		if (i != 1)
			link += "/";
		if(i == pathname.length-1 && pathname[pathname.length-1].includes("p-")){
			link = link.substring(0,link.length-1);
		}else{
			alert(pathname[i]);
			link += pathname[i];
		}
		if (i == 1)
			continue;
		urlpath += "../";
	}
	var url = urlpath+link+"p-"+ page;
	alert(url);
	location.href = url;
}
//페이지 번호 클릭
function fn_pagination(page) {
	var urlpath = "";
	var pathname = document.location.pathname.split("/");
	var link = "";
	for (var i = 1; i < pathname.length; i++) {
		if (i != 1)
			link += "/";
		if(i == pathname.length-1 && pathname[pathname.length-1].includes("p-")){
			link = link.substring(0,link.length-1);
		}else{
			link += pathname[i];
		}
		if (i == 1)
			continue;
		urlpath += "../";
	}
	var url = urlpath+link+"/p-"+ page;
	location.href = url;	
}
//다음 버튼 이벤트
function fn_next(page, range, rangeSize) {
	var page = parseInt((range * rangeSize)) + 1;
	var urlpath = "";
	var pathname = document.location.pathname.split("/");
	var link = "";
	for (var i = 1; i < pathname.length; i++) {
		if (i != 1)
			link += "/";
		if(i == pathname.length-1 && pathname[pathname.length-1].includes("p-")){
			link = link.substring(0,link.length-1);
		}else{
			link += pathname[i];
		}
		if (i == 1)
			continue;
		urlpath += "../";
	}
	var url = urlpath+link+"p-"+ page;
	alert(url);
	location.href = url;
}