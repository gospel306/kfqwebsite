 $(document).ready(function () {


                var categoryName = '브랜딩SET |'
                var contestTitle = '홍성군 평생교육 브랜드 로고 공모전(홍성군평생학습센터)'
                var userId = 'userId'
                var userName = 'userName'
                var contestContent = "* 공모주제 : 홍성군평생학습센터 브랜드 이미지 * 활용범위 : 홈페이지, 현수막, 배너, 안내판, 현판, 수료증 등 * 개발방향 : 평생교육사업 취지와 친근감을 주고 기억하기 쉬우며 학습 참여 동기를 유발할 수 있는 이미지, 온·오프라인 홍보에 응용이 가능하고 사업 현장에 적용할 수 있는 단순하고 간결한 디자인";
                var item_box_contestReward = "contestReward"
                var item_box_contestPeriod = "item_box_contestPeriod"
                var item_box_joinCount = "item_box_joinCount"


                //document.getElementById("brief_item_content_1").value = bci4;
                $('#item_box_category').text(categoryName);
                $('#item_box_contestTitle').text(contestTitle);
                $('#item_box_userId').text(userId);
                $('#item_box_userName').text(userName);
                $('#item_box_contestContent').text(contestContent);
                $('#item_box_contestReward').text(item_box_contestReward);
                $('#item_box_contestPeriod').text(item_box_contestPeriod);
                $('#item_box_joinCount').text(item_box_joinCount);


                
                
                $('#item_box_category_image').append(" <img src='img/thumbimg_logo.png'>");
                $('#item_box_optionImage').append("<img src='img/22_mimg.png'>");





                $('#item_box_2_category').text(categoryName);
                $('#item_box_2_contestTitle').text(contestTitle);
                $('#item_box_2_userId').text(userId);
                $('#item_box_2_userName').text(userName);
                $('#item_box_2_contestContent').text(contestContent);
                $('#item_box_2_contestReward').text(item_box_contestReward);
                $('#item_box_2_contestPeriod').text(item_box_contestPeriod);
                $('#item_box_2_joinCount').text(item_box_joinCount);


                
                
                $('#item_box_2_category_image').append(" <img src='img/thumbimg_logo.png'>");
                $('#item_box_2_optionImage').append("<img src='img/22_mimg.png'>");




                $('#item_box_3_category').text(categoryName);
                $('#item_box_3_contestTitle').text(contestTitle);
                $('#item_box_3_userId').text(userId);
                $('#item_box_3_userName').text(userName);
                $('#item_box_3_contestContent').text(contestContent);
                $('#item_box_3_contestReward').text(item_box_contestReward);
                $('#item_box_3_contestPeriod').text(item_box_contestPeriod);
                $('#item_box_3_joinCount').text(item_box_joinCount);


                
                
                $('#item_box_3_category_image').append(" <img src='img/thumbimg_logo.png'>");
                $('#item_box_3_optionImage').append("<img src='img/22_mimg.png'>");





        //list tap 초기화
        function list_initial() {
            $(".List_ScoringTap_subTitle").attr('style', "display:none;");
            $(".List_DoneTap_subTitle").attr('style', "display:none;");
            $(".List_ProceedingTap_subTitle").attr('style', "display:none;");
            $('#pills-Proceeding-tab').attr('aria-selected', false);
            $('#pills-Scoring-tab').attr('aria-selected', false);
            $('#pills-Done-tab').attr('aria-selected', false);
            $('#pills-Proceeding-tab').removeClass('active');
            $('#pills-Scoring-tab').removeClass('active');
            $('#pills-Done-tab').removeClass('active');


        };
        function dropdown_initial() {


            $("#dropdownKind1").attr('style', "display:none;");
            $("#dropdownKind2").attr('style', "display:none;");
            $("#dropdownKind3").attr('style', "display:none;");
        }


        //list tap
        $("#pills-Proceeding-tab").on('click', function () {
            list_initial();
            $(".List_ProceedingTap_subTitle").attr('style', "display:block;");
            $('#pills-Proceeding-tab').attr('aria-selected', true);

        })


        $("#pills-Scoring-tab").on('click', function () {
            list_initial();
            $(".List_ScoringTap_subTitle").attr('style', "display:block;");
            $('#pills-Scoring-tab').attr('aria-selected', true);
        })


        $("#pills-Done-tab").on('click', function () {
            list_initial();
            $(".List_DoneTap_subTitle").attr('style', "display:block;");
            $('#pills-Done-tab').attr('aria-selected', true);
        })

        //list tap
        $("#btnkind1").on('click', function () {
            dropdown_initial();
        })



        $("#btnKind1").hover(function () {
           
            // $("#dropdownKind1").attr('style', "display:block;");
            //$('#dropdownKind1').addClass('show');
            //$('#dropdownKind1').addClass('show');
        })



        //carousel

        $('#recipeCarousel').carousel({
            interval: 2000
        })

        $('.carousel .carousel-item').each(function () {
            var minPerSlide = 4;
            var next = $(this).next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }
            next.children(':first-child').clone().appendTo($(this));

            for (var i = 0; i < minPerSlide; i++) {
                next = next.next();
                if (!next.length) {
                    next = $(this).siblings(':first');
                }

                next.children(':first-child').clone().appendTo($(this));
            }
        });
 });