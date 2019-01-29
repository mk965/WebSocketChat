window.onload = function () {
	var type = getUrlParam("type");
	if (type == "create") {
		$(".black").css("display","block");
		$(".chuangkou").css("display","block");
		$("#chuangkou_name").html("发布新公告");
	}
}

//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}


//发布公告按钮
$(".btn_createGonggao").click(function () {
	$(".black").css("display","block");
	$(".chuangkou").css("display","block");
	
	$("#chuangkou_name").html("发布新公告");
	
});


//每个公告后面的       编辑按钮
$(".btn_editRoom").click(function () {
	//找到按钮的父节点的父节点的父节点的所有兄弟节点
	var a = $(this).parent().parent().parent().prevAll();
	var title = a.eq(3).text();
	var neirong = a.eq(2).text();
	var ggid = a.eq(4).text();
	//弹出编辑窗口
	$(".black").css("display","block");
	$(".chuangkou").css("display","block");
	$("#chuangkou_name").html("编辑公告");
	$("#chuangkou_ggid").val(ggid);
	
	$("#chuangkou_ggtitle").val(title);
	$("#chuangkou_ggneirong").val(neirong);
});


//窗口内的关闭按钮
$("#btn_closechuangkou").click(function () {
	$(".black").css("display","none");
	$(".chuangkou").css("display","none");
});
//点击黑色遮挡
$(".black").click(function () {
	$(".black").css("display","none");
	$(".chuangkou").css("display","none");
});


//窗口内的保存按钮
$("#btn_savechuangkou").click(function () {
	
	//提交修改的内容
	if (type != null) {//type==null为编辑room
		$.ajax({
			type: 'POST',
			url: 'admin/updateNotice',
			contentType : "application/x-www-form-urlencoded",
			data: {
				title :  $("#chuangkou_ggtitle"),
				content : $("#chuangkou_ggneirong")
			},
			success: (function(insert) {
				console.log("资料修改成功！");
			}),
			error: (function() {
				alert("资料修改失败，请稍后重试！");
			})
		
		});
	} else {
		$.ajax({
			type: 'POST',
			url: 'admin/addnotice',
			contentType : "application/x-www-form-urlencoded",
			data: {
				title :  $("#chuangkou_ggtitle"),
				content : $("#chuangkou_ggneirong")
			},
			success: (function(insert) {
				console.log("公告发布成功！");
			}),
			error: (function() {
				alert("房间创建失败，请稍后重试！");
			})
		
		});
	}

	window.location.reload();
	
});

