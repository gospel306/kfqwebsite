	  //일단 체크박스 값을 받아야해. 

    var reward1 = 0;            //1등
    var reward2 = 0, reward3 = 0;  //2등,3등
    var reward_grade='bronzecheck'; //reward 박스 등급
    var total_Reward = 0;       //우승상금
    var fees_price = 0;        //상금수수료
    var enroll_price = 5; //등록금
    var total_option_price = 0;
    var upperPose_price = 0; // 상단노출 옵션
    var highlight_price = 0;  //하이라이트 옵션
    var banner_price = 0;    // 배너 옵션 
    var tax_price = 0;          //부가가치세
    var idx = 0;
    var week = 1;               //기간
    var fn;
    var delay = 0;

    function debounce(fn, delay) {
        var timer = null;
        return function () {
            var context = this, args = arguments;
            clearTimeout(timer);
            timer = setTimeout(function () {
                fn.apply(context, args);
            }, delay);
        };
    }

    //호출 함수 선언부

    //최소값 최대값 



    function minmax(value, min, max) {

            if (parseInt(value) < min || isNaN(parseInt(value)))

               return min;

            else if (parseInt(value) > max)
                return max;
            else return parseInt(value);


    }

    



    //토탈 상금
    function totalReward() {

        if(reward1<60){
            reward_grade='bronzecheck'
        }else if(reward1<100){
            reward_grade='silvercheck'
        }else if(reward1<150){
            reward_grade='goldcheck'
        }else{
            reward_grade='primecheck'
        }

        if ($('.fees_price').prop('checked')) {

            
            total_Reward = Math.ceil((parseInt(reward1) + parseInt(reward2) + parseInt(reward3)));
            $('.reward_price_input').val(total_Reward);
            fees_price = Math.ceil(total_Reward * 0.2);
            $('.fees_price_input').val(fees_price);

        } else {

            total_Reward = Math.ceil((parseInt(reward1) + parseInt(reward2) + parseInt(reward3)));
            $('.reward_price_input').val(total_Reward);
            fees_price = Math.ceil(total_Reward * 0);
            $('.fees_price_input').val(fees_price);




        }
        totalPrice();
    }


    function optionPrice() {


        if ($('#upperPose').prop('checked')) { upperPose_price = 10; } else { upperPose_price = 0; }
        if ($('#highlight').prop('checked')) { highlight_price = 5; } else { highlight_price = 0; }
        if ($('#banner').prop('checked')) { banner_price = 10; } else { banner_price = 0; }

        total_option_price = upperPose_price + highlight_price + banner_price;
        $('.option_price_input').val(total_option_price);
        totalPrice();

    }

    function taxPrice() {
        tax_price = Math.ceil((total_Reward + enroll_price + total_option_price) * 0.15);
        $('.tax_price_input').val(tax_price);

    }


    //토탈가격
    function totalPrice() {
        taxPrice()

        $('.total_price_input').val(Math.ceil((total_Reward + enroll_price + total_option_price + tax_price)));

    }




    function option_initial() {    // 옵션 부여된 속성들 초기화

        $(".primebox").removeClass("primebox_checked");         // 테두리 속성 초기화
        $(".goldbox").removeClass("goldbox_checked");
        $(".silverbox").removeClass("silverbox_checked");
        $(".bronzebox").removeClass("bronzebox_checked");

        $(".est_option").removeClass("est_option_disabled");    // 전체 투명도 50% 초기화
        $(".secret_disabled").removeClass("est_option_disabled"); //실버 사용불가 옵션 초기화



        $("#upperPose").removeAttr("disabled");             // 옵션박스 사용불가 초기화 
        $("#highlight").removeAttr("disabled");
        $("#secret").removeAttr("disabled");
        $("#banner").removeAttr("disabled");
        $("#outter").removeAttr("disabled");
        $("#sendingEmail").removeAttr("disabled");


        $("input[name=optionBox]").prop("checked", false);  //  모든 option박스  체크 해제 
        $("input[name=periodeRadio]").prop("checked", false);  //  모든 기간라디오  체크 해제 
        $("#contestPeriod_week").prop("checked", true);  // 기간라디오 초기값. 



        $("#contestPeriod_week_add").removeAttr("disabled");
        $("#contestPeriod_3week_add").removeAttr("disabled");
        $(".box_reward").parent().removeClass("checked");
        $(".box_reward").val("");
        $(".box_reward_add").val("");

        week = 1;

    };

    function bronzecheck() {
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

            reward1 = 30;
            totalReward();



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

    }


    function silvercheck() {
        option_initial();

        if ($("#silvercheck").prop('checked')) {
            $(".silverbox").addClass("silverbox_checked");
            $("#banner").attr("disabled", true);
            $("#outter").attr("disabled", true);
            $("#sendingEmail").attr("disabled", true);
            $(".secret_disabled").addClass("est_option_disabled");
            $("#contestPeriod_3week_add").attr("disabled", true);

            reward1 = 60;
            totalReward();

        } else {
            $(".silverbox").removeClass("silverbox_checked");
            $("#banner").removeAttr("disabled");
            $("#outter").removeAttr("disabled");
            $("#sendingEmail").removeAttr("disabled");
            $(".secret_disabled").removeClass("est_option_disabled");
            $("#contestPeriod_3week_add").removeAttr("disabled");

        }





    }
    function goldcheck() {

        option_initial();


        if ($("#goldcheck").prop('checked')) {
            $(".goldbox").addClass("goldbox_checked");
            $("#banner").attr("disabled", true);
            $("#outter").attr("disabled", true);
            $("#sendingEmail").attr("disabled", true);
            $("#contestPeriod_3week_add").attr("disabled", true);

            reward1 = 100;
            totalReward();
        } else {
            $(".goldbox").removeClass("goldbox_checked");
            $("#banner").removeAttr("disabled");
            $("#outter").removeAttr("disabled");
            $("#sendingEmail").removeAttr("disabled");
            $("#contestPeriod_3week_add").removeAttr("disabled");

        }


    }
    function primecheck() {


        option_initial();

        if ($("#primecheck").prop('checked')) {
            $(".primebox").addClass("primebox_checked");
            reward1 = 150;
            totalReward();

        } else {
            $(".primebox").removeClass("primebox_checked");
        }


    }

    function page_initial(){




        $(".primebox").removeClass("primebox_checked");         // 테두리 속성 초기화
        $(".goldbox").removeClass("goldbox_checked");
        $(".silverbox").removeClass("silverbox_checked");
        $(".bronzebox").removeClass("bronzebox_checked");
        $('#bronzecheck').prop("checked",true);
        $('#bronzecheck').trigger("click");
        bronzecheck();

        $(".est_option").removeClass("est_option_disabled");    // 전체 투명도 50% 초기화
        $(".secret_disabled").removeClass("est_option_disabled"); //실버 사용불가 옵션 초기화



        $("#upperPose").removeAttr("disabled");             // 옵션박스 사용불가 초기화 
        $("#highlight").removeAttr("disabled");
        $("#secret").removeAttr("disabled");
        $("#banner").removeAttr("disabled");
        $("#outter").removeAttr("disabled");
        $("#sendingEmail").removeAttr("disabled");


        $("input[name=optionBox]").prop("checked", false);  //  모든 option박스  체크 해제 
        $("input[name=periodeRadio]").prop("checked", false);  //  모든 기간라디오  체크 해제 
        $("#contestPeriod_week").prop("checked", true);  // 기간라디오 초기값. 



        $("#contestPeriod_week_add").removeAttr("disabled");
        $("#contestPeriod_3week_add").removeAttr("disabled");
        $(".box_reward").parent().removeClass("checked");
        $(".box_reward").val("");


        week = 1;


        //초기화
        
        $('.option_price_input').val(parseInt(0));
        $('.fees_price_input').val(parseInt(0));
        $('.tax_price_input').val(parseInt(0));
        $('.total_price_input').val(parseInt(0));
        $('#rank_check').prop("checked",false);
        $(".box_reward_add").val("");
    }



    //페이지 로딩 
    window.addEventListener("load", function(event) {
        page_initial();
    });





