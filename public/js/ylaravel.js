//由于之后ajax请求需要加入csrf验证,在ajax启动时加入csrf验证
$.ajaxSetup({
	headers: {
		'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content')
	}
})

//富文本编辑器上传图片的设置
var editor = new wangEditor('content');
if(editor.config){
	editor.config.uploadImgUrl = 'image/upload';
	// 设置 headers（举例）
	editor.config.uploadHeaders = {
	    'X-CSRF-TOKEN' : $('meta[name="csrf-token"]').attr('content')
	};
	editor.create();
}

//这里是个人设置头像的js
$(".preview_input").change(function (event) {
    var file = event.currentTarget.files[0];
    var url = window.URL.createObjectURL(file);
    $(event.target).next(".preview_img").attr("src", url);
});

//关注按钮
$(".like-button").click(function(event){
	var target = $(event.target);
	var current_like = target.attr('like-value');
	var user_id = target.attr('like-user');
	if(current_like == 1) {
		//取消关注
		$.ajax({
			url: user_id + "/unfan",
			method: 'POST',
			dataType: 'json',
			success: function(data) {
				if(data.error != 0) {
					alert(data.msg);
					return;
				}
				
				target.attr("like-value", 0);
				target.text("关注");
			}
		})
	}else {
		//关注
		$.ajax({
			url: user_id + "/fan",
			method: 'POST',
			dataType: 'json',
			success: function(data) {
				if(data.error != 0) {
					alert(data.msg);
					return;
				}
				
				target.attr("like-value", 1);
				target.text("取消关注");
			}
		})
	}
})
