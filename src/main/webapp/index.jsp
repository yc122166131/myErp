<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/firstPage.css" />
<title>Insert title here</title>

<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	font-family: "微软雅黑";
	font-size: 14px;
}

a {
	text-decoration: none;
	color: #333;
}
/*垂直居中*/
.box {
	width: 380px;
	background: linear-gradient(#111, #777);
	height: 420px;
	position: fixed;
	top: 50%;
	left: 50%;
	margin-top: -230px;
	margin-left: -190px;
	overflow: hidden;
	color: #fff;
	box-shadow: 0 0 1em #111;
	border-radius: 20px;
}

.cnt {
	width: 320px;
	height: 400px;
	margin: 30px auto 30px;
}

.cnt label {
	margin-right: 1px;
	display: inline-block;
}

.logo {
	background: #111;
	line-height: 66px;
	height: 106px;
}

.cnt input {
	width: 276px;
	border: none;
	height: 32px;
	border-radius: 5px;
	text-indent: 0.5em;
	color: #999;
}

.cnt p {
	margin-top: 26px;
	text-align: center;
	width: 310px;
}

.cnt .btnbox {
	margin-top: 25px;
}

.btnbox input {
	background: #333;
	color: #fff;
}

.btnbox:hover input {
	background: #888;
	cursor: pointer;
}

.errorTip {
	width: 200px;
	height: 20px;
	background: #666;
	margin: 15px auto;
	text-align: center;
	line-height: 20px;
	border-radius: 6px;
}

/*垂直居中*/
.box1 {
	width: 380px;
	background: linear-gradient(#111, #777);
	height: 420px;
	position: fixed;
	top: 50%;
	left: 50%;
	margin-top: -230px;
	margin-left: -190px;
	overflow: hidden;
	color: #fff;
	box-shadow: 0 0 1em #111;
	border-radius: 20px;
	display: none;
}
</style>

<link rel="stylesheet" type="text/css" href="css/animate.min.css" />
</head>
<body>


	<div class="box1">
		<div class="cnt">
			<p>
			<h1 class="logo">
				<img src="imgs/logo.png" width="300px" height="100px" />
			</h1>
			</p>
			<p>
			<label for="userName">帐号:<input name="r_userName"
				type="password" autocomplete="off" autofocus="autofocus"
				placeholder="请输入帐号...." maxlength="60" type="text" id="userName1"
				value="" class="animated swing" /></label>
			</p>
			<p>
			<label for="password">密码:<input name="r_password"
				type="password" autocomplete="off" autofocus="autofocus"
				placeholder="请输入密码...." maxlength="16" type="text" id="password1"
				value="" class="animated swing" /></label>
			</p>
			<p>
			<label for="email">邮箱:<input name="r_email"
				type="password" autocomplete="off" autofocus="autofocus"
				placeholder="请输入邮箱...." maxlength="50" type="text" id="email1"
				value="" class="animated swing" /></label>
			</p>
			<p>
			<label for="emailConfirm">邮箱确认码:<input name="r_emailConfirm"
				type="text" autocomplete="off" autofocus="autofocus"
				placeholder="请输入邮箱确认码...." maxlength="6"  id="emailConfirm1" value="" 
				class="animated swing" style="width: 113px;" /></label>
				 <input type="submit" value="注册" id="r_submit" style="width:88px;" />
			</p>
			<p>
				<a href="#" style="color: #ddd; margin-top: 4px;" id='logFrame'>返回登录界面</a>
			</p>



		</div>

	</div>


	<form action="${pageContext.request.contextPath }/user/login"
		method="post">
		<div class="box animated bounceInDown">
			<div class="cnt">

				<h1 class="logo">
					<img src="imgs/logo.png" width="300px" height="100px" />
				</h1>
				<p>
					<label for="userName">帐号:<input name="userName"
						autocomplete="off" autofocus="autofocus" placeholder="请输入帐号...."
						maxlength="60" id="userName" value="" class="animated swing" /></label>
				</p>
				<p>
					<label for="password">密码:<input name="password"
						type="password" autocomplete="off" autofocus="autofocus"
						placeholder="请输入密码...." maxlength="16" type="text" id="password"
						value="" class="animated swing" /></label>
				</p>
				<p style="text-align: left; margin-top: 10px; margin-left: 33px;">
					<a href="#" style="color: #ddd;" id="reg">注册</a> <a href="#"
						style="color: #ddd; margin-left: 185px;"">忘记密码</a>
				</p>
				<p class="btnbox" style="width: 340px;">
					<input type="submit" value="登录" id="submit" />
				</p>
				<div class="errorTip" id="errorTip"></div>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
		$("#reg").click(function() {

			$(".box").fadeOut("slow").removeClass("animated bounceIn");
			$(".box1").fadeIn("slow").addClass("animated bounceIn");

		});

		$('#logFrame').click(function() {

			$(".box").fadeIn("slow").addClass("animated bounceIn");
			$(".box1").fadeOut("slow").removeClass("animated bounceIn");

		});

		$("#submit").click(function() {

			var mark = logIn();
			if (mark) {
				document.forms[0].submit();
			} else {
				return false;
			}

		});

		function logIn() {
			var username = $("#userName").val();
			var password = $("#password").val();

			if (!username) {
				$("#errorTip").fadeIn("slow").html("用户名不能为空！").delay(2000)
						.fadeOut("slow");
				return false;
			}
			if (!password) {
				$("#errorTip").fadeIn("slow").html("密码不能为空！").delay(2000)
						.fadeOut("slow");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>