$(document).ready(function() {
	var categoryName = '브랜딩SET |';
	var contestTitle = 'RSTZ 로고 작업(기업로고)';
	var userId = 'userId';
	var userId_join = 'userId_join';
	var userName = 'userName';
	var contestContent = "RSTZ 는 Rolling Stonez, 즉 구르는 돌에는 이끼가 끼지 않는다는 슬로건 아래 설립될 예정인 스타트업으로 미디어 송출, 이벤트 대행, 콘텐츠 크리에이팅, 브랜디드 콘텐츠 제작 등의 비즈니스를 진행하려고 합니다. 방송국서 송출되는 PPL 이나 유튜브 콘텐츠 제작, 브랜디드 노출 캠페인 등 디지털 영상과 방송 네트워크를 활용한 비즈니스를 진행합니다.";
	var item_box_contestReward = "contestReward";
	var item_box_contestPeriod = "item_box_contestPeriod";
	var item_box_joinCount = "item_box_joinCount";
	var contestResult = "contestResult";

	$('#done_category').text(categoryName);
	$('#done_contestTitle').text(contestTitle);

	$('#contest_done_head_userId').text(userId);
	$('#contest_done_head_userName').text(userName);

	//document.getElementById("brief_item_content_1").value = bci4;
	$('#item_box_category').text(categoryName);
	$('#item_box_contestTitle').text(contestTitle);
	$('#item_box_userId').text(userId);
	$('#item_box_userName').text(userName);
	$('#item_box_contestContent').text(contestContent);
	$('#item_box_contestReward').text(item_box_contestReward);
	$('#item_box_contestPeriod').text(item_box_contestPeriod);
	$('#item_box_joinCount').text(item_box_joinCount);

	$('#item_box_optionImage').append("<img src='img/22_mimg.png'>");

	$('#item_box_2_category').text(categoryName);
	$('#item_box_2_contestTitle').text(contestTitle);
	$('#item_box_2_userId').text(userId);
	$('#item_box_2_userName').text(userName);
	$('#item_box_2_contestContent').text(contestContent);
	$('#item_box_2_contestReward').text(item_box_contestReward);
	$('#item_box_2_contestPeriod').text(item_box_contestPeriod);
	$('#item_box_2_joinCount').text(item_box_joinCount);

	$('#item_box_2_optionImage').append("<img src='img/22_mimg.png'>");

	// $("#brief_content_item_4").text("60이츠는 간편하게 어린이 간식이나 안주, 식사대용으로 먹을 수 있는 닭고기 식품을 판매하는 홈페이지입니다.연예인 붐 님의 캐릭터로 대중에게 친근하게 다가갈 수 있도록 캐릭터 디자인을 의뢰합니다.");

	$('#userId_join1').text(userId_join);
	$('#userId_join2').text(userId_join);
	$('#userId_join3').text(userId_join);
	$('#contestResult1').text(contestResult);
	$('#contestResult2').text(contestResult);
	$('#contestResult3').text(contestResult);

});