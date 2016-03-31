<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
</style>
<title>首页</title>
</head>
<body>

	<shiro:hasRole name="admin">
			<a href="${pageContext.request.contextPath }/user/emplist">点击查看员工信息</a>
	</shiro:hasRole>

	

	<shiro:hasRole name="manager">
		<a href="${pageContext.request.contextPath }/user/emplist">点击查看员工信息</a>
	</shiro:hasRole>
	
	<shiro:guest>您现在的身份是一名游客（登录后就可成为本站尊贵的用户(User)啦 ^_^）
		<a href="${pageContext.request.contextPath }/index.jsp">点击登录</a>
		<br/>
	</shiro:guest>
	
	<shiro:user><h3>Welcome back  :  <shiro:principal/></h3>
		<a href="${pageContext.request.contextPath }/user/logout">登出</a>
		<br/><br/>
	</shiro:user>
	
		----------------------------
		<input type="hidden" value="${user1.userName }" id="hid">
		<br/>
		<input type="text" id="id"/>
		<br/>
		<br/>
		<input type="text" />
		<br/>
		<button onclick=Myshow();>点击</button>
		
		<div id="ajaxlogIn" style="position: absolute;top:40px;left:100px;border:5px solid red;width:300px;height:200px;"></div>
		
		<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript">
			function Myshow(){
				
				var hid_val = document.getElementById("hid");
				if(hid_val.value == null || hid_val.value == ""){
					$.ajax({
						type : "post",
						url : "user/ajaxlogIn",
						success : function(data){
							$("#ajaxlogIn").append(data);
						}
					});
				}else{
					alert("bukong");
				}
			}
			
		</script>
	
	<shiro:hasPermission name="student:create">
		欢迎有student:create权限的用户！<shiro:principal/>
	</shiro:hasPermission>
</body>
</html>