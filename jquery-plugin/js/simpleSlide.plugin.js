// JavaScript Document
(function($){
	$.simpleSlide = function(selector, options){
		//console.log("Hi simpleSlide plugin");
		
		var defaults;
		defaults = {
				'itemDefault' 	: 0,	 // Khi slide hiển thị ảnh lên thì nó sẽ hiển thị hình ảnh nào lên đầu tiên. 0 là phần tử đầu tiên
				'delay'			: 2000,	 // Thời gian cần để ẩn hình thứ nhất và hiện lên hình tiếp theo
				'fadeSpeed'		: 1000,	 // Tốc độ để hiển thị và hiển lên hình ảnh --> fadeSpeed là time cần để biến mất hay hiện thị hình ảnh
				'from'			: 'az',	 // Chiều hiện thị 1 - 2 - 3 - 4 - 5 - 1 ...
				'auto'			: true	 // Khi gọi Plugin lên thì các hình sẽ chuyển động, còn không thì chỉ hiện hình mặc định lên thôi
			};
		options = $.extend(defaults,options);
		
		// Khai báo các biến được sử dụng trong Plugin
		var title 	= $(selector).find("div.title");		
		var i 		= options.itemDefault;	
		var imgs	= $(selector).children("img"); // Lấy ra tập hợp các hình ảnh, chỉ số của phần tử con là 0 -> n
		var count	= imgs.length; // Đếm xem có bao nhiêu hình ảnh
		
		imgs.eq(i).show();
		title.text(imgs.eq(i).attr("title")).show().css("opacity","0.7");		
		//console.log(count);
		if(options.auto == true){
			setInterval(function(){	
				imgs.eq(i).fadeOut(options.fadeSpeed);
				if(options.from == 'az'){
					i = (i + 1 == count)? 0:i+1;
				}else{
					i = (i == 0)? count-1:i-1;
				}
				imgs.eq(i).fadeIn(options.fadeSpeed);
				title.text(imgs.eq(i).attr("title")).show().css("opacity","0.7");	//Thuộc tính title là thuộc tính mình tự thêm vào
			},options.delay);
		}
	};
	
})(jQuery);

$(document).ready(function(e) {
	// $("#box").zoomIt({width: 120, height: 130})
	$.simpleSlide("#slide",{'itemDefault': 2,'from': 'az','auto': true});
});