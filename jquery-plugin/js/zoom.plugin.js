// JavaScript Document
(function($){
	$.fn.zoomIt = function(options){ /** hoặc có thể đặt tên là settings - thường là 1 đối tượng, vì 1 đối tượng có thể 
										lưu trữ nhiều kiểu dữ liệu khác nhau  **/
		
		//0. Khai báo bien so su dung trong plugin
		var defaults;	// là 1 đối tượng(mặc định), chứa thông tin mặc định khi mình không truyền giá trị vào trong options
		var newWidth, newHeight;
		
		//1. Khai bao cac gia tri mac dinh trong plugin
			/** 
				- 3 giá trị truyền vào để thay đổi kích thước của 1 đối tượng, nếu mà giá trị both mà có giá trị khác 100
					thì sẽ ưu tiên cho phần both trước
				- Còn khi giá trị both bằng 100 còn giá trị with và height không bằng 100 thì xử lý dựa trên width và height
			*/
		defaults = {
				width	: 100,	// Tương ứng với 100%, phần trăm chiều rộng của đối tượng
				height	: 100,	// Phần trăm chiều cao của đối tượng
				both	: 100	// Cùng tăng/giảm độ rộng và độ dài giống nhau
			}
		
		options = $.extend(defaults,options);	/** Nhập phần mặc định(defaults) và phần truyền vào(options) để được 1 giá trị dùng để 
												sử lý logic cho phần xử lý  */
		console.log(options);
		console.log(defaults);
		
		if(options.both != 100){
			newWidth = $(this).width() * options.both / 100;
			newHeight = $(this).height() * options.both / 100;
		}else{
			newWidth = $(this).width() * options.width / 100;
			newHeight = $(this).height() * options.height / 100;
		}
		
		$(this).animate({width:newWidth, height:newHeight}, 500);
		
		return this; /** Sau khi thay đổi kích thước của đối tượng, ta có thể sử dụng tiếp các phương thức của jQuery cung cấp
						this chính là đối tượng box sau khi đã được thay đổi kích thước	
						*/
	};

})(jQuery);

$(document).ready(function(){
	$("#zoomIn").click(function(e) {
        $("#box").zoomIt({both: 80})
				 .removeClass("bg01")
				 .addClass("bg02");
    });
	/*
	$("#zoomIn").click(function(e) {
        $("#box").zoomIt({width: 80, height: 70})
				 .removeClass("bg01").addClass("bg02");
    });
	*/
	$("#zoomOut").click(function(e) {
        $("#box").zoomIt({width: 120, height: 130})
				 .removeClass("bg02")
				 .addClass("bg01");
    });
});