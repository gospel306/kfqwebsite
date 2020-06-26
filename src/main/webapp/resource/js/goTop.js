// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	  $(".goTop").css("display","block");
  } else {
	  $(".goTop").css("display","none");
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

$(window).resize(function (){
  // width값을 가져오기
  var width_size = window.outerWidth;
  
  if (width_size < 1100) {
    $(".btn_project").css("display","none");
    
  } else {
    $(".btn_project").css("display","block");
  }
})
