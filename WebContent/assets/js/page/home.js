//编辑资料按钮
$("#btn_editziliao").click(function () {
	$(".black").css("display","block");
	$(".ziliao").css("display","block");
});

//退出按钮
$("#btn_logout").click(function () {
	
	
});

//关闭资料卡按钮
$("#btn_closeziliao").click(function () {
	$(".black").css("display","none");
	$(".ziliao").css("display","none");
});
$(".black").click(function () {//点击黑色遮罩也关闭资料卡
	$(".black").css("display","none");
	$(".ziliao").css("display","none");
});

//保存按钮
$("#btn_saveziliao").click(function () {
	console.log("修改資料");
	//向服务器发送填写的数据
	ziliao_save();
	
	$("#myface").attr("src",$("#ziliao_myface").attr("src"));
	$("#myname").text( $("#ziliao_myname").val());
	$("#myqianming").text($("#ziliao_qianming").val());
	
	console.log($("#myname").text());
	console.log($("#ziliao_myname").val());
	console.log($("#myqianming").text());
	console.log($("#ziliao_qianming").val());
	
	$(".black").css("display","none");
	$(".ziliao").css("display","none");
});


//点击资料卡内的头像
$(".face-list-item").click(function () {
	$(".face-list-item").removeClass("face-bg");
	$(this).addClass("face-bg");
	$("#ziliao_myface").attr("src",$(this).attr("src"));
});



// 作者：mencre
// 时间：2017-09-26 17:45
// 描述：提交修改的资料到服务器
function ziliao_save() {
	var dataa = {
		'userface': $("#ziliao_myface").attr("src"),
		'username': $("#ziliao_myname").val(),
		'userqianming': $("#ziliao_qianming").val()
	}
	/*$.ajax({
		type: 'POST',
		url: 'updateUserInfo',
		data:  JSON.stringify({ "user_name":"23"}),
		dataType: "json",
		contentType:'application/json;charset=utf-8',
		success: (function(insert) {
			console.log("资料修改成功！");
		}),
		error: (function(XMLHttpRequest, textStatus, errorThrown) {
            alert(XMLHttpRequest.status);
            alert(XMLHttpRequest.readyState);
            alert(textStatus);
		}
		)

	});*/
	$.ajax({
	url : "updateUserInfo",
	type : "POST",
	contentType : "application/x-www-form-urlencoded",
	data : {user_face: $("#ziliao_myface").attr("src"),
		user_name: $("#ziliao_myname").val(),
		user_qianming: $("#ziliao_qianming").val(),
		user_mail: $("#myemail").text()
	},
	//dataType : "text",
	success : function(result, status, req) {
	    $(".noticeInfo").css("display", "block");
	},
	error : function(req, status, reason) {
	$(".noticeInfo").css("display", "block").text('Error:' + reason);
	  }
	})
}





//各聊天室之间的跳转
$(".admin-parent ul li a").click(function () {
	$(".page-title").html($(this).text() + "聊天室");
	$("#iframe").attr("height","98%");
	$("#iframe").attr("src","index_chatroom.html?roomname=" + $(this).text() + "&username=" + $("#myname").text() + "&face=" + $("#myface").attr("src"));
});