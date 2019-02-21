// JavaScript Document
(function($){
	$.zAutocomplete = function(options){
		console.log("Hi zAutocomplete");
		var defaults = {
				"keyword" 	: "#keywords",       // Id của ô textbox mà mình sẽ nhập vào
				"results" 	: ".results",		 // Hiện thị kết quả
				"mID"		: "#mID",			 // Ô input ẩn
				"text"		: "Enter keyword here...",	// Giá trị hiện thị mặc định của ô input tìm kiếm
				"minChar"	: 2,						// Số kí tự tối thiểu, có ít nhất 2 ký tự thì mới tìm kiếm trong DB
				"records" 	: 5,						// Hiện thị bao nhiêu kết quả khi tìm kiếm được trong DB
				"linkType"	: false						// Khi hiện thị ra danh sách của kết quả thì có gắn link vào cho các kết quả đó hay không
			};
		var options 	= $.extend(defaults,options);
		
		//Khai bao cac bien trong Plugin
		var txtKeyword 	= $(options.keyword);
		var results 	= $(options.results);
		var txtMID 		= $(options.mID);
		
		//Goi cac ham chay mac dinh trong Plugin
		addValue();
		//setResultPosition();
		
		txtKeyword.on('focus click',function(e){
			if($(this).val() == options.text){
				$(this).val('').css({color: '','font-style': ''});
			}
		});
		
		txtKeyword.on("blur", function(e){
				addValue();
				results.delay(200).slideUp(300);
		});
		
		txtKeyword.on("keyup", function(e){
			if($(this).val().length >= options.minChar){
				// console.log($(this).val());
				$.ajax({
					url		: "files/getdata.php",
					type	: "POST",
					dataType: "json",            				// Kiểu dữ liệu trả về là 1 đối tượng json
					data	: {									// Dữ liệu truyền lên server
								"keywords": $(this).val(),
								"limit": options.records
							}
					
				}).done(function(data){
					setResultPosition();
					var list = listItem(data);
					results.html(list);
					
					var selector = options.results + " ul li";
					//console.log($(selector));
					$(selector).on("mouseenter mouseleave",function(e){
						$(this).toggleClass("bg02");
					});
					
					if(options.linkType == false){
						$(selector).on("click", function(e){
							//console.log($(this).attr("item-id"));
							//console.log($(this).text());
							txtKeyword.val($(this).text());
							txtMID.val($(this).attr("item-id"));
							
						});
					}
				});
			}
		});
		
		function listItem(data){
			//console.log("list Item");
			//console.log(data.length);
			var str = '';
			str = "<ul>";
			if(data.length > 0){	
				console.log(data);
				$.each(data,function(i,val){
					var pTitle 	= val.name;
					var pLink 	= "product.php?id=" + val.id;
					var pID		= val.id;
					
					if(options.linkType == false){
						str += '<li item-id="' + pID + '" title="' + pTitle + '">' 
								+  pTitle + '</li>';
					}else{
						str += '<li title="' + pTitle + '">' 
								+ '<a href="' + pLink + '">' +  pTitle + '</a>' 
								+ '</li>';
					}
				});
			}else{
				str += '<li>No records</li>';
			}
			
			str += "</ul>";
			return str;
		}
		
		function setResultPosition(){
			//console.log(txtKeyword.offset());	
			results.css({
					left	: txtKeyword.offset().left,
					top		: txtKeyword.offset().top + txtKeyword.outerHeight(),
					width	: txtKeyword.innerWidth(),
					position: "absolute",
					display : "block"
					
				});
		}
		
		function addValue(){
			if(txtKeyword.val() == ''){
				txtKeyword.val(options.text).css({color: "#999","font-style":"italic"}); // Kiểm tra nếu giá trị trong ô input là rỗng thì hiển thị text mặc định
			}
		}
	}
	
})(jQuery);

$(document).ready(function(e) {
	var obj = {
			"linkType" : false
		};
    $.zAutocomplete(obj);
});