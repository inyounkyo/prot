/* ----------
js
---------- */


jQuery(function($){
	// 메인 비주얼 높이값
	var w_height = $(window).height();
	var w_width = $(window).width();
	if ( w_height > 700 &&  w_width >768) {
		$("#mainVisual .visual-item > img").height(w_height);
	}else if ( w_width < 768 ) {
		$("#mainVisual .visual-item > img").css("height","280");
	}
	

	$(window).resize(function  () {
		w_height = $(window).height();
		w_width = $(window).width();
		if ( w_height > 700 &&  w_width >768) {
			$("#mainVisual .visual-item > img").height(w_height);
		}else if ( w_width < 768 ) {
			$("#mainVisual .visual-item > img").css("height","280");
		}
	});
	
	// 스크롤아이콘모션
	var $moveTxt = $('.scroll-icon');
	var moveTEXT = setInterval(function() {
		$moveTxt.animate({opacity:'.5',"bottom":'+=20px'}).animate({opacity:'1',"bottom":'-=20px'})
	}, 1000);
	$moveTxt.click(function  () {
		$("html, body").animate({scrollTop: $("#productContent").offset().top + 50 },600,"swing");
		return false;
	});

	// 메인 왼쪽 메뉴
	$("#rightBar li a").click(function  () {
		var goDiv = $(this).attr("href");
		var goDivTop = $(goDiv).offset().top;

		
		$("html, body").animate({scrollTop:goDivTop -106},600,"easeOutQuad");
		
		return false;
	});
	$(window).scroll(function  () {
		var s_top = $(window).scrollTop();
		
		var last = $(window).height() / 2;
		var menuCount=$("#rightBar li").size();
		var nav= new Array();

		for(var i=0;i<menuCount;i++){
			nav[i]="nav"+i;
			if(i==0){
				nav[i]=$($("#rightBar li").eq(i).find("a").attr("href")).offset().top - 106;
			}else if (i==menuCount-1) {
				nav[i]=$($("#rightBar li").eq(i).find("a").attr("href")).offset().top - last;
			}else{
				nav[i]=$($("#rightBar li").eq(i).find("a").attr("href")).offset().top - 107;
			}
		}
		
		$("#rightBar li").each(function  (idx) {
			if( s_top >= nav[idx] ){
				$('#rightBar li').removeClass('on');
				$('#rightBar li').eq(idx).addClass('on');
			};
		});
	});
});
