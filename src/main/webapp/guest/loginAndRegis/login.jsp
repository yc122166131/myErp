<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
	 <head>
		  <meta charset="UTF-8">
		  <meta name="Keywords" content="">
		  <meta name="Description" content="">
		  <title>登录 </title>
		  <link type="text/css" rel="stylesheet" href="css/login.css"></link>
	 </head>
	 <link rel="shortcut icon" href="images/favicon.ico"></link>
	 <body>
		<div class="bg"></div>
		<video autoplay loop poster="images/semalt.jpg" id="bgvid">
			<source src="mp4/1.mp4" type="video/mp4">
			<source src="mp4/semalt-v.webm" type="video/webm">
		</video>
		<div class="login">
			<div class="l_content">
				<form action="#" method="post">
					<h2>用户登录</h2>
					<dl>
						<dt>请输入您的账号：</dt>
						<dd><input type="text" placeholder="您的账号..."><dd>
					</dl>
					<dl>
						<dt>请输入您的密码：</dt>
						<dd><input type="text" placeholder="您的密码..."><dd>
					</dl>
					<dl>
						<dt>亲，可以登陆咯：</dt>
						<dd><input type="submit" value="登  录" /></dd>
					</dl>
					<div class="l_info">
						<a href="regis.jsp">免费注册</a>
						<a href="../index.html">忘记密码</a>
					</div>
				</form>
			</div>
		</div>
	 </body>
</html>