$(document).ready(function(){

 

    $('.btn_next').on('click', function () {
       
    	

    /*var reward1 = 0;            //1등
    var reward2 = 0, reward3 = 0;  //2등,3등
    var reward_grade='bronzecheck'; //reward 박스 등급
    var total_Reward = 0;       //우승상금
    var fees_price = 0;        //상금수수료
    var enroll_price = 5; //등록금
    var total_option_price = 0;
    var upperPose_price = 0; // 상단노출 옵션
    var highlight_price = 0;  //하이라이트 옵션
    var banner_price = 0;    // 배너 옵션 
    var tax_price = 0;          //부가가치세
    var idx = 0;
    var week = 1;               //기간
    var fn;
    var delay = 0; */
    	  
    	
    	
  	  var newForm = $('<form></form>')
  	  newForm.attr("name","newForm");
  	  newForm.attr("method","post");
  	  newForm.attr("action","result");
  	  
  	  newForm.append($('<input/>',{type:'hidden',name:'show', value: upperPose_price}));
  	  newForm.append($('<input/>',{type:'hidden',name:'highlight', value: highlight_price}));
  	  newForm.append($('<input/>',{type:'hidden',name:'benner', value: banner_price}));
  	  newForm.append($('<input/>',{type:'hidden',name:'enddate', value: week}));
  	  newForm.append($('<input/>',{type:'hidden',name:'firstprize', value: reward1}));
  	  newForm.append($('<input/>',{type:'hidden',name:'secondprize', value: reward2}));
  	  newForm.append($('<input/>',{type:'hidden',name:'thirdprize', value: reward3}));
  	  newForm.append($('<input/>',{type:'hidden',name:'tax_price', value: tax_price}));
  	  newForm.append($('<input/>',{type:'hidden',name:'enroll_price', value: enroll_price}));
  	  newForm.append($('<input/>',{type:'hidden',name:'paytype', value: reward_grade}));
  	  newForm.append($('<input/>',{type:'hidden',name:'fullprize', value: fees_price}));
  	  newForm.append($('<input/>',{type:'hidden',name:'total_price', value: Math.ceil((total_Reward + enroll_price + total_option_price + tax_price))}));
  	  newForm.appendTo('body');
  	  newForm.submit();
  	  
    });


    //상시함수 선언부



    // 숫자만 


    $("input:text[numberOnly]").on("keyup", debounce(function (event) {
        $(this).val($(this).val().replace(/[^0-9]/g, ""));
        

    }, 100));
    
    
  



    



    //콘테스트 등급 기본가격
    $(".box_reward").on("focus", function () {
        option_initial();
        $(this).parent().trigger("click");

        if ($('.box_reward').index(this) == 0) {
            bronzecheck();
        } else if ($('.box_reward').index(this) == 1) {
            silvercheck();
        } else if ($('.box_reward').index(this) == 2) {
            goldcheck();
        } else if ($('.box_reward').index(this) == 3) {
            primecheck();
        }




        $(this).parent().addClass("checked");


        totalReward();


    });

    //등록금
    $('.enroll_price_input').val(parseInt(enroll_price));

    //콘테스트 등급 직접입력값.
    $(".box_reward").on("propertychange change blur keyup paste input", function () {

          
        reward1 = parseInt($(this).val());


        totalReward();
    });

    $(".box_reward_add").on("input", function () {

        reward2 = parseInt($("#reward_add_2").val());
        reward3 = parseInt($("#reward_add_3").val());
        totalReward();
    })

    // 값을 입력하고 input 값 반영 


    // 라디오에 따른 기간 반영

    $('input:radio[name=periodeRadio]').on("change", function () {
        idx = $('input:radio[name=periodeRadio]').index(this);
        if (idx == 0) {

            week = 1;

        } else if (idx == 1) {

            week = 2;
        } else if (idx == 2) {
            week = 4;
        }

    })
    
      $(".fees_price").on("click", function () {
            totalReward();
        });
      $(".optionList_price").on("click", function () {
          optionPrice();
      });
      $("#bronzecheck").on('click', function () {
          bronzecheck();
      });

      $("#silvercheck").on('click', function () {
          silvercheck();
      });



      $("#goldcheck").on('click', function () {
          goldcheck();
      });

      $("#primecheck").on('click', function () {
          primecheck();
      });
      
      $("input:checkbox").on('click', function () {
          if ($('#rank_check').prop('checked')) {
              $("#rank_check_input_2").removeClass("contest_price_input");
              $("#rank_check_input_3").removeClass("contest_price_input");
              $("#rank_check_input_2").attr("disabled", false);
              $("#rank_check_input_3").attr("disabled", false);

              reward2 = parseInt($("#reward_add_2").val());
              reward3 = parseInt($("#reward_add_3").val());
              totalReward();


          } else {
              $("#rank_check_input_2").addClass("contest_price_input");
              $("#rank_check_input_3").addClass("contest_price_input");
              $("#rank_check_input_2").attr("disabled", true);
              $("#rank_check_input_3").attr("disabled", true);
              reward2 = parseInt("0");
              reward3 = parseInt("0");
              totalReward();
          }
      });

      $("input:checkbox").on('blur', function () {
          $('#rank_check_input_2').val(reward2);
          $('#rank_check_input_3').val(reward3);

      }); 	
      
});
