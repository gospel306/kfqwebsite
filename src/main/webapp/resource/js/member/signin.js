function requester() {
	document.getElementById("pro_box_text").innerHTML = "의뢰자 고객으로 선택되었습니다.";
	document.getElementById("pro_box_text2").innerHTML = "디자이너 회원이시라면, '디자이너로 가입하기'를 선택해주세요.";
	document.getElementById("userclass").value = "requester";
}
function participants() {
	document.getElementById("pro_box_text").innerHTML = "디자이너 고객으로 선택되었습니다.";
	document.getElementById("pro_box_text2").innerHTML = "의뢰자 회원이시라면, '의뢰자로 가입하기'를 선택해주세요.";
	document.getElementById("userclass").value = "participants";
}
function isSame() {
	var pwd1 = $("#passwd1").val();
	var pwd2 = $("#passwd2").val();
	if(pwd1 != '' && pwd2 == '') {
		null;
	} else if (pwd1 != "" || pwd2 != "") {
		if (pwd1 == pwd2) {
			document.getElementById('alert').innerHTML = '비밀번호가 일치합니다.';
			document.getElementById('alert').style.color = 'blue';
		} else {
			document.getElementById('alert').innerHTML = '비밀번호가 일치하지 않습니다.';
			document.getElementById('alert').style.color = 'red';
		}
	}
}