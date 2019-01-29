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







