<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>QUST聊天室</title>
		<link rel="stylesheet" href="assets/css/amazeui.css" />
		<link rel="stylesheet" href="assets/css/core.css" />
		<link rel="stylesheet" href="assets/css/menu.css" />
		<link rel="stylesheet" href="assets/css/index.css" />
		<link rel="stylesheet" href="assets/css/admin.css" />
		<link rel="stylesheet" href="assets/css/page/typography.css" />
		<link rel="stylesheet" href="assets/css/page/form.css" />
		<link rel="stylesheet" href="assets/css/component.css" />

		<script src="assets/js/jquery.min.js"></script>
		<!--<script src="assets/js/amazeui.min.js"></script>-->
		<!-- UM相关资源 -->
		<link href="assets/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" charset="utf-8" src="assets/umeditor/umeditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="assets/umeditor/umeditor.min.js"></script>
		<script type="text/javascript" src="assets/umeditor/lang/zh-cn/zh-cn.js"></script>
	</head>

	<body>
		
		
		
		<!-- Start content -->
				<div class="content">

					<div class="am-g">
						<!-- Row start -->
						<div class="am-u-md-12">
							<div class="card-box" style="padding-bottom: 5px;">
								<div id="ChatBox" class="am-g am-g-fixed">
									<div class="am-u-lg-12" style="height:300px;border:1px solid #eee;overflow-y:scroll;">
										<ul id="chatContent" class="am-comments-list am-comments-list-flip">
											<li id="msgtmp" class="am-comment" style="display:none;">
												<a href="">
													<img ff="msgface" class="am-comment-avatar" src="assets/images/other.jpg" alt="" />
												</a>
												<div class="am-comment-main">
													<header class="am-comment-hd">
														<div class="am-comment-meta">
															<a ff="nickname" href="#link-to-user" class="am-comment-author">某人</a>
															<time ff="msgdate" datetime="2013-07-27T04:54:29-07:00" title="2013年7月27日 下午7:54 格林尼治标准时间+0800">2014-7-12 15:30</time>
														</div>
													</header>
													<div ff="content" class="am-comment-bd">此处是消息内容</div>
												</div>
											</li>
											<div id="tip_join" style="display:none;">
												<span ff="username">admin 加入聊天室</span>
											</div>
										</ul>
									</div>
								</div>
								<!-- 聊天内容发送区域 -->
								<div id="EditBox" class="am-g am-g-fixed" style="position: relative;width: 103.5%;">
									<!--style给定宽度可以影响编辑器的最终宽度-->
									<script type="text/plain" id="myEditor" style="width:100%;height:120px; z-index: -1!important;"></script>
									<p style="float: left; margin: 0; padding: 0; line-height: 36px;margin-top: 5px; color: gray;">
										<a href="#">广告位招租，联系电话：1780000000</a>
									</p>
									<input id="roomnameflag" type="hidden" value="qust" />
									<button id="send" type="button" class="am-btn am-btn-primary" style="float:right;margin-top:5px">发送</button>
								</div>
							</div>
						</div>
						<!-- col end -->
					</div>

				</div>
		
		
		

		<!--<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>-->
		<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
		<!--<script type="text/javascript" src="assets/js/app.js"></script>-->
		<script type="text/javascript" src="assets/js/blockUI.js"></script>
		<script type="text/javascript" src="assets/js/charts/echarts.min.js"></script>

		<script src="assets/js/page/chatroom.js" type="text/javascript" charset="utf-8"></script>

	</body>

	<script type="text/javascript">
		
		$(function() {

			//实例化编辑器
			var um = UM.getEditor('myEditor', {
				initialContent: "请输入聊天信息...",
				autoHeightEnabled: false,
				toolbar: [
					' emotion | bold italic underline | image video map | forecolor backcolor | removeformat |',
					'insertorderedlist insertunorderedlist | paragraph | fontfamily fontsize',
					'| justifyleft justifycenter justifyright justifyjustify |',
					'link unlink | source'
				]
			});
			
			//获取聊天室名称
			var roomname = getUrlParam("roomname");
			//获取用户名
			var nickname = getUrlParam("username");
			//获取头像路径
			var msgface = getUrlParam("face");
			
			var socket = new WebSocket("ws://${pageContext.request.getServerName()}:${pageContext.request.getServerPort()}${pageContext.request.contextPath}/websocket");
			//接收服务器的消息
			socket.onmessage = function(ev) {
				var obj = eval('(' + ev.data + ')');
				addMessage(obj);
			}
						
			window.onload = function () {
				//用户加入信息
				//构建一个标准格式的JSON对象
				var joinobj = JSON.stringify({
					type: 1,
					roomname: roomname,
					nickname: nickname
				});
				// 发送消息
				socket.send(joinobj);
			}
			
			
			
			
			$("#send").click(function() {
				if(!um.hasContents()) { // 判断消息输入框是否为空
					// 消息输入框获取焦点
					um.focus();
					// 添加抖动效果
					$('.edui-container').addClass('am-animation-shake');
					setTimeout("$('.edui-container').removeClass('am-animation-shake')", 1000);
				} else {
					//获取输入框的内容
					var txt = um.getContent();
					//构建一个标准格式的JSON对象
					var obj = JSON.stringify({
						type: 0,
						roomname: roomname,
						nickname: nickname,
						msgface: msgface,
						content: txt
					});
					
					// 发送消息
					socket.send(obj);
					// 清空消息输入框
					um.setContent('');
					// 消息输入框获取焦点
					um.focus();
				}

			});

		});

		//人名nickname，时间date，是否自己isSelf，内容content，头像是msgface
		function addMessage(msg) {
			//如果是本聊天室的消息就显示出来
			if (getUrlParam("roomname") == msg.roomname) {
				
				//如果是加入的信息
				if (msg.type == 1) {
					var join = $("#tip_join").clone(); //复制一份模板，取名为join
					join.show(); //设置join状态为显示
					join.appendTo("#chatContent"); //把join追加到聊天面板中
					join.find('[ff="username"]').html(msg.nickname + " 加入聊天室");
					$("#ChatBox div:eq(0)").scrollTop(999999); //滚动条移动至最底部
					
				} else {
					
					var box = $("#msgtmp").clone(); //复制一份模板，取名为box
					box.show(); //设置box状态为显示
					box.appendTo("#chatContent"); //把box追加到聊天面板中
					box.find('[ff="nickname"]').html(msg.nickname); //在box中设置昵称
					box.find('[ff="msgdate"]').html(msg.date); //在box中设置时间
					box.find('[ff="content"]').html(msg.content); //在box中设置内容
					box.find('[ff="msgface"]').attr("src",msg.msgface);//设置发送消息者头像
					box.addClass(msg.isSelf ? 'am-comment-flip' : ''); //右侧显示
					box.addClass(msg.isSelf ? 'am-comment-warning' : 'am-comment-success'); //颜色
					box.css((msg.isSelf ? 'margin-left' : 'margin-right'), "20%"); //外边距
					
					$("#ChatBox div:eq(0)").scrollTop(999999); //滚动条移动至最底部

				}
			}
		}
		
		
		
		
		//获取url中的参数
		function getUrlParam(name) {
		    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
		    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
		    if (r != null) return decodeURI(r[2]); return null; //返回参数值
		}
	</script>

</html>