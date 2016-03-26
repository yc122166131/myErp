<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.tbl {
	width: 550px;
	height: 450px;
	margin: 60px auto;
	box-shadow: 0 0 3em #111;
	padding: 30px;
	border-radius: 30px;
}

.input {
	width: 330px;
	height: 30px;
}

.contr {
	margin-bottom: 2px;
}
</style>
</head>
<body>

	<div class="tbl">

		<form:form action="${pageContext.request.contextPath }/edit/aaa"  method="post" 
		modelAttribute="edit_user">
			
			
			<div class="form-group">
				<div class="col-md-2">
					<label for="inputEmail3" class="control-label">UserName</label>
				</div>
				<div class="col-md-10">
					<form:input path="userdetail.user.userName"
						class="input input-group form-control contr " />
				</div>
			</div>
			<br />
			
			<c:if test="${edit_user.userdetail.user.id == null }">
				<div class="form-group">
					<div class="col-md-2">
						<label for="inputEmail3" class="control-label">Password</label>
					</div>
					<div class="col-md-10">
						<form:input path="userdetail.user.password"
							class="input input-group form-control contr " />
					</div>
				</div>
			</c:if>
			<c:if test="${edit_user.userdetail.user.id != null }">
				<input type="hidden" name="id" value="${edit_user.userdetail.user.id}"/>
				<input type="hidden" name="_method" value="PUT"/>
			</c:if>
			<br />
			
			<div class="form-group">
				<div class="col-md-2">
					<label for="inputEmail3" class="control-label">Email</label>
				</div>
				<div class="col-md-10">
					<form:input path="userdetail.user.email"
						class="input input-group form-control contr" />
				</div>
			</div>
			<br />

			<div class="form-group">
				<div class="col-md-2">
					<form:radiobutton path="userdetail.sex" value="1" class="contr" />
					男
				</div>
				<div class="col-md-2">
					<form:radiobutton path="userdetail.sex" value="0" class="contr" />
					女
				</div>

			</div>
			<br />
			<div class="form-group">
				<div class="col-md-12">
					<form:checkboxes items="${favours }" path="favours"
						delimiter="&nbsp;&nbsp;" class="contr" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-md-4">
					<div class="dropdown">
						<form:select path="userdetail.department.departmentName"
							items="${departments }" class="btn dropdown-toggle"></form:select>
					</div>
				</div>
				<div class="col-md-8">
					<input class="btn btn-primary" type="submit" value="提交" />
				</div>
			</div>




		</form:form>

	</div>


	<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>

</body>
</html>