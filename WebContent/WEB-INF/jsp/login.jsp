<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>登录</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" type="text/css" href="assets/css/app.css"/>
  <link rel="stylesheet" type="text/css" href="assets/css/color.css"/>
</head>
<body>
	<div id="container"><div id="output"></div></div>
	<div class="color">
		<p class="p1">QUST聊天室</p>
		<br />
<div class="am-g">
	<div class="am-u-lg-4 am-u-md-6 am-u-sm-centered">
  <div id="lx" style="height: 450px;"></div>
  <div class="gx ">
    <h3 style="font-size: large;">登录</h3>
    <br />
    <br />
    <form method="post" class="am-form" action="dologin.html" >
      <label>用户名:</label>
      <input type="text" name="username" id="email" onchange='check("email")' style="border-radius:10px ;background-color: rgba(0, 0, 0, 0.09);">
      <p id="emailcheck" class="check" hidden="true">用户名不能为空</p>
      <br>
      <label>密码:</label>
      <input type="password" name="password" id="password" onchange='check("password")'style="border-radius:10px ;background-color: rgba(0, 0, 0, 0.09);">
      <p id="passwordcheck" class="check" hidden="true">密码错误</p>
      <label for="remember-me" >
        <input id="remember-me" type="checkbox">
        记住密码
      </label>
      <div style="cursor: pointer;">
      <a href="zhuce.html" >注册账号 >></a>
      </div>
      <div class="am-cf" >
        <input type="submit" name="" value="登 录"  class="am-btn am-btn-primary am-btn-sm am-fl"style="border-radius:10px ;">
        <div class="am-btn am-btn-default am-btn-sm am-fr"style="border-radius:10px ;">
          <a href="shensu.html">忘记密码 ? ☹</a>
        </div>
      </div>
    </form>
  </div>
  </div>
  </div>
  </div>
</body>
 <script src="assets/js/dl.js" type="text/javascript"></script>
  <script src="assets/js/jquery.js" type="text/javascript"></script>
  <script src="assets/js/vector.js" type="text/javascript"></script>
<script>
$(function(){
	// 初始化 传入dom id
	var victor = new Victor("container", "output");
	
});
</script>

</html>
