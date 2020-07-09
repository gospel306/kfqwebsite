$(document).ready(function() {
    var searchOption = document.location.pathname.split("/")[2];
    if(searchOption == "proceeding"){
        $("#proceeding").addClass("active");
    }else if(searchOption == "decision"){
        $("#decision").addClass("active");
    }else{
        $("#endcontest").addClass("active");
    }
    function dropdown_initial() {
        $("#dropdownKind1").attr('style', "display:none;");
        $("#dropdownKind2").attr('style', "display:none;");
        $("#dropdownKind3").attr('style', "display:none;");
    }

    //list tap
    $("#btnkind1").on('click', function() {
        dropdown_initial();
    })

    $("#btnKind1").hover(function() {

        // $("#dropdownKind1").attr('style', "display:block;");
        //$('#dropdownKind1').addClass('show');
        //$('#dropdownKind1').addClass('show');
    })
    $(document).ready(function(){
        // 각 
        $('.highLight_check').each( function (i, e) { 
            if($ (this).text()==1){
                $(this).parent().addClass('highlight');
            }            
        });
    });
    
    //carousel
    $(".carousel-inner").children().first().addClass("active");
    $('#recipeCarousel').carousel({
        interval : 2000
    })

    $('.carousel .carousel-item').each(
            function() {
                var minPerSlide = 4;
                var next = $(this).next();
                if (!next.length) {
                    next = $(this).siblings(':first');
                }
                next.children(':first-child').clone()
                        .appendTo($(this));

                for (var i = 0; i < minPerSlide; i++) {
                    next = next.next();
                    if (!next.length) {
                        next = $(this).siblings(':first');
                    }

                    next.children(':first-child').clone()
                            .appendTo($(this));
                }
            });

    //carousel

});