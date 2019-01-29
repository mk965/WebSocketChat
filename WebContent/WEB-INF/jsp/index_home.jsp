<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<div class="content">
			<!-- Row start -->
			<div class="am-g">

				<!-- col start -->
				<div class="am-u-md-8">
					<div class="card-box">
						<h4 class="header-title m-t-0 m-b-30">公告</h4>
						<form class="am-form">
							<table class="am-table am-table-striped am-table-hover table-main">
								<thead>
									<tr>
										<th class="table-id">ID</th>
										<th class="table-title">标题</th>
										<th class="table-author am-hide-sm-only">发布者</th>
										<th class="table-date am-hide-sm-only">发布日期</th>
									</tr>
								</thead>
								<tbody>
							<c:forEach var="ani" items="${notices}" varStatus="status" begin="1" end="6" >
									<tr>
										<td>${status.index }</td>
										<td>
											<a href="#">
												<div class="gonggao">${ani.title }</div>
											</a>
										</td>
										<td class="am-hide-sm-only">${ani.notice_author }</td>
										<td class="am-hide-sm-only">${ani.notice_time }</td>
									</tr>
							</c:forEach>
								
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<!-- col end -->

				<!-- col start -->
				<div class="am-u-md-4">
					<div class="card-box">
						<h4 class="header-title m-t-0 m-b-30">新用户</h4>
						<div class="inbox-widget nicescroll" style="height: 315px; overflow: hidden; outline: none;" tabindex="5000">
							<c:forEach var="ani" items="${userlist}" varStatus="status" begin="1" end="6" >
								<a href="#">
									<div class="inbox-item">
										<div class="inbox-item-img"><img src="${ani.user_face }" class="img-circle" alt=""></div>
										<p class="inbox-item-author">${ani.user_name }</p>
										<p class="inbox-item-text">${ani.user_qianming }</p>
										<p class="inbox-item-date">${ani.re_time }</p>
									</div>
								</a>
							</c:forEach>
							
						</div>
					</div>
				</div>
				<!-- col end </-->
			</div>
			<!-- Row end -->

			<div class="am-g">
				<!-- Row start -->
				<div class="am-u-md-12">
					<div class="card-box" style="padding-bottom: 5px;">
						<h4 class="header-title m-t-0 m-b-30">明星用户</h4>
						<div class="am-g">
						<c:forEach var="ani" items="${userlist}" varStatus="status" begin="1" end="3" >
							<a href="#">
								<div class="am-u-md-4">
									<div class="card-box widget-user">
										<div>
											<img src="${ani.user_face }" class="img-responsive img-circle" alt="user">
											<div class="wid-u-info">
												<h4 class="m-t-0 m-b-5 font-600">${ani.user_name }</h4>
												<p class="text-muted m-b-5 font-13">${ani.user_qianming }</p>
												<small class="text-warning"><b>发言：${ani.user_msgnum } 条</b></small>
											</div>
										</div>
									</div>
								</div>
							</a>
							</c:forEach>
							
						</div>
					</div>
				</div>
				<!-- col end -->
				<!-- Row end -->
			</div>

			<p style="font-size: 1.5rem; text-align: center;">© Copyright 2017 QUST401 Studio. All Rights Reserved. </p>

		</div>

		<!--<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>-->
		<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
		<!--<script type="text/javascript" src="assets/js/app.js"></script>-->
		<script type="text/javascript" src="assets/js/blockUI.js"></script>
		<script type="text/javascript" src="assets/js/charts/echarts.min.js"></script>

		<script src="assets/js/page/home.js" type="text/javascript" charset="utf-8"></script>

	</body>

</html>