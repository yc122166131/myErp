<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="yc" uri="WEB-INF/tld/tz.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.tbl{margin-top:100px;}
</style>
</head>
<body>
		<!--  
			<c:forEach varStatus="eindex" var="exam" items="${userInfo}">
				<div>${yc:character(eindex.count)}:${exam.department.departmentName}</div>
			</c:forEach>
		-->
	
	
		<table cellpadding="10" cellspacing="5" border="1" align="center" class="tbl">
				<tr>
					<th align="left">编号</th>
					<th align="left">用户名</th>
					<th align="left">电子邮箱</th>
					<th align="left">性别</th>
					<th align="left">爱好</th>
					<th align="left">部门</th>
					<shiro:hasRole name="admin">
						<th>修改</th>
						<th>删除</th>
					</shiro:hasRole>
				<tr>
				<c:forEach var="userInfo" items="${userInfo}">
					<tr>
						<td >${userInfo.user.id }</td>
						<td >${userInfo.user.userName }</td>
						<td >${userInfo.user.email }</td>
						<td>${userInfo.sex== '0'?'女':'男'}</td>
						<td>${yc:CovertFormat(userInfo.favourate)}</td>  
						<td>${userInfo.department.departmentName}</td>
						<shiro:hasRole name="admin">
							<td ><a href="${pageContext.request.contextPath }/user/empEdit.do?id=${userInfo.user.id }">Edit</a></td>
							<td ><a href="#">Delete</a></td>
						</shiro:hasRole>
					</tr>
				</c:forEach>
			
		</table>
	
</body>
</html>