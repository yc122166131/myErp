<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="Keywords" content="注册,博客园">
	    <meta name="Description" content="注册">
	    <title>免费注册 </title>
		<link type="text/css" rel="stylesheet" href="css/register.css"></link>
		<link rel="stylesheet" type="text/css" href="css/animate.min.css"/>
	</head>
	<link rel="shortcut icon" href="images/favicon.ico"></link>
	<body>
		<div class="register">
			<div class="r_content">
				<h1 class="animated shake">用户注册</h1>
				<form action="" method="post">
					<dl>
						<dt>请输入您的账号：</dt>
						<dd><input type="text" placeholder="请输入账号..."/></dd>
					</dl>
					<dl>
						<dt>请输入您的密码：</dt>
						<dd><input type="password" placeholder="请输入您的密码..."/></dd>
					</dl>
					<dl>
						<dt>再输入您的密码：</dt>
						<dd><input type="password" placeholder="请再次输入您的密码..."/></dd>
					</dl>
					<dl>
						<dt>请输入您的邮箱：</dt>
						<dd>
							<input type="Email" placeholder="请输入您的邮箱..." style="width: 250px;"/>
							<a style="width: 43px;height: 38px;" class="hov">发送</a>
						</dd>
						
					</dl>
					<dl>
						<dt>请输入邮箱验证码：</dt>
						<dd><input type="text" placeholder="请输入邮箱验证码.."/></dd>
					</dl>
					<dl>
						<dt>亲，可以提交咯：</dt>
						<dd><input type="submit" value="注  册"/></dd>
					</dl>
					<div class="ret_login">
						<a href="login.jsp">返回登录界面</a>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>
