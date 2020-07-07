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
    		var urlpath = "";
			var pathname = document.location.pathname.split("/");
			var link = "";
    		for(var i = 1;i <pathname.length;i++){
    			if(i != 1)
    				link += "/";
    			link += pathname[i];
    			if(i == 1)
    				continue;
    			urlpath += "../";
    		}
    			
			$.ajax({
				type : "POST",
				url : urlpath+"loginCheck.do",
				data : form_data,
				success : function(data){
					if(data){
	    				document.getElementById("link").value = link;
	    				$("#login").attr("action",urlpath+"login.do");
	    				$("#login").submit();
					}else{
						alert("아이디나 비밀번호가 맞지 않습니다.")
					}
				},
				error : function(error){
					alert(error);
				}
			});
    	});
    });