<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!-- saved from url=(0030)http://www.sungdokorea.com/kr/ -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>프로토</title>
    <!-- <link rel="Shortcut Icon" href="http://www.sungdokorea.com/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="http://www.sungdokorea.com/apple-touch-icon.png"> -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="http://www.sungdokorea.com/kr">
    <meta name="description" content="">
    <meta name="og:description" content="">
    <meta name="Title" content="성도이엔지">
    <meta name="og:title" content="성도이엔지">
    <meta name="keywords" content="">
    <meta name="Author" content="">
    <meta name="naver-site-verification" content="">
    <meta name="google-site-verification" content="">
    <meta name="Subject" content="페이지 주제">
    <meta name="Robots" content="INDEX,FOLLOW">
    <meta property="og:image" content="http://www.sungdokorea.com/images/logo.png">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="성도이엔지">
    <meta name="twitter:description" content="">
    <meta name="twitter:image" content="http://www.sungdokorea.com/images/logo.png">
    <meta name="twitter:domain" content="http://www.sungdokorea.com/kr/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href=" <c:url value="/resources/css/reset.css" />">
    <link rel="stylesheet" href=" <c:url value="/resources/css/common.css" />">
    <link rel="stylesheet" href="/resources/css/editor.css">
    <link rel="stylesheet" href="/resources/css/layout.css">
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/content.css">
    <link rel="stylesheet" href="/resources/css/addition.css">
    <link href="/resources/icon" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="http://www.sungdokorea.com/js/vendor/html5shiv.js"></script>
    <script src="http://www.sungdokorea.com/js/vendor/respond.min.js"></script>
    <![endif]-->
    <script src="/resources/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="http://www.sungdokorea.com/js/vendor/jquery-1.8.3.min.js"><\/script>')</script>
    <script src="/resources/js/jquery.easing.1.3.js"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/addition.js"></script>

    <!-- 메인비주얼 플러그인 -->
    <link rel="stylesheet" type="text/css" href="/resources/css/slick.css">
    <script src="/resources/js/slick.js"></script>
    <script>
        $(function  () {
            dep1 = 0,
                dep2 = 0;
        })
    </script>
    <script type="text/javascript" src="/resources/js/nav.js"></script>
    <script type="text/javascript" src="/resources/js/main.js"></script>
    <script type="text/javascript">
        $(window).load(function  () {
            var $slick_carousel = $(".visual-img");

            $slick_carousel.on('init', function(event, slick) {
                $(".visual-item").eq(0).addClass("active");
            });
            $slick_carousel.on('afterChange', function(event, slick, currentSlide){
                $(".visual-item").removeClass("active");
                $(this).find(".visual-item").eq(currentSlide).addClass("active")
            });
            // 메인 비주얼 롤링
            $slick_carousel.slick({
                dots: false,
                infinite: true,
                arrows:true,
                pauseOnHover:false,
                autoplay:true,
                fade:true,
                autoplaySpeed: 5000,
                slidesToShow: 1,
                slidesToScroll: 1
            });
        });
    </script>
    <script type="text/javascript">
        $(window).scroll( function(){
            /* ### 메인 스크롤시 컨텐츠 fadeIn ### */
            $(".scroll-fade li").each(function  () {
                var bottom_of_object = $(this).offset().top + $(this).outerHeight();
                var bottom_of_window = $(window).scrollTop() + ( $(window).height() / 2 );

                if( bottom_of_window > bottom_of_object - ($(window).height() - 200) ){
                    $(this).addClass("active");
                }
            });
        });
    </script>
</head>

<body>
<!--[if lt IE 7]>
<p class="cm-alert-ie">현재 웹브라우저에서는 사이트가 정상적으로 표시되지 않을 수 있습니다. <strong><a href="http://browsehappy.com/" target="_blank">여기를 클릭</a></strong>하여 웹브라우저를 업그레이드 하세요.</p>
<![endif]-->
<!-- accessibility -->
<div class="cm-accessibility">
    <a href="http://www.sungdokorea.com/kr/#mainContainer">본문바로가기</a>
</div>
<!-- //accessibility -->

