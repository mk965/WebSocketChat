<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="js cssanimations">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>后台管理 - 登录</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp">
		<link rel="stylesheet" type="text/css" href="../assets/admin/css/amazeui.min.css" />
		<link rel="stylesheet" type="text/css" href="../assets/admin/css/app.css" />
	</head>
	<style type="text/css">
		body{
			background: url(../assets/admin/i/admin_login_bg.jpg);
			background-size: 100% 105%;
		}
		.main{
			width: 40%;
			height: 50%;
			background: rgba(255,255,255,0.1);
			border-radius: 10px;
			box-shadow: 0px -1px 5px 2px rgba(0,0,0,0.2);
		}
		.am-g{
			margin: 30px 0;
		}
	</style>

	<body>
		
		<div class="main">
			<div class="am-g">
				<!-- LOGO -->
				<div class="am-u-sm-12 am-text-center">
					<i class="am-icon-comments-o myapp-login-logo"></i>
						
				</div>
				<!-- 登陆框 -->
				<div class="am-u-sm-11 am-u-sm-centered">
					<form class="am-form" action="dologinadmin" method="post">
						<fieldset class="myapp-login-form am-form-set">
							<div class="am-form-group am-form-icon">
								<i class="am-icon-user"></i>
								<input type="text" class="myapp-login-input-text am-form-field" name="username" placeholder="请输入您的账号">
							</div>
							<div class="am-form-group am-form-icon">
								<i class="am-icon-lock"></i>
								<input type="password" class="myapp-login-input-text am-form-field" name="password" placeholder="至少6个字符">
							</div>
						</fieldset>
						<button type="submit" class="myapp-login-form-submit am-btn am-btn-primary am-btn-block ">登 录</button>
					</form>
				</div>
				<div class="am-text-center am-u-sm-11 am-u-sm-centered myapp-login-form-shortcut">
					<hr class="myapp-login-form-hr">
					<span class="myapp-login-form-hr-font">第三方登录</span>
				</div>
	
				<div class="am-u-sm-12 am-text-center myapp-login-form-listico">
					<div class="am-u-sm-4 am-text-center">
						<i class="am-icon-btn am-primary am-icon-qq"></i>
					</div>
					<div class="am-u-sm-4 am-text-center">
						<i class="am-icon-btn am-danger am-icon-weibo"></i>
					</div>
					<div class="am-u-sm-4 am-text-center">
						<i class="am-icon-btn am-success am-icon-weixin"></i>
					</div>
				</div>
			</div>
			
		</div>
		
		
	</body>

</html>