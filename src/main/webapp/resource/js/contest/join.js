$(document).ready(function () {
	var bci1 = "60이츠 '붐' 캐릭터디자인 의뢰";
	var bci2 = "쌤기획";
	var bci3 = "60이츠는 간편하게 어린이 간식이나 안주, 식사대용으로 먹을 수 있는 닭고기 식품을 판매하는 홈페이지입니다.연예인 '붐'님의 캐릭터로 대중에게 친근하게 다가갈 수 있도록 캐릭터 디자인을 의뢰합니다.";
	var bci4 = "* 공모주제 : 홍성군평생학습센터 브랜드 이미지 * 활용범위 : 홈페이지, 현수막, 배너, 안내판, 현판, 수료증 등 * 개발방향 : 평생교육사업 취지와 친근감을 주고 기억하기 쉬우며 학습 참여 동기를 유발할 수 있는 이미지, 온·오프라인 홍보에 응용이 가능하고 사업 현장에 적용할 수 있는 단순하고 간결한 디자인";

	document.getElementById("brief_item_content_1").value = bci4;

	// $("#brief_content_item_4").text("60이츠는 간편하게 어린이 간식이나 안주, 식사대용으로 먹을 수 있는 닭고기 식품을 판매하는 홈페이지입니다.연예인 붐 님의 캐릭터로 대중에게 친근하게 다가갈 수 있도록 캐릭터 디자인을 의뢰합니다.");

	$(function () {
		$('.normal').autosize();
		$('.animated').autosize({append: "\n"});
	});

	$('#join_step1_check').on('click', function(){
		location.href="http://localhost:9097/Project/contest_join_2.html";

	});
	
});