<!-- code -->
<div id="wrap" class="index">
    <!-- header -->
    <header id="header" class="trans400">
        <div id="headerInner">
            <h1 class="logo"><a href="http://www.sungdokorea.com/kr/" class="trans400">성도이엔지</a></h1>
            <nav id="gnb">
                <ul class="area clearfix">
                    <li class="gnb1">
                        <a href="http://www.sungdokorea.com/kr/company/summury.php"><span>회사소개</span></a>
                        <div class="gnb-2dep" style="display: none;">
                            <ul>
                                <li><a href="http://www.sungdokorea.com/kr/company/summury.php">기업개요</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/ceo.php">CEO인사말</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/vision.php">경영이념/비전</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/ethic.php">윤리경영</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/history.php">회사연혁</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/global.php">글로벌네트워크</a></li>							</ul>
                        </div>
                    </li>
                    <li class="gnb2">
                        <a href="http://www.sungdokorea.com/kr/business/building.php"><span>사업소개</span></a>
                        <div class="gnb-2dep" style="display: none;">
                            <ul>
                                <li><a href="http://www.sungdokorea.com/kr/business/building.php">종합건설사업</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/cleanroom.php">크린룸</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/plant.php">플랜트</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/newtown.php">신도시 개발사업</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/result.php?sub_num_n=1">사업실적</a></li>							</ul>
                        </div>
                    </li>
                    <li class="gnb3">
                        <a href="http://www.sungdokorea.com/kr/person/right_person.php"><span>인재정보</span></a>
                        <div class="gnb-2dep" style="display: none;">
                            <ul>
                                <li><a href="http://www.sungdokorea.com/kr/person/right_person.php">인재상</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/person/person_info.php">인사 복지</a></li>							</ul>
                        </div>
                    </li>
                    <li class="gnb4">
                        <a href="http://www.sungdokorea.com/kr/invest/stock.php"><span>투자정보</span></a>
                        <div class="gnb-2dep" style="display: none;">
                            <ul>
                                <li><a href="http://www.sungdokorea.com/kr/invest/stock.php">주가현황</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/invest/public.php">공시정보</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/invest/finance.php">재무정보</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/invest/ir.php">IR 자료실</a></li>							</ul>
                        </div>
                    </li>
                    <li class="gnb5">
                        <a href="http://www.sungdokorea.com/kr/customer/news.php"><span>고객지원</span></a>
                        <div class="gnb-2dep" style="display: none;">
                            <ul>
                                <li><a href="http://www.sungdokorea.com/kr/customer/news.php">성도뉴스</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/customer/press.php">보도자료</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/customer/cyber.php">사이버신문고</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/customer/inquiry.php">고객문의</a></li>							</ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <aside id="utilMenu">
                <div class="user-menu-list">
                    <a href="http://www.sungdokorea.com/kr/#none" onclick="javascript:layerPopupLoad(&#39;http://www.sungdokorea.com/kr/include/sitemap.php&#39;);return false;">SITEMAP</a><a href="http://www.sungdokorea.com/kr/company/global.php">CONTACT US</a>
                </div>
                <div class="user-lang-select">
                    <a href="http://www.sungdokorea.com/kr/" class="on">KR</a>
                    <a href="http://www.sungdokorea.com/en/">EN</a>
                </div>
            </aside>
            <a href="http://www.sungdokorea.com/kr/#none" class="gnb-open-btn trans400" title="오른쪽메뉴 열기"><i class="material-icons"></i></a>
            <nav id="gnbM">
                <span class="close-box"><img src="/resources/images/close_btn.png" alt="닫기" width="30"></span>
                <div id="gnbNavigation">
                    <ul class="clearfix">
                        <li class="gnb1" style="animation-delay: 0ms;">
                            <a href="http://www.sungdokorea.com/kr/company/summury.php"><span>회사소개</span></a>
                            <ul class="gnb-2dep">
                                <li><a href="http://www.sungdokorea.com/kr/company/summury.php">기업개요</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/ceo.php">CEO인사말</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/vision.php">경영이념/비전</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/ethic.php">윤리경영</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/history.php">회사연혁</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/company/global.php">글로벌네트워크</a></li>							</ul>
                        </li>
                        <li class="gnb2" style="animation-delay: 80ms;">
                            <a href="http://www.sungdokorea.com/kr/business/building.php"><span>사업소개</span></a>
                            <ul class="gnb-2dep">
                                <li><a href="http://www.sungdokorea.com/kr/business/building.php">종합건설사업</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/cleanroom.php">크린룸</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/plant.php">플랜트</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/newtown.php">신도시 개발사업</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/business/result.php?sub_num_n=1">사업실적</a></li>							</ul>
                        </li>
                        <li class="gnb3" style="animation-delay: 160ms;">
                            <a href="http://www.sungdokorea.com/kr/person/right_person.php"><span>인재정보</span></a>
                            <ul class="gnb-2dep">
                                <li><a href="http://www.sungdokorea.com/kr/person/right_person.php">인재상</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/person/person_info.php">인사 복지</a></li>							</ul>
                        </li>
                        <li class="gnb4" style="animation-delay: 240ms;">
                            <a href="http://www.sungdokorea.com/kr/company/summury.php"><span>투자정보</span></a>
                            <ul class="gnb-2dep">
                                <li><a href="http://www.sungdokorea.com/kr/invest/stock.php">주가현황</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/invest/public.php">공시정보</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/invest/finance.php">재무정보</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/invest/ir.php">IR 자료실</a></li>							</ul>
                        </li>
                        <li class="gnb5" style="animation-delay: 320ms;">
                            <a href="http://www.sungdokorea.com/kr/company/summury.php"><span>고객지원</span></a>
                            <ul class="gnb-2dep">
                                <li><a href="http://www.sungdokorea.com/kr/customer/news.php">성도뉴스</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/customer/press.php">보도자료</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/customer/cyber.php">사이버신문고</a></li>
                                <li><a href="http://www.sungdokorea.com/kr/customer/inquiry.php">고객문의</a></li>							</ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <div id="gnbMenuBg"></div>
        </div>
    </header>
    <!-- //header -->
    <!-- container -->
    <div id="mainContainer">
        <!-- visual -->
        <section id="mainVisual">
            <div class="visual-img slick-initialized slick-slider"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
                <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 5052px;"><div class="visual-item slick-slide" data-slick-index="0" aria-hidden="true" tabindex="-1" role="option" style="width: 1263px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease;">
                    <img src="/resources/images/main_visual_03" alt="">
                    <div class="visual-txt">
                        <div class="visual-inner-txt">
                            <h2><img src="/resources/images/main_visual_txt3.png" alt="고객과 함께 성장하는 동반자"></h2>
                            <strong>항상 고객을 생각하고, 고객과 같이 발전하고 동행할 수 있는<br>기업이 되도록 최선을 다하고있습니다. </strong>
                            <!--span>The Global Young Academy aims to become the voice of young scientists around </span>
                            <p>반도체, LCD설비, 생산장비사업 및 PLANT사업에 진출하여 우수한 기술력과<br>
                            경험으로 성공적인 사업을 진행하고 있습니다</p-->
                        </div>
                        <a href="http://www.sungdokorea.com/kr/business/building.php" tabindex="-1">MORE View</a>
                    </div>
                </div><div class="visual-item slick-slide" data-slick-index="1" aria-hidden="true" tabindex="-1" role="option" style="width: 1263px; position: relative; left: -1263px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease;">
                    <img src="/resources/images/main_visual_02_2" alt="">
                    <div class="visual-txt">
                        <div class="visual-inner-txt">
                            <h2><img src="/resources/images/main_visual_txt2.png" alt="품질안전 우선주의 기업"></h2>
                            <strong>반도체, LCD설비, 생산장비사업 및 PLANT사업에 진출하여 우수한 기술력과<br>
                                경험으로 성공적인 사업을 진행하고 있습니다</strong>
                            <!--span>The Global Young Academy aims to become the voice of young scientists around </span>
                            <p>반도체, LCD설비, 생산장비사업 및 PLANT사업에 진출하여 우수한 기술력과<br>
                            경험으로 성공적인 사업을 진행하고 있습니다</p-->
                        </div>
                        <a href="http://www.sungdokorea.com/kr/business/building.php" tabindex="-1">MORE View</a>
                    </div>
                </div><div class="visual-item slick-slide slick-current slick-active active" data-slick-index="2" aria-hidden="false" tabindex="-1" role="option" style="width: 1263px; position: relative; left: -2526px; top: 0px; z-index: 999; opacity: 1;">
                    <img src="/resources/images/main_visual_01" alt="">
                    <div class="visual-txt">
                        <div class="visual-inner-txt">
                            <h2><img src="/resources/images/main_visual_txt1.png" alt="미래를 선도하는 기업"></h2>
                            <strong>미래를 선도하는 기업이라는 이념 아래 차별화된<br>고객가치를 창조하기 위해 끊임없이 노력하고 있습니다.</strong>
                            <!--span>The Global Young Academy aims to become the voice of young scientists around </span>
                            <p>반도체, LCD설비, 생산장비사업 및 PLANT사업에 진출하여 우수한 기술력과<br>
                            경험으로 성공작인 사업을 진행하고 있습니다</p-->
                        </div>
                        <a href="http://www.sungdokorea.com/kr/business/building.php" tabindex="0">MORE View</a>
                    </div>
                </div><div class="visual-item slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" role="option" style="width: 1263px; position: relative; left: -3789px; top: 0px; z-index: 998; opacity: 0;">
                    <img src="/resources/images/main_visual_01_2" alt="">
                    <div class="visual-txt">
                        <div class="visual-inner-txt">
                            <h2><img src="/resources/images/main_visual_txt1.png" alt="미래를 선도하는 기업"></h2>
                            <strong>미래를 선도하는 기업이라는 이념 아래 차별화된<br>고객가치를 창조하기 위해 끊임없이 노력하고 있습니다.</strong>
                            <!--span>The Global Young Academy aims to become the voice of young scientists around </span>
                            <p>반도체, LCD설비, 생산장비사업 및 PLANT사업에 진출하여 우수한 기술력과<br>
                            경험으로 성공작인 사업을 진행하고 있습니다</p-->
                        </div>
                        <a href="http://www.sungdokorea.com/kr/business/building.php" tabindex="-1">MORE View</a>
                    </div>
                </div></div></div>

                <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button></div>
            <div class="scroll-icon" style="opacity: 0.81395; bottom: 39.442px;">
                <span>SCROLL DOWN</span>
                <img src="/resources/images/scroll_icon.png" alt="">
            </div>
        </section>
        <!-- //visual -->
        <!-- content -->
        <section id="mainContent">
            <article id="mainBusinessCon" class="area">
                <h2 class="content-tit">BUSINESS</h2>
                <div id="businessList">
                    <ul class="scroll-fade">
                        <li style="transition-delay:0.1s">
                            <a href="http://www.sungdokorea.com/kr/business/building.php" style="background:url(/images/main/main_business_01_m) no-repeat 50% 50%;">
                                <span class="bg-thum"><img src="/resources/images/main_business_01" alt=""></span>
                                <p class="business-tit"><span class="font-nanum">General Construction Business</span><strong class="font-nanumbarun">종합건설사업</strong></p>
                                <span class="over-cover"><img src="/resources/images/more_btn_white.png" alt=""></span>
                            </a>
                        </li>
                        <li class="even-item" style="transition-delay:0.2s">
                            <a href="http://www.sungdokorea.com/kr/business/cleanroom.php" style="background:url(/images/main/main_business_02_m) no-repeat 50% 50%;">
                                <span class="bg-thum"><img src="/resources/images/main_business_02" alt=""></span>
                                <p class="business-tit"><span class="font-nanum">Semiconductor &amp; Display Project</span><strong class="font-nanumbarun">크린룸</strong></p>
                                <span class="over-cover"><img src="/resources/images/more_btn_white.png" alt=""></span>
                            </a>
                        </li>
                        <!-- <li style="transition-delay:0.3s">
                            <a href="http://www.sungdokorea.com/kr/business/cleanroom.php" style="background:url(/images/main/main_business_03_m) no-repeat 50% 50%;">
                                <span class="bg-thum"><img src="http://www.sungdokorea.com/images/main/main_business_03" alt="" /></span>
                                <p class="business-tit"><span class="font-nanum">Building Mechanical Project</span><strong class="font-nanumbarun">건축설비</strong></p>
                                <span class="over-cover"><img src="http://www.sungdokorea.com/images/button/more_btn_white.png" alt="" /></span>
                            </a>
                        </li> -->
                        <li class="even-item" style="transition-delay:0.3s">
                            <a href="http://www.sungdokorea.com/kr/business/plant.php" style="background:url(/images/main/main_business_04_m) no-repeat 50% 50%;">
                                <span class="bg-thum"><img src="/resources/images/main_business_04" alt=""></span>
                                <p class="business-tit"><span class="font-nanum">Plant</span><strong class="font-nanumbarun">플랜트</strong></p>
                                <span class="over-cover"><img src="/resources/images/more_btn_white.png" alt=""></span>
                            </a>
                        </li>
                        <li style="transition-delay:0.4s">
                            <a href="http://www.sungdokorea.com/kr/business/newtown.php" style="background:url(/images/main/main_business_05_m) no-repeat 50% 50%;">
                                <span class="bg-thum"><img src="/resources/images/main_business_05" alt=""></span>
                                <p class="business-tit"><span class="font-nanum">Overseas Real Estate Development </span><strong class="font-nanumbarun">신도시개발사업</strong></p>
                                <span class="over-cover"><img src="/resources/images/more_btn_white.png" alt=""></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="businessResultLink" class="clearfix">
                    <h3><strong>사업</strong>실적<a href="http://www.sungdokorea.com/kr/business/result.php?sub_num_n=1">MORE</a></h3>
                    <ul class="result-link-list">
                        <li><a href="http://www.sungdokorea.com/kr/business/result_bbs.php"><span>종합건설실적</span></a></li>
                        <li><a href="http://www.sungdokorea.com/kr/business/result_bbs2.php"><span>크린룸프로젝트 실적</span></a></li>
                        <li><a href="http://www.sungdokorea.com/kr/business/result_bbs3.php"><span>플랜트 프로젝트실적</span></a></li>
                    </ul>
                </div>
            </article>
            <article id="mainNetworkCon">
                <aside id="mainGlobalList" class="area">
                    <h2 class="content-tit"><strong>GLOBAL</strong> NETWORK</h2>
                    <ul class="global-list-con">
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag1.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>SUNGDO L&amp;D (China, Daqing)</strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag1.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>SUNGDO E&amp;C (China) Co.,LTD</strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag1.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>SUNGDO Technology, China</strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag9.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>Vietnam</strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag6.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>Saudi Arabia</strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag10.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>Kuwait</strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag4.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>Thailand </strong>
                            </p>
                        </li>
                        <li>
                            <span class="national-flag"><img src="/resources/images/national_flag11.jpg" alt=""></span>
                            <p class="national-tit">
                                <strong>Malaysia</strong>
                            </p>
                        </li>
                        <p class="more"><a href="http://www.sungdokorea.com/kr/company/global.php">MORE</a></p>

                    </ul>
                </aside>
                <div id="mainGlobalMapCon">
                    <div id="globalMapInner">
                        <div class="map-inner-top">
                            <h3><strong>(주)성도이엔지</strong><span>SUNGDO ENGINEERING &amp; CONSTRUCTION</span></h3>
                            <p class="map-inner-txt">
                                서울특별시 강남구 영동대로106길 42  (삼성동) 성도벤처타워 5F-7F<br>TEL : 02-6244-5200   /   FAX :   02-6244-5388, 5399
                            </p>
                            <a href="http://www.sungdokorea.com/kr/company/global.php" class="global-more-btn trans400">자세히보기</a>
                        </div>
                        <div class="map-inner-content">
                            <span class="pc-img"><img src="/resources/images/main_map_img.jpg" alt=""> </span>
                            <span class="mobile-img"><img src="/resources/global_map_img_m.jpg" alt=""> </span>
                            <div class="map-kr-marker">
                                <div class="kr-round-ani">
                                    <span></span>
                                    <span style="animation-delay: -0.8s;"></span>
                                    <span style="animation-delay: -0.4s;"></span>
                                    <b></b>
                                </div>
                                <span class="kr-tit">KOREA</span>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <article id="mainBoardCon">
                <aside id="mainInvestCon" class="area">

                    <div class="main-invest-news-inner-con">
                        <div class="main-invest-con">
                            <h2 class="content-tit"><strong>투자정보</strong> INVEST</h2>
                            <span class="content-sub-tit">The Global Young Academy aims to become the voice of young</span>
                            <div class="main-invest-list">
                                <p class="invest-price"><!-- <span>▼</span> --> <strong>7,050</strong>won</p>
                                <div class="invest-info">
                                    <dl>
                                        <dt>전일대비 </dt>
                                        <dd>170 ▼</dd>
                                    </dl>
                                    <dl>
                                        <dt>등락률 </dt>
                                        <dd>-2.35%</dd>
                                    </dl>
                                </div>
                                <a href="http://www.sungdokorea.com/kr/invest/stock.php" class="invest-more-btn trans400">자세히 보기</a>
                            </div>
                        </div>						<div class="main-news-con">
                        <h2 class="content-tit"><strong>성도뉴스</strong> NEWS</h2>
                        <div class="main-news-list">
                            <ul>
                                <li><a href="http://www.sungdokorea.com/kr/customer/news.php?bgu=view&amp;bbs_data=aWR4PTIwJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT10YWI1X2MxJnNlYXJjaF9pdGVtPSZzZWFyY2hfb3JkZXI9||">홈페이지 리뉴얼</a></li>
                            </ul>
                            <a href="http://www.sungdokorea.com/kr/customer/news.php" class="news-more-btn"><img src="/resources/more_btn_white.png" alt="더보기" style="opacity:0.7;filter:Alpha(opacity=70);"></a>
                        </div>
                    </div>
                    </div>
                </aside>
                <div id="mainPressCon">
                    <div class="main-press-inner-con">
                        <div id="csPressList">
                            <h2 class="content-tit"><strong>보도자료</strong> PRESS</h2>
                            <ul>
                                <li>
                                    <a href="http://www.sungdokorea.com/kr/customer/press.php?bgu=view&amp;bbs_data=aWR4PTEyNCZzdGFydFBhZ2U9Jmxpc3RObz0mdGFibGU9JmNvZGU9dGFiNV9jMiZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||">
                                        <span class="press-cate">이데일리</span>
                                        <strong class="press-tit">성도이엔지, W-재단 후시(Hooxi)캠페인에 기부금 전달</strong>
                                        <p class="press-content">성도이엔지가 9일 W-재단 ‘후시(Hooxi) 자연보전 프로젝트’를 위한 후원 릴레이 행사에 참여해 기부금 5천만 원을 전달했다.출처 )&nbsp;이데일리&nbsp; : http://www.edaily....</p>
                                        <span class="more-btn" title="더보기"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.sungdokorea.com/kr/customer/press.php?bgu=view&amp;bbs_data=aWR4PTEzJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT10YWI1X2MyJnNlYXJjaF9pdGVtPSZzZWFyY2hfb3JkZXI9||">
                                        <span class="press-cate">머니투데이</span>
                                        <strong class="press-tit">성도이엔지, 중국 신도시화 정책으로 우려 해소-신영</strong>
                                        <p class="press-content">신영증권은 10일 성도이엔지 (6,160원 상승10 -0.2%)에 대해 중국의 '신도시화 정책'이 호재로 작용할 것으로 예상했다. 주가를 억눌렀던 중국 부동산 사업 관련 우려가 점진적으로 해소될 것으로 내다봤다...</p>
                                        <span class="more-btn" title="더보기"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://www.sungdokorea.com/kr/customer/press.php?bgu=view&amp;bbs_data=aWR4PTEyJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT10YWI1X2MyJnNlYXJjaF9pdGVtPSZzZWFyY2hfb3JkZXI9||">
                                        <span class="press-cate">이투데이</span>
                                        <strong class="press-tit">성도이엔지, 13억원 자사주 매입…"주가안정"</strong>
                                        <p class="press-content">성도이엔지(대표자:서인수, 강창열)는 주가안정과 주주가치 제고를 위하여 발행주식총수의 1.35%인 약 13억원의 자기주식을 매입한다고 공시했다. 자사주 취득기간은 6월 10일부터 12월 09일까지 6개월이며 현...</p>
                                        <span class="more-btn" title="더보기"></span>
                                    </a>
                                </li>
                            </ul>
                            <a href="http://www.sungdokorea.com/kr/customer/press.php" class="press-more-btn"><img src="/resources/more_btn_white.png" alt="더보기"></a>
                        </div>
                        <div id="mainQuickLink">
                            <ul>
                                <li class="quick-link1"><a href="http://www.sungdokorea.com/kr/company/vision.php"><strong>경영이념 / 비전</strong><p>명실상부한 범세계적인 EPC EPCN 업체로 발돋움합니다</p></a></li>
                                <li class="quick-link2"><a href="http://www.sungdokorea.com/data/content/sungdo%20eng_brochure(2016.12.08).pdf" target="_blank" title="PDF OPEN" "=""><strong>E-브로슈어</strong><p>E-브로슈어입니다.<br>다운로드하실 수 있습니다.</p></a></li>
                                <li class="quick-link3"><a href="http://www.sungdokorea.com/kr/customer/inquiry.php"><strong>고객문의</strong><p>궁금하신 점은 문의 하시면<br>답변을 드리겠습니다</p></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
        </section>
        <!-- //content -->
        <nav id="rightBar">
            <i class="material-icons i-font"></i>
            <ul>
                <li class="on"><a href="http://www.sungdokorea.com/kr/#mainVisual"><span class="bullet"></span><p class="rightbar-bullet-txt"><strong>성도이엔지</strong><span>SUNGDOENG</span></p></a></li>
                <li><a href="http://www.sungdokorea.com/kr/#mainContent"><span class="bullet"></span><p class="rightbar-bullet-txt"><strong>사업소개</strong><span>BUSINESS INTRO</span></p></a></li>
                <li><a href="http://www.sungdokorea.com/kr/#mainNetworkCon"><span class="bullet"></span><p class="rightbar-bullet-txt"><strong>글로벌네트워크</strong><span>GLOBAL NETWORK</span></p></a></li>
                <li><a href="http://www.sungdokorea.com/kr/#mainBoardCon"><span class="bullet"></span><p class="rightbar-bullet-txt"><strong>고객지원</strong><span>CUSTOMER SUPPORT</span></p></a></li>
            </ul>
            <a href="http://www.sungdokorea.com/kr/#wrap" class="to-top-btn">TOP</a>
        </nav>
    </div>
    <!-- //container -->
    <!-- footer -->
    <footer id="footer">
        <div id="footerInner" class="area clearfix">
            <aside class="familysite-box">
                <a href="http://www.sungdokorea.com/kr/#none" class="family-open-btn">FamilySite <i class="material-icons"></i></a>
                <ul class="family-list">
                    <li><a href="http://stinc.co.kr/" target="_blank" title="새창으로열기">(주)에스티아이 </a></li>
                    <li><a href="http://www.sdenc.com/hwindex.aspx" target="_blank" title="새창으로열기">성도건설</a></li>
                    <li><a href="http://www.sdglovy.com/HG/index.asp" target="_blank" title="새창으로열기">성도무역</a></li>
                    <li><a href="http://www.hanchengguoji.cn/" target="_blank" title="새창으로열기">성도입덕지산</a></li>
                </ul>
            </aside>
            <span class="foot-logo"><img src="/resources/footer_logo.jpg" alt=""></span>
            <div class="footer-address">
                <p>서울특별시 강남구 영동대로 106길 42 (삼성동) 성도벤처타워 5F-7F</p>
                <dl><dt>E-mail: </dt><dd>sdeng@sungdokorea.com</dd></dl><dl><dt>Tel : </dt><dd>02-6244-5200</dd></dl><dl><dt>Fax: </dt><dd>02-6244-5388, 5399</dd></dl>
                <address>Copyright © SUNGDO. All right reserved. Design by giantsoft</address>
            </div>
        </div>
        <a href="http://www.sungdokorea.com/kr/#header" class="bottom-to-top-btn"><img src="/resources/images/top_arrow_btn.png" alt="상단으로"></a>
    </footer>
    <div class="modal-pop-bg"></div>
    <article class="modal-fixed-pop-wrapper">
        <div class="modal-fixed-pop-inner">
            <div class="modal-loading"><span class="loading"></span></div>
            <div class="modal-inner-box">
                <div class="modal-close-box"><a href="http://www.sungdokorea.com/kr/#" class="modal-close-btn"><img src="/resources/images/close_btn.png" alt="닫기"></a></div>
                <div class="modal-inner-content">
                    <!-- ajax 내용 -->
                </div>
            </div>
        </div>
    </article>
    <!-- //footer -->
</div>
<!-- //code -->


</body></html>