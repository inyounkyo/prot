/* ----------
js
---------- */


jQuery(function($){
	$(window).scroll(function  () {
		var w_top = $(window).scrollTop();
		if ( w_top > 0 ) {
			$("#header").addClass("fixed");
		}else {
			$("#header").removeClass("fixed");
		}
	});

	/* 하단 TOP BTN */
	$(".to-top-btn,.bottom-to-top-btn").click(function  () {
		$("html, body").animate({scrollTop:0},600,"swing");
		return false; 
	});
	
	/* 패밀리사이트 */
	$("a.family-open-btn").click(function  () {
		$(this).siblings("ul").stop().slideToggle(200);
		return false;
	});
	$(".familysite-box").mouseleave(function  () {
		$(this).find("ul").stop().slideUp(200);
		return false;
	});

});
/*=============
	레이어팝업 ajax
=============*/
function layerPopupLoad(strUrl){
	$("html").css({
		"overflow-y":"hidden"
	});
	$(".modal-fixed-pop-wrapper").css({
		"display":"block",
		"overflow-y":"auto",
		"overflow-x":"hidden"
	});
	$(".modal-pop-bg").fadeIn();
	$.ajax({
		type: "POST",
		url: strUrl,
		data: "",
		success: function(resultText){
			$(".modal-fixed-pop-wrapper").find(".modal-inner-content").html(resultText);
		},
		error: function() {
			alert("호출에 실패했습니다.");
		},
		beforeSend:function(){ 
			$('.modal-loading').fadeIn(); 
		},
		complete:function(){ 
			$('.modal-loading').hide();
			$(".modal-close-btn").css("display","inline-block");
		}
	});
}
$(document).ready(function  () {
	$(".modal-close-btn").click(function  () {
		$(".modal-inner-content").empty();
		$(".modal-fixed-pop-wrapper").css("display","none");
		$("html").css({
			"overflow-y":"scroll"
		});
		$(".modal-fixed-pop-wrapper").css({
			"display":"none",
			"overflow-y":"hidden"
		});
		$(".modal-pop-bg").fadeOut();
		$(".modal-close-btn").css("display","none");
		return false;
	});
});