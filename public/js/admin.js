$.ajaxSetup({
	headers: {
		'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	}
});

//文章审核功能
$(".post-audit").click(function(event) {
	target = $(event.target);
	var post_id = target.attr("post-id");
	var status = target.attr("post-action-status");
	
	$.ajax({
		url: "posts/" + post_id + "/status",
		method: "POST",
		data: {"status": status},
		dataType: "json",
		success: function(data) {
			if(data.error != 0) {
				alert(data.msg);
				return;
			}
			
			target.parent().parent().remove();
		}
	});
});

//删除专题功能
$(".resource-delete").click(function(event) {
	if(confirm("确定执行删除操作吗?") == false) {
		return;
	}
	
	var target = $(event.target);
	event.preventDefault();
	var url = $(target).attr('delete-url');
	
	$.ajax({
		url: url,
		method: "POST",
		data: {"_method": 'DELETE'},
		dataType: "json",
		success: function(data) {
			if(data.error != 0) {
				alert(data.msg);
				return;
			}
			
			window.location.reload();
		}
	});
});