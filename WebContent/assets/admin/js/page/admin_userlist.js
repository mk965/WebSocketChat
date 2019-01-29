var type = getUrlParam("type");
window.onload = function () {
	if (type == "create") {
		$(".black").css("display","block");
		$(".chuangkou").css("display","block");
		$("#chuangkou_name").html("添加用户");
	}
}

//获取url中的参数
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}


//创建聊天室按钮
$(".btn_createRoom").click(function () {
	$(".black").css("display","block");
	$(".chuangkou").css("display","block");
	
	$("#chuangkou_name").html("添加用户");
	
});


//每个聊天室后面的       编辑按钮
$(".btn_editRoom").click(function () {
	//找到按钮的父节点的父节点的父节点的所有兄弟节点
	var a = $(this).parent().parent().parent().prevAll();
	var username = a.eq(4).text();
	var leibie = a.eq(3).text();
	var email = a.eq(2).text();
	var userid = a.eq(5).text();
	
	//弹出编辑窗口
	$(".black").css("display","block");
	$(".chuangkou").css("display","block");
	$("#chuangkou_name").html("编辑用户资料");
	$("#chuangkou_userid").val(userid);
	
	$("#chuangkou_username").val(username);
	$("#chuangkou_userlb option[value=" + leibie + "]").attr("selected",true);
	$("#chuangkou_useremail").val(email);
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
	if (type != null) {//type==null为编辑用户
		$.ajax({
			type: 'POST',
			url: 'admin/updateUserInfo',
			contentType : "application/x-www-form-urlencoded",
			data: {
				user_face: "assets/img/face/face1.jpg",
				user_name: $("#chuangkou_username"),
				user_qianming: "我爱聊天室！",
				user_mail: $("#chuangkou_useremail")
			},
			success: (function(insert) {
				console.log("用户修改成功！");
			}),
			error: (function() {
				alert("资料修改失败，请稍后重试！");
			})
		
		});
	} else {
		$.ajax({
			type: 'POST',
			url: 'admin/addUser',
			contentType : "application/x-www-form-urlencoded",
			data: {
				user_face: "assets/img/face/face1.jpg",
				user_name: $("#chuangkou_username"),
				user_qianming: "我爱聊天室！",
				user_mail: $("#chuangkou_useremail")
			},
			success: (function(insert) {
				console.log("用户创建成功！");
			}),
			error: (function() {
				alert("资料修改失败，请稍后重试！");
			})
		
		});
	}

	window.location.reload();
	
});