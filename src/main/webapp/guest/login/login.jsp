<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <style>
	*{padding:0;margin:0}
	html{overflow:hidden;}
	body{font-size:14px;font-family:"微软雅黑"}
	a{text-decoration:none;color:#fff}
	ul li{list-style:none}
	.bg{
		background:url("img/bg.jpg");
		position:fixed;
		background-size:cover;
		width:100%;
		height:100%;
		top:0;
		left:0;
	}
	.over{
		background:rgba(0,0,0,0.7);
		position:fixed;
		width:100%;
		height:100%;
		top:0;
		left:0;
		z-index:1
	}
	#formbox{width:300px;height:300px;position:absolute;z-index:2;margin:300px auto;color:#fff;top: 5%;left: 44%;}
	#formbox p{margin-top:2px;}
	#returnLogin :hover{color: #fff;}
	.inp{width:240px;height:36px;border:0;background:#f9f9f9;border-radius:3px
	;text-indent:0.5em;outline:none;font-family:"微软雅黑";transition: all 0.3s ease-in;}
	.inp:hover{transform: scale(1.1);}
	.btn{ float: right; margin-right: 12px; width: 249px; height: 37px;background: rgba(255,255,255,0.2); color: #fff;
	    font-size: 18px;transition: all 0.5s ease;border: 0;box-shadow: 0 1px 1px #fff;}
	.btn:hover{background: rgba(0,0,0,0.3);cursor: pointer;transform: scale(1.1);}
	#formbox p#p_login{margin-top: 26px;}
	#tipbox{position:fixed;background:red;height:56px;z-index:30;top:0;left:0;width:100%;line-height:56px;
		text-align:center;
		color:#fff;
	}
	
	#formbox1{width:300px;height:300px;position:absolute;z-index:2;margin:300px auto;color:#fff;top: 1%;left:44%;}
	#formbox1 p#p_reg{margin-top: 26px;}
	
	
  </style>
  <link href="css/animate.css" rel="stylesheet"/>
 </head>
 <body>
	

	

	<!--背景图的制作-->
	<div class="bg"></div>
	<div class="over"></div>
	
	<div id="formbox" class="">
		<form id="loginForm" action="" method="post">
			<p class="animated bounceInLeft" id="p_user"><label>用户：</label><input class="inp" jreqiured="true" regex="\d*" min="1" jvalidator="email" maxlength="3" placeholder="请输入账户信息..." name="username" type="text"/></p>
			<p class="animated bounceInRight" id="p_pwd"><label>密码：</label><input class="inp" maxlength="16" placeholder="请输入密码（16-20位）..." name="password" type="password"/></p>
			<p class="animated bounceInDown" id="p_login"><input type="button" class="btn" id="submitLogin"  value="登录"/></p>
		</form>
		<p class="animated bounceInUp" id="op" style="width: 240px; height: 26px;margin-top:75px;margin-left: 39px;">
			<a href="#" id="regis"><span style="float: left;">注册</span></a>
			<a href="#"><span style="float: right;">忘记密码</span></a>
		</p>
	</div>
	
	<div id="formbox1" class="">
		<form id="RegisForm" action="" method="post">
			<p class="animated bounceInLeft" id="reg_user"><input class="inp" jreqiured="true" regex="\d*" min="1" jvalidator="email" maxlength="3" placeholder="请输入账户信息..." name="reg_username" type="text"/></p>
			<p class="animated bounceInRight" id="reg_pwd"><input class="inp" maxlength="16" placeholder="请输入密码（16-20位）..." name="reg_password" type="password"/></p>
			<p class="animated bounceInDown" id="reg_email"><input class="inp" maxlength="36" placeholder="输入邮箱并点击右侧发送验证..." name="email" type="text"/><a href="#" title="点击发送" style="position: absolute;top: 9px;left: 221px;"><img src="img/icon-1460191473253.png" width="15px"height="15px"/></a></p>
			<p class="animated bounceInUp" id="reg_emailConfirm"><input class="inp" maxlength="6" placeholder="请输入邮箱确认码..." name="email_conf" type="text" /></p>
			<p class="animated bounceInDown" id="p_reg"><input type="button" class="btn" id="submitRegis"  value="注册" style="margin-right: 53px;"/></p>
		</form>
		<p class="animated bounceInUp" id="reg_op" style="width: 240px; height: 26px;margin-top:75px;margin-left: -1px;">
			<a href="#" id="returnLogin" style="color: #ccc;"><span style="float: left;">登录</span></a>
		</p>
	</div>
	

	<!--引入jquery.js文件-->
	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script>
		$(function(){
			$("#formbox1").hide();
			
			//jquery
			$("#submitLogin").on("click",function(){
				var params = $("#loginForm").serializeArray();
				//解析参数
				var vp = tzParamParams(params);

				if(isEmpty(vp.username.value)){
					vp.username.obj.focus();
					tzCommon.message("请输入用户名称");
					return false;
				}

				if(isEmpty(vp.password.value)){
					vp.password.obj.focus();
					tzCommon.message("请输入密码");
					return false;
				}
				
				
				$.ajax({
					type:"post",
					data:params,
					url:"login.jsp",
					success:function(data){
					
					}
				});
			});
			
			
				$("#submitRegis").on("click",function(){
				var params = $("#RegisForm").serializeArray();
				//解析参数
				var vp = tzParamParams(params);

				if(isEmpty(vp.reg_username.value)){
					vp.reg_username.obj.focus();
					tzCommon.message("用户名不能为空");
					return false;
				}

				if(isEmpty(vp.reg_password.value)){
					vp.reg_password.obj.focus();
					tzCommon.message("密码不能为空");
					return false;
				}
				
				if(isEmpty(vp.email.value)){
					vp.email.obj.focus();
					tzCommon.message("邮箱不能为空");
					return false;
				}
				
				if(isEmpty(vp.email_conf.value)){
					vp.email_conf.obj.focus();
					tzCommon.message("确认码必须填");
					return false;
				}
				
				
				$.ajax({
					type:"post",
					data:params,
					url:"login.jsp",
					success:function(data){
					
					}
				});
			});
			
			
			
			function tzParamParams(params){
				var json = {};
				for(var i=0;i<params.length;i++){
					json[params[i].name] = {
						value:params[i].value,
						obj:$("input[name='"+params[i].name+"']")
					}; 
				}
				return json;
			};


			var tzCommon =  {
				message:function(message){
					$("#tipbox").remove();
					$("body").append("<div id='tipbox' class='animated fadeInLeft'>"+message+"</div>");	
					$("#tipbox").fadeOut(2000,function(){
						$(this).show().removeClass().toggleClass("animated fadeOutLeft");
					});
				}
			};
			
			/**
			 * 判断非空
			 * 
			 * @param val
			 * @returns {Boolean}
			 */
			function isEmpty(val) {
				val = $.trim(val);
				if (val == null)
					return true;
				if (val == undefined || val == 'undefined')
					return true;
				if (val == "")
					return true;
				if (val.length == 0)
					return true;
				if (!/[^(^\s*)|(\s*$)]/.test(val))
					return true;
				return false;
			}
			
			//非空判断
			function isNotEmpty(val) {
				return !isEmpty(val);
			}
		});
		
		var _zIndex = 2;
		$('#regis').click(function(){
			
			$('#reg_user').removeClass("animated bounceOutLeft").addClass("animated bounceInLeft");
			$('#reg_pwd').removeClass("animated bounceOutRight").addClass("animated bounceInRight");
			$('#reg_email').removeClass("animated bounceOutUp").addClass("animated bounceInDown");
			$('#reg_emailConfirm').removeClass("animated bounceOutDown").addClass("animated bounceInUp");
			$('#p_reg').removeClass("animated bounceOutUp").addClass("animated bounceInDown");
			$('#reg_op').removeClass("animated bounceOutUp").addClass("animated bounceInUp");
			
			$('#p_user').removeClass("animated bounceInLeft").addClass("animated bounceOutLeft");
			$('#p_pwd').removeClass("animated bounceInRight").addClass("animated bounceOutRight");
			$('#p_login').removeClass("animated bounceInDown").addClass("animated bounceOutUp");
			$('#op').removeClass("animated bounceInUp").addClass("animated bounceOutDown");
			
			
			$("#formbox1").show();
			_zIndex = _zIndex+1;
			$("#formbox1").css("z-index",_zIndex);
		
		});
		
		$('#returnLogin').click(function(){
			
			
			
			$('#p_user').removeClass("animated bounceOutLeft").addClass("animated bounceInLeft");
			$('#p_pwd').removeClass("animated bounceOutRight").addClass("animated bounceInRight");
			$('#p_login').removeClass("animated bounceOutUp").addClass("animated bounceInDown");
			$('#op').removeClass("animated bounceOutDown").addClass("animated bounceInUp");
			
			$('#reg_user').removeClass("animated bounceInLeft").addClass("animated bounceOutLeft");
			$('#reg_pwd').removeClass("animated bounceInRight").addClass("animated bounceOutRight");
			$('#reg_email').removeClass("animated bounceInDown").addClass("animated bounceOutUp");
			$('#reg_emailConfirm').removeClass("animated bounceInUp").addClass("animated bounceOutDown");
			$('#p_reg').removeClass("animated bounceInDown").addClass("animated bounceOutUp");
			$('#reg_op').removeClass("animated bounceInUp").addClass("animated bounceOutUp");
			
			$("#formbox").show();
			_zIndex = _zIndex+1;
			$("#formbox").css("z-index",_zIndex);
			
			
		});
		
		
		
	</script>
 </body>
</html>
