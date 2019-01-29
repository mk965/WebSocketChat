<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<title>QUST聊天室 - 后台管理</title>
		<meta name="description" content="QUST聊天室 - 后台管理" />
		<meta name="keywords" content="index" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
		<meta name="renderer" content="webkit" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="icon" type="image/png" href="../assets/admin/i/favicon.png" />
		<link rel="apple-touch-icon-precomposed" href="../assets/admin/i/app-icon72x72@2x.png" />
		<meta name="apple-mobile-web-app-title" content="QUST聊天室 - 后台管理" />
		<link rel="stylesheet" href="../assets/admin/css/amazeui.min.css" />
		<link rel="stylesheet" href="../assets/admin/css/admin.css" />
		<script src="../assets/admin/js/jquery.min.js"></script>
		<script src="../assets/admin/js/app.js"></script>
	</head>

	<body>
		<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="../http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->
		<header class="am-topbar admin-header">
			<div class="am-topbar-brand">
				<img src="../assets/admin/i/logo.png" />
			</div>
			<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
				<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">
					<li class="am-dropdown tognzhi" data-am-dropdown=""> <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle=""> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
						<ul class="am-dropdown-content">
							<li class="am-dropdown-header">所有消息都在这里</li>
							<li>
								<a href="../#">用户反馈 <span class="am-badge am-badge-danger am-round">4</span></a>
							</li>
							<li>
								<a href="../#">用户投诉 <span class="am-badge am-badge-danger am-round">2</span></a>
							</li>
						</ul>
					</li>
					<li class="kuanjie">
						<a href="admin_roomlist.html" target="iframe">聊天室管理</a>
						<a href="admin_userlist.html" target="iframe">用户管理</a>
						<a href="#">广告管理</a>
						<a href="#">系统设置</a>
					</li>
					<li class="soso">
						<p>
							<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
								<option value="b">全部</option>
								<option value="o">聊天室</option>
								<option value="o">用户</option>
							</select>
						</p>
						<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="" /></p>
						<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
					</li>
					<li class="am-hide-sm-only" style="float: right;">
						<a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a>
					</li>
				</ul>
			</div>
		</header>
		<div class="am-cf admin-main">
			<div class="nav-navicon admin-main admin-sidebar">
				<div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;">
					欢迎系统管理员：admin
				</div>
				<div class="sideMenu">
					<h3 class="am-icon-flag"><em></em> <a href=""> 聊天室管理</a></h3>
					<ul>
						<li>
							<a href="admin_roomgk.html" target="iframe">聊天室概况</a>
						</li>
						<li>
							<a href="admin_roomlist.html" target="iframe">聊天室列表</a>
						</li>
						<li>
							<a href="admin_roomlist.html?type=create" target="iframe">新增聊天室</a>
						</li>
					</ul>
					<h3 class="am-icon-users"><em></em> <a href="">用户管理</a></h3>
					<ul>
						<li>
							<a href="admin_usergk.html" target="iframe">用户概况</a>
						</li>
						<li>
							<a href="admin_userlist.html" target="iframe">用户列表</a>
						</li>
						<li>
							<a href="admin_userlist.html?type=create" target="iframe">新增用户</a>
						</li>
					</ul>
					<h3 class="am-icon-volume-up"><em></em> <a href=""> 公告管理</a></h3>
					<ul>
						<li>
							<a href="admin_gonggaolist.html" target="iframe">公告列表</a>
						</li>
						<li>
							<a href="admin_gonggaolist.html?type=create" target="iframe">新增公告</a>
						</li>
					</ul>
					<h3 class="am-icon-cart-plus"><em></em> <a href=""> 广告管理</a></h3>
					<ul>
						<li>
							<a href="admin_adgk.html" target="iframe">广告展示数据</a>
						</li>
						<li>
							<a href="#">广告位管理</a>
						</li>
						<li>
							<a href="#">赞助商列表</a>
						</li>
					</ul>
					
					<script type="text/javascript">
						jQuery(".sideMenu").slide({
							titCell: "h3", //鼠标触发对象
							targetCell: "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
							effect: "slideDown", //targetCell下拉效果
							delayTime: 300, //效果时间
							triggerTime: 150, //鼠标延迟触发时间（默认150）
							defaultPlay: false, //默认是否执行效果（默认true）
							returnDefault: false //鼠标从.sideMen移走后返回默认状态（默认false）
						});
						
					</script>
				</div>
				<div class=" admin-content">
					<div class="daohang">
						<ul>
							<li><a href="admin_home.html" target="iframe"><button type="button" class="am-btn am-btn-default am-radius am-btn-xs"> 首页 </button></a></li>
							<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">聊天室管理<a href="../javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">&times;</a></button></li>
						</ul>
					</div>
					<div class="admin" style="margin: 0; padding: 0; border: none; position: fixed; right: 0;bottom: 0;overflow-y:hidden; overflow-x:hidden;">
						
						
						<iframe name="iframe" src="admin_home.html" width="100%" height="100%"></iframe>
					
					
					</div>
				</div>
			</div>
			<!--[if lt IE 9]>
			<script src="../http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
			<script src="../http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
			<script src="../assets/admin/js/polyfill/rem.min.js"></script>
			<script src="../assets/admin/js/polyfill/respond.min.js"></script>
			<script src="../assets/admin/js/amazeui.legacy.js"></script>
			<![endif]-->
			<!--[if (gte IE 9)|!(IE)]><!-->
			<script src="../assets/admin/js/amazeui.min.js"></script>
			
			<script type="text/javascript" src="../assets/admin/js/charts/echarts.min.js" ></script>
			<script src="../assets/admin/js/charts/charts.js" type="text/javascript" charset="utf-8"></script>
			<!--<![endif]-->
		</div>
	</body>

</html>