$(document).ready(function() {

	$(".tap_btn ").on('click', function() {

		$('.tap_btn').removeClass('faq_innerTap_active');
		$(this).addClass('faq_innerTap_active');

		var idx = $('.tap_btn').index(this);

		$(".innerTapAll").attr('style', 'display:none');

		if (idx == 0) {
			$(".innerTapAll").attr('style', 'display:block');
		} else {
			$(".innerTapAll").eq(idx).attr('style', 'display:block');
		}

	})
});
