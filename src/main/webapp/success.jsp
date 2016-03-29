<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
	</shiro:guest>
	
	<shiro:user><h3>Welcome back  :  <shiro:principal/></h3>
	<br/>
	<br/>
		
		<a href="${pageContext.request.contextPath }/user/logout">登出</a>
	</shiro:user>
	
	<shiro:hasPermission name="student:create">
		欢迎有student:create权限的用户！<shiro:principal/>
	</shiro:hasPermission>
</body>
</html>