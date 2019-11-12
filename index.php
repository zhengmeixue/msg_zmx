<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>留言板</title>
	<link rel="stylesheet" href="css/ys.css">
</head>
<body>
	<div class="container">
		<!-- 导航区 -->
	<div class="nav">
		<ul>
			<li><a href="">首页</a></li>
			<li><a href="">管理留言</a></li>
			<li><a href="">关于我们</a></li>
			<li><a href="">圣诞快乐</a></li>
			<li><a href="">努力学习</a></li>
			<li><a href="">加油加油</a></li>
			<li><a href="">勿忘初心</a></li>
			<li><a href="">测试哈哈</a></li>
		</ul>
	</div>
	<!-- 导航区 -->
	
	
		<div class="main">
			<!-- 留言区 -->
			<div class="main_left">
				<form id="reg" autocomplete="off">
				<h1 class="left_title">Message area</h1>
				<div class="tx">
					<p>Head sculpture:</p>
					<select name="face" id="face"></select>
					<div class="tx_faceborder">
					<img src="face2/1.jpg" alt="" width="80" height="80" id="img1">
					</div>
				</div>
				
				<div class="lyname">
					<p>Name:</p>
					<input type="text" id="author" name="author">
				</div>
				<div class="lytitle">
					<p>Title:</p>
					<input type="text" id="title" name="title">
				</div>
				<div class="lycontent">
					<p>Content</p>
					<textarea name="content" id="" cols="30" rows="10" id="content"></textarea>
				</div>
				<input type="button" value="发布" id="fbly" name="fbly">
				</form>
			</div>
			<!-- 留言区 -->
			
			<!-- 显示区 -->
			<div class="main_right">
				<div id="lyright"></div>
				<div id="yss">

				</div>
			</div>
			<!-- 显示区 -->
			
		</div>
	
	<!-- 登陆区 -->
	<div class="login">
		<div class="login_text" id="loginBtn"><a href="#">管理员登录</a></div>
		<div class="login_success" id="loginSuccess">超级管理员xxx登录成功</div>
		<div class="leave" id="leave">注销</div>
	</div>
	<!-- 登陆区 -->
	
	<!-- 登录窗口 -->
	<div class="loginWin" id="loginWin">
		<p id="close">关闭</p>
		<div class="a1">
		<div class="loginInput"><p>用户名:</p><input type="text" id="adminName"></div>
		<div class="loginInput"><p class="pwd">密码:</p><input type="password" class="a2" id="adminPwd"></div>
		<input type="button" value="登录" id="lbtn">
		</div>
	</div>
	<!-- 登录窗口 -->
	<!-- 回复窗口 -->
	<div class="hf">
		<div class="hf_banner">Reply Area</div>
		<div>
			<textarea name="" id="reply" cols="47" rows="4" class="hf_content"></textarea>
			<input type="button" class="hfBtn" value="回复">
		</div>
		<div class="hfClose" id="hfClose">关闭</div>
		
	</div>
	<!-- 回复窗口 -->
	</div>
	<div id="zzc">
		<div id="zzcShow"></div>
	</div>
	<script src="js/jquery-1.11.2.js"></script>
	<script src="js/cufon-yui.js" type="text/javascript"></script>
	<script src="js/Pristina_400.font.js" type="text/javascript"></script>
	<script src="js/cookie.js"></script>
	<script src="js/md5.js"></script>
	<script src="js/index.js"></script>

</body>
</html>