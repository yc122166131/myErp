<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/firstPage.css"/>
<title>Insert title here</title>
<style type="text/css">
		*{padding: 0;margin: 0;}
			body{font-family: "微软雅黑";font-size: 14px;}
			a{text-decoration: none;color: #333;}
			/*垂直居中*/
			.box{
				width: 380px;
				background: linear-gradient(#111,#777);
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
			
			.cnt{width:320px;height: 400px;margin: 30px auto 30px;}
			.cnt label{margin-right: 1px;display: inline-block;}
			.logo{background: #111;line-height: 66px;height: 106px;}
			.cnt input{width: 276px;border:none;height: 32px;border-radius: 5px;text-indent:0.5em ;color: #999;}
			.cnt p{margin-top: 26px;text-align: center;width: 310px;}
			.cnt .btnbox{margin-top: 30px;}
			.btnbox input{background: #333;color: #fff;}
				.btnbox:hover input{background: #888;}
			.errorTip{width: 200px;height: 20px; background: #666;margin: 45px auto;text-align: center;line-height: 20px;border-radius: 6px;}

</style>
</head>
<body>


<form action="${pageContext.request.contextPath }/user/login" method="post">
			<div class="box">
				<div class="cnt">
					
					<h1 class="logo"><a href="#"><img src="/imgs/logo.png" width="300px" height="100px"/></a></h1>
					<p><label for="userName">帐号:<input name="userName" autocomplete="off" autofocus="autofocus" placeholder="请输入帐号...." maxlength="60" id="userName" value="${user.userName }"/></label></p>
					<p><label for="password">密码:<input name="password" type="password" autofocus="autofocus" placeholder="请输入密码...." maxlength="16" type="text" id="password" value="${user.password }"/></label></p>
					<p class="btnbox" style="width: 340px;"><input type="submit"  value="登录"/></p>
				<div class="errorTip">${errorMsg }</div>
			</div>
		</div>
</form>
</body>
</html>