function option_initial() { // 옵션 부여된 속성들 초기화

	$(".primebox").removeClass("primebox_checked"); // 테두리 속성 초기화
	$(".goldbox").removeClass("goldbox_checked");
	$(".silverbox").removeClass("silverbox_checked");
	$(".bronzebox").removeClass("bronzebox_checked");

	$(".est_option").removeClass("est_option_disabled"); // 전체 투명도 50% 초기화
	$(".secret_disabled").removeClass("est_option_disabled"); // 실버 사용불가 옵션
																// 초기화

	$("#upperPose").removeAttr("disabled"); // 옵션박스 사용불가 초기화
	$("#highlight").removeAttr("disabled");
	$("#secret").removeAttr("disabled");
	$("#banner").removeAttr("disabled");
	$("#outter").removeAttr("disabled");
	$("#sendingEmail").removeAttr("disabled");

	$("input[name=optionBox]").prop("checked", false); // 모든 option박스 체크 해제
	$("input[name=periodeRadio]").prop("checked", false); // 모든 기간라디오 체크 해제
	$("#contestPeriod_week").prop("checked", true); // 기간라디오 초기값.

	$("#contestPeriod_week_add").removeAttr("disabled");
	$("#contestPeriod_3week_add").removeAttr("disabled");

};

$(document).ready(function() {
	$("#bronzecheck").on('click', function() {
		option_initial();

		if ($("#bronzecheck").prop('checked')) {
			$(".bronzebox").addClass("bronzebox_checked");
			$("#upperPose").attr("disabled", true);
			$("#highlight").attr("disabled", true);
			$("#secret").attr("disabled", true);
			$("#banner").attr("disabled", true);
			$("#outter").attr("disabled", true);
			$("#sendingEmail").attr("disabled", true);
			$(".est_option").addClass("est_option_disabled");
			$("#contestPeriod_week_add").attr("disabled", true);
			$("#contestPeriod_3week_add").attr("disabled", true);

		} else {
			$(".bronzebox").removeClass("bronzebox_checked");
			$("#upperPose").removeAttr("disabled");
			$("#highlight").removeAttr("disabled");
			$("#secret").removeAttr("disabled");
			$("#banner").removeAttr("disabled");
			$("#outter").removeAttr("disabled");
			$("#sendingEmail").removeAttr("disabled");
			$(".est_option").removeClass("est_option_disabled");
			$("#contestPeriod_week_add").removeAttr("disabled");
			$("#contestPeriod_3week_add").removeAttr("disabled");

		}

	});

	$("#silvercheck").on('click', function() {

		option_initial();

		if ($("#silvercheck").prop('checked')) {
			$(".silverbox").addClass("silverbox_checked");
			$("#banner").attr("disabled", true);
			$("#outter").attr("disabled", true);
			$("#sendingEmail").attr("disabled", true);
			$(".secret_disabled").addClass("est_option_disabled");
			$("#contestPeriod_3week_add").attr("disabled", true);

		} else {
			$(".silverbox").removeClass("silverbox_checked");
			$("#banner").removeAttr("disabled");
			$("#outter").removeAttr("disabled");
			$("#sendingEmail").removeAttr("disabled");
			$(".secret_disabled").removeClass("est_option_disabled");
			$("#contestPeriod_3week_add").removeAttr("disabled");

		}

	});

	$("#goldcheck").on('click', function() {

		option_initial();

		if ($("#goldcheck").prop('checked')) {
			$(".goldbox").addClass("goldbox_checked");
			$("#banner").attr("disabled", true);
			$("#outter").attr("disabled", true);
			$("#sendingEmail").attr("disabled", true);
			$("#contestPeriod_3week_add").attr("disabled", true);
		} else {
			$(".goldbox").removeClass("goldbox_checked");
			$("#banner").removeAttr("disabled");
			$("#outter").removeAttr("disabled");
			$("#sendingEmail").removeAttr("disabled");
			$("#contestPeriod_3week_add").removeAttr("disabled");

		}
	});

	$("#primecheck").on('click', function() {

		option_initial();

		if ($("#primecheck").prop('checked')) {
			$(".primebox").addClass("primebox_checked");

		} else {
			$(".primebox").removeClass("primebox_checked");
		}
	});

});// 박스체크

// 시크릿 이벤트
$(document).ready(function() {
	$("#secret").on('click', function() {

		if ($("#secret").prop('checked')) {
			$("#banner").attr("disabled", true);
			$("#outter").attr("disabled", true);
			$("#sendingEmail").attr("disabled", true);
			$(".secret_disabled").addClass("est_option_disabled");

		} else {

			$("#banner").removeAttr("disabled");
			$("#outter").removeAttr("disabled");
			$("#sendingEmail").removeAttr("disabled");
			$(".secret_disabled").removeClass("est_option_disabled");

		}
	});
});

// 랭크박스
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
		if ($('#rank_check').prop('checked')) {
			$("#rank_check_input_2").removeClass("contest_price_input");
			$("#rank_check_input_3").removeClass("contest_price_input");
		} else {
			$("#rank_check_input_2").addClass("contest_price_input");
			$("#rank_check_input_3").addClass("contest_price_input");
		}
	});
});

function submit() {
	var bronze = $("#bronze").val();
	var siver = $("#siver").val();
	var gold = $("#gold").val();
	var platinum = $("#platinum").val();
	var firstprize;
	if (bronze != null) {
		firstprize = bronze;
	} else if (siver != null) {
		firstprize = siver;
	} else if (gold != null) {
		firstprize = gold;
	} else if (platinum != null) {
		firstprize = platinum;
	}
}