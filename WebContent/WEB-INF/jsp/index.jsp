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
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">
			<div class="am-topbar-left am-hide-sm-only">
				<a href="index.html" class="logo"><span>QUST <span>聊天室</span></span><i class="zmdi zmdi-layers"></i></a>
			</div>

			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li>
						<h4 class="page-title">聊天室大厅</h4>
					</li>
				</ul>
				<marquee class="topgonggao">
					<span>公告：用户“张三李四”严重违反聊天室用户守则，被永久封号！</span>
				</marquee>
				<ul class="am-nav am-navbar-nav am-navbar-right">
					<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
					<li class="hidden-xs am-hide-sm-only">
						<form role="search" class="app-search">
							<input type="text" placeholder="搜索..." class="form-control">
							<a href=""><img src="assets/img/search.png"></a>
						</form>
					</li>
				</ul>
			</div>
		</header>
		<!-- end page -->

		<div class="admin">
			<!--<div class="am-g">-->
			<!-- ========== Left Sidebar Start ========== -->
			<!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
				<div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
			<!-- sidebar start -->
			<div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas" style="overflow: hidden;">
				<div class="am-offcanvas-bar admin-offcanvas-bar" style="height: 100%;width: 100%;overflow-y: auto;overflow-x: hidden;">
					<!-- User -->
					<div class="user-box am-hide-sm-only">
						<div class="user-img">
							<img src="${userinfo.user_face }" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive" id="myface">
							<div class="user-status online"><i class="am-icon-check-circle" aria-hidden="true"></i></div>
						</div>
						<h5><span id="myname">${userinfo.user_name }</span> </h5>
						<ul class="list-inline">
							<li>
								<span class="fa fa-cog" aria-hidden="true" id="myemail">${userinfo.user_mail }</span>
							</li><br />
							<li>
								<span class="fa fa-cog" aria-hidden="true" id="myqianming">${userinfo.user_qianming }</span>
							</li>
						</ul>
						<ul class="list-inline">
							<li>
								<a href="javascriot:;" class="text-custom">
									<button type="button" class="am-btn am-btn-xs am-btn-secondary am-round" id="btn_editziliao">
										<span class="am-icon-edit"></span> 编辑资料
									</button>
								</a>
							</li>
							<li>
								<a href="logout" class="text-custom">
									<button type="button" class="am-btn am-btn-xs am-btn-danger am-round" id="btn_logout">
										<span class="am-icon-sign-out"></span> 退出
									</button>
								</a>
							</li>
						</ul>
					</div>
					<!-- End User -->

					<ul class="am-list admin-sidebar-list am-padding-bottom-lg">
						<li>
							<a href="index.html"><span class="am-icon-home"></span> 聊天室大厅</a>
						</li>
	
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-users"></span> 各省校友 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub" id="collapse-nav">
								<li>
									<a href="#">山东校友</a>
								</li>
								<li>
									<a href="#">北京校友</a>
								</li>
								<li>
									<a href="#">上海校友</a>
								</li>
								<li>
									<a href="#">江苏校友</a>
								</li>
								<li>
									<a href="#">浙江校友</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-institution"></span> 学院聊天室 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub" id="collapse-nav2">
								<li>
									<a href="#">信息学院</a>
								</li>
								<li>
									<a href="#">外语学院</a>
								</li>
								<li>
									<a href="#">机电学院</a>
								</li>
								<li>
									<a href="#">自动化学院</a>
								</li>
								<li>
									<a href="#">浙江校友</a>
								</li>
								<li>  </li>
							</ul>
						</li>
						
						
<!--						
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 表格 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub" id="collapse-nav1">
								<li>
									<a href="html/table_basic.html" class="am-cf"> 基本表格</span>
									</a>
								</li>
								<li>
									<a href="html/table_complete.html">完整表格</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 统计图表 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub" id="collapse-nav2">
								<li>
									<a href="html/chart_line.html" class="am-cf"> 折线图</span>
									</a>
								</li>
								<li>
									<a href="html/chart_columnar.html" class="am-cf"> 柱状图</span>
									</a>
								</li>
								<li>
									<a href="html/chart_pie.html" class="am-cf"> 饼状图</span>
									</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 表单 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub" id="collapse-nav5">
								<li>
									<a href="html/form_basic.html" class="am-cf"> 基本表单</a>
								</li>
								<li>
									<a href="html/form_validate.html">表单验证</a>
								</li>
							</ul>
						</li>-->
					</ul>
				</div>
			</div>
			<!-- sidebar end -->

			<!--</div>
			</div>
		</div>-->
			<!-- ========== Left Sidebar end ========== -->

			<!--	<div class="am-g">-->
			<!-- ============================================================== -->
			<!-- Start right Content here -->
			<div class="content-page">
				
				
				<iframe id="iframe" src="index_home.html" frameborder="0" width="100%" height="710px"></iframe>
				
				
			</div>
			<!-- end right Content here -->
			<!--</div>-->
		</div>

		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		
		
		<div class="black"></div>
		<div class="ziliao card-box">
			<h4>修改资料</h4>
			<hr />
			<!-- User -->
			<div class="user-box am-hide-sm-only">
				
				<div class="am-g">
					<div class="am-u-md-4">
						<div class="user-img">
							<img src="${userinfo.user_face }" alt="user-img" class="img-circle img-thumbnail img-responsive" id="ziliao_myface">
						</div>
						<h4>我的头像</h4>
					</div>
					<div class="am-u-md-8 face-list">
						<ul>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face1.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face2.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face3.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face4.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face5.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face6.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face7.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
							<li>
								<div class="user-img">
									<img src="assets/img/face/face8.jpg" alt="user-img" class="img-circle img-thumbnail img-responsive face-list-item">
								</div>
							</li>
						</ul>
					</div>
				</div>
				
				<br />
				<span>我的昵称：</span>
				<input value="游客" name="user_name" id="ziliao_myname" />
				<br />
				<span>个性签名：</span>
				<input value="我就是我，不一样的烟火" name="user_name" id="ziliao_qianming" />
				<br /><br />
				<a href="#" class="text-custom">
					<button type="button" class="am-btn am-btn-xs am-btn-danger am-round" id="btn_closeziliao">
						<span class="am-icon-close"></span> 关闭
					</button>
				</a>
				<a href="#" class="text-custom">
					<button type="button" class="am-btn am-btn-xs am-btn-secondary am-round" id="btn_saveziliao">
						<span class="am-icon-save"></span> 保存
					</button>
				</a>

			</div>
			<!-- End User -->
		</div>
		
		
		
		
		<!--<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>-->
		<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
		<!--<script type="text/javascript" src="assets/js/app.js"></script>-->
		<script type="text/javascript" src="assets/js/blockUI.js"></script>
		<script type="text/javascript" src="assets/js/charts/echarts.min.js"></script>
		
		<script src="assets/js/page/home.js" type="text/javascript" charset="utf-8"></script>
		
	</body>

</html>