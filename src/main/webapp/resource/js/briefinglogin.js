function next(){
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
				document.getElementById("link").value = "launch/"+document.location.pathname.split("/")[1];
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
}