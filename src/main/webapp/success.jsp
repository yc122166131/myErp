<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.user{width:210px;height:60px;position:absolute;right:0px;top:0px;}
</style>
<title>首页</title>
</head>
<body>

	<shiro:hasRole name="admin">
		<div class="user">
			<h3>お帰りなさい: &nbsp;&nbsp;&nbsp; <shiro:principal/> </h3> 
		</div>
			<a href="${pageContext.request.contextPath }/user/emplist.do">点击查看员工信息</a>
	</shiro:hasRole>



<shiro:hasRole name="manager">
	<div class="user">
		<h3>welcome back :  &nbsp;&nbsp;&nbsp;<shiro:principal/> </h3>
	</div>

	<a href="${pageContext.request.contextPath }/user/emplist.do">点击查看员工信息</a>
</shiro:hasRole>

<shiro:hasPermission name="student:create">
	欢迎有student:create权限的用户！<shiro:principal/>
</shiro:hasPermission>
</body>
</html>