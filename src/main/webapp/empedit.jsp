<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html>
<head>
<!--声明当前页面的编码集：charset:gbk,gb2312(中文编码),utf-8(国际编码)-->
<meta http-equiv="content-Type" content="text/html;charset=utf-8">
<!--声明当前页面的三要素-->
<title></title>
<meta name="keywords" content="关键词1,关键词2,关键词3">
<meta name="description" content="描述...">
<meta name="author" content="admin">
<!--js/css-->
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	font-size: 12px;
	font-family: "微软雅黑";
	color: #666;
}

a {
	text-decoration: none;
}

ul li {
	list-style: none;
}

.content {
	width: 100%;
	background: #282828;
}

/*c_left start*/
.content .c_left {
	width: 200px;
	height: 835px;
	background: #282828;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 2;
}

.content .c_left .l_logo {
	width: 100%;
	height: 108px;
	background: url("images/logo.png") no-repeat center center;
	border-bottom: 1px solid #000;
}

.content .c_left .l_nav {
	width: 100%;
	border-bottom: 1px solid #414141;
}

.content .c_left .l_nav ul li {
	border-bottom: 1px solid #000;
	line-height: 52px;
	border-top: 1px solid #414141;
}

.content .c_left .l_nav ul li a {
	display: block;
	padding-left: 50px;
}

.content .c_left .l_nav ul li a:hover {
	background: #229932;
}

.content .c_left .l_nav ul li a i {
	background: url("../imgs/backCenter/ht_icon.png") no-repeat;
	width: 16px;
	height: 16px;
	display: block;
	float: left;
	margin-top: 20px;
}

.content .c_left .l_nav ul li a .n_logo1 {
	background-position: -233px -52px;
}

.content .c_left .l_nav ul li a .n_logo2 {
	background-position: -254px -52px;
}

.content .c_left .l_nav ul li a .n_logo3 {
	background-position: -211px -52px;
}

.content .c_left .l_nav ul li a .n_logo4 {
	background-position: -274px -52px;
}

.content .c_left .l_nav ul li a .n_logo5 {
	background-position: -295px -52px;
}

.content .c_left .l_nav ul li a .n_logo6 {
	background-position: -315px -52px;
	width: 19px;
	height: 6px;
	margin-top: 24px;
}

.content .c_left .l_nav ul li a span {
	font-size: 14px;
	color: #fff;
	padding-left: 20px;
}
/*end c_left*/

/*c_header start*/
.content .c_header {
	width: 100%;
	height: 56px;
	background: #2f3437;
	position: relative;
	z-index: 1;
}
/*h_nav start*/
.content .c_header .h_nav {
	height: 56px;
	margin-left: 200px;
	float: left;
}

.content .c_header .h_nav ul li {
	float: left;
	width: 110px;
	height: 56px;
	border-left: 1px solid #414141;
	border-right: 1px solid #000;
}

.content .c_header .h_nav ul li a {
	display: block;
	color: #838383;
	text-align: center;
	padding-top: 8px;
}

.content .c_header .h_nav ul li a:hover {
	color: #fff;
}

.content .c_header .h_nav ul li a i {
	display: block;
	width: 18px;
	height: 17px;
	background: url("../imgs/backCenter/ht_icon.png") no-repeat;
	margin: 3px auto;
}

.content .c_header .h_nav ul li .n_first {
	color: #fff;
}

.content .c_header .h_nav ul li a .n_ico1 {
	background-position: 0 -25px;
}

.content .c_header .h_nav ul li a .n_ico2 {
	background-position: -24px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico2 {
	background-position: -24px -25px;
}

.content .c_header .h_nav ul li a .n_ico3 {
	background-position: -48px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico3 {
	background-position: -48px -25px;
}

.content .c_header .h_nav ul li a .n_ico4 {
	background-position: -68px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico4 {
	background-position: -68px -25px;
}

.content .c_header .h_nav ul li a .n_ico5 {
	background-position: -91px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico5 {
	background-position: -91px -25px;
}

.content .c_header .h_nav ul li a .n_ico6 {
	background-position: -113px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico6 {
	background-position: -113px -25px;
}

.content .c_header .h_nav ul li a .n_ico7 {
	background-position: -133px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico7 {
	background-position: -133px -25px;
}

.content .c_header .h_nav ul li a .n_ico8 {
	background-position: -152px 0;
}

.content .c_header .h_nav ul li a:hover .n_ico8 {
	background-position: -152px -25px;
}
/*end h_nav*/

/*h_user start*/
.content .c_header .h_user {
	height: 56px;
	position: absolute;
	right: 10px;
	top: 0;
}

.content .c_header .h_user .u_info {
	color: #fff;
	line-height: 56px;
	float: left;
}

.content .c_header .h_user a {
	display: block;
	float: right;
	background: #28b779;
	height: 30px;
	width: 66px;
	margin: 13px 5px 0 10px;
	color: #fff;
	line-height: 30px;
	padding-left: 10px;
}

.content .c_header .h_user a span {
	display: block;
	float: left;
}

.content .c_header .h_user a i {
	width: 14px;
	height: 14px;
	display: block;
	background: url("../imgs/backCenter/ht_icon.png") no-repeat 0 -51px;
	float: left;
	margin: 8px 8px;
}
/*end h_user*/

/*end c_header*/

/*c_right start*/
.content .c_right {
	height: 1300px;
	background: #f3f4f5;
	margin-left: 200px;
}
/*r_location start*/
.content .c_right .r_location {
	height: 51px;
	line-height: 51px;
	background: #e5e5e5;
	border-bottom: 1px solid #ccc;
}

.content .c_right .r_location i {
	display: block;
	width: 14px;
	height: 18px;
	background: url("../imgs/backCenter/ht_icon.png") no-repeat -16px -51px;
	float: left;
	margin: 16px 20px 0 20px;
}
/*end r_location*/

/*r_dao start*/
.content .c_right .r_dao .d_list {
	height: 99px;
	float: left;
	margin-left: 1%;
	margin-top: 20px;
}

.content .c_right .r_dao .d_1 {
	width: 22%;
	background: #27a9e3;
}

.content .c_right .r_dao .d_2 {
	width: 16%;
	background: #28b779;
}

.content .c_right .r_dao .d_3 {
	width: 17%;
	background: #ffb848;
}

.content .c_right .r_dao .d_4 {
	width: 21%;
	background: #cc6a6a;
}

.content .c_right .r_dao .d_5 {
	width: 18%;
	background: #2255a4;
}

.content .c_right .r_dao .d_6 {
	width: 17%;
	background: #da542e;
}

.content .c_right .r_dao .d_7 {
	width: 20%;
	background: #2255a4;
}

.content .c_right .r_dao .d_8 {
	width: 18%;
	background: #6297bc;
}

.content .c_right .r_dao .d_9 {
	width: 20%;
	background: #27a9e3;
}

.content .c_right .r_dao .d_10 {
	width: 19%;
	background: #28b779;
}

.content .c_right .r_dao .d_list:hover {
	background: #2f3437;
}

.content .c_right .r_dao .d_list .l_pic {
	background: url("../imgs/backCenter/ht_icon.png") no-repeat;
	width: 44px;
	height: 46px;
	float: left;
	margin: 25px 10px 0 20px;
}

.content .c_right .r_dao .d_list .l_desc {
	color: #fff;
	margin-top: 25px;
}

.content .c_right .r_dao .d_list .l_desc span {
	font-size: 24px;
}

.content .c_right .r_dao .d_1 .l_pic {
	background-position: 0 -76px;
}

.content .c_right .r_dao .d_2 .l_pic {
	background-position: -46px -77px;
}

.content .c_right .r_dao .d_3 .l_pic {
	background-position: -96px -77px;
}

.content .c_right .r_dao .d_4 .l_pic {
	background-position: -146px -77px;
}

.content .c_right .r_dao .d_5 .l_pic {
	background-position: -190px -77px;
}

.content .c_right .r_dao .d_6 .l_pic {
	background-position: -239px -77px;
}

.content .c_right .r_dao .d_7 .l_pic {
	background-position: -288px -77px;
}

.content .c_right .r_dao .d_8 .l_pic {
	background-position: -342px -77px;
}

.content .c_right .r_dao .d_9 .l_pic {
	background-position: -395px -77px;
}

.content .c_right .r_dao .d_10 .l_pic {
	background-position: -449px -77px;
}
/*end r_dao*/

/*清除浮动*/
.clear {
	clear: both;
}
/*end c_right*/

/*r_table start*/
.content .c_right .r_table {
	border: 1px solid #ccc;
	margin: 0 1% 0 1%;
	background: #fff;
	margin-top: 10px;
	padding-bottom: 10px;
}
/*t_title start*/
.content .c_right .r_table .t_title {
	width: 100%;
	height: 40px;
	background: #eee;
	border-bottom: 1px solid #ccc;
}

.content .c_right .r_table .t_title i {
	width: 16px;
	height: 14px;
	display: block;
	background: url("../imgs/backCenter/ht_icon.png") no-repeat -386px -15px;
	float: left;
	margin: 12px;
}

.content .c_right .r_table .t_title span {
	display: block;
	float: left;
	height: 40px;
	line-height: 40px;
	border-left: 1px solid #ccc;
	padding-left: 5px;
	color: #000;
}
/*end t_title*/

/*t_label start*/
.content .c_right .r_table .t_label {
	width: 80%;
	height: 100px;
	float: left;
}

.content .c_right .r_table .t_label ul li {
	float: left;
	background: #999;
	margin: 10px 10px 0 10px;
}

.content .c_right .r_table .t_label ul li a {
	display: block;
	padding: 8px 20px;
	color: #fff;
}

.content .c_right .r_table .t_label ul li a:hover {
	background: #28b779;
}

.content .c_right .r_table .t_label ul li a i {
	width: 15px;
	height: 14px;
	display: block;
	background: url("../imgs/backCenter/ht_icon.png") no-repeat;
	float: left;
	margin-right: 10px;
}

.content .c_right .r_table .t_label ul li a .l_icon1 {
	background-position: -33px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon2 {
	background-position: -50px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon3 {
	background-position: -67px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon4 {
	background-position: -87px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon5 {
	background-position: -105px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon6 {
	background-position: -123px -52px
}

.content .c_right .r_table .t_label ul li a .l_icon7 {
	background-position: -140px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon8 {
	background-position: -155px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon9 {
	background-position: -172px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon10 {
	background-position: -191px -52px;
}

.content .c_right .r_table .t_label ul li a .l_icon11 {
	background-position: -212px -52px;
}
/*end t_label*/

/*t_search start*/
.content .c_right .r_table .t_search {
	width: 19%;
	float: left;
	padding-top: 10px;
}

.content .c_right .r_table .t_search .s_text {
	width: 60%;
	height: 28px;
	line-height: 28px;
	border: 1px solid #ddd;
	float: right;
}

.content .c_right .r_table .t_search .s_btn {
	width: 20%;
	height: 29px;
	background: #999;
	color: #fff;
	cursor: pointer;
	border: 0;
	float: right;
}

.content .c_right .r_table .t_search .s_btn:hover {
	background: #28b779;
}
/*end t_search*/

/*t_table start*/
.content .c_right .r_table .t_table {
	width: 600px;
	border: 1px solid red;
	margin-left: 25%;
}

.content .c_right .r_table .t_table .t_tab {
	border-collapse: collapse;
	width: 98%;
	text-align: center;
	margin: 0 1%;
}

.content .c_right .r_table .t_tab thead tr td {
	line-height: 40px;
	background: #28b779;
	border: 1px solid #fff;
}

.content .c_right .r_table .t_tab thead tr td input {
	zoom: 200%;
	margin-top: 8px;
	margin-bottom: 5px;
}

.content .c_right .r_table .t_tab tbody tr td input {
	zoom: 170%;
	margin-top: 8px;
	margin-bottom: 5px;
}

.content .c_right .r_table .t_tab tbody tr td {
	line-height: 40px;
	border: 1px solid #ddd;
}

.content .c_right .r_table .t_tab thead {
	border: 1px solid #ddd;
	color: #fff;
	font-weight: bold;
	font-size: 14px;
}

.content .c_right .r_table .t_tab tbody .t_tr {
	background: #999;
	color: #fff;
}

.content .c_right .r_table .t_tab tbody tr:hover {
	background: #60f;
	color: #fff;
}

.content .c_right .r_table .t_tab tbody tr td:hover {
	background: #fc0;
	color: #fff;
}

.content .c_right .r_table .t_tab tbody tr .t_td {
	width: 120px;
}

.content .c_right .r_table .t_tab tbody tr td .t_action {
	width: 108px;
	height: 24px;
	margin: 0 auto;
	display: none;
}

.content .c_right .r_table .t_tab tbody tr:hover .t_action {
	display: block;
}

.content .c_right .r_table .t_tab tbody tr td .t_action a {
	width: 24px;
	height: 24px;
	display: block;
	float: left;
	margin-right: 2px;
	background: url("../imgs/backCenter/ht_icon.png") no-repeat;
}

.content .c_right .r_table .t_tab tbody tr td .t_action a:hover {
	background-color: #2f3437;
}

.content .c_right .r_table .t_tab tbody tr td .t_action .a_see {
	background-position: -359px -45px;
	background-color: #6297bc;
}

.content .c_right .r_table .t_tab tbody tr td .t_action .a_edit {
	background-position: -379px -47px;
	background-color: #27a9e3;
}

.content .c_right .r_table .t_tab tbody tr td .t_action .a_save {
	background-position: -398px -47px;
	background-color: #28b779;
}

.content .c_right .r_table .t_tab tbody tr td .t_action .a_del {
	background-position: -417px -48px;
	background-color: #ff912f;
}
/*end t_table*/

/*end r_table*/

/*头部导航和消息提示小于1360的时候 用下边的样式*/
@media screen and (max-width:1360px) {
	/*h_nav start*/
	.content .c_header .h_nav {
		margin-left: 200px;
	}
	.content .c_header .h_nav ul li {
		width: 80px;
	}
	/*end h_nav*/
	.content .c_right .r_dao .d_list .l_pic {
		display: none;
	}
	.content .c_right .r_dao .d_list .l_desc {
		text-align: center;
	}
}

/*头部导航和左侧导航小于1024的时候 用下边的样式*/
@media screen and (max-width:1024px) {
	/*t_left start*/
	.content .c_left {
		width: 50px;
	}
	.content .c_left .l_logo {
		height: 54px;
		background: url("images/logo1.png") no-repeat center;
	}
	.content .c_left .l_nav ul li a {
		padding-left: 16px;
		height: 52px;
	}
	.content .c_left .l_nav ul li a span {
		display: none;
	}
	/*end t_left*/

	/*h_nav start*/
	.content .c_header .h_nav {
		margin-left: 50px;
		width: 670px;
	}
	.content .c_header .h_nav ul li {
		width: 60px;
	}
	.content .c_header .h_nav ul li a span {
		display: none;
	}
	.content .c_header .h_nav ul li a i {
		margin: 14px auto;
	}
	/*end h_nav*/
	.content .c_header .h_user .u_info {
		display: none;
	}
	.content .c_right {
		margin-left: 50px;
	}
	.content .c_right .r_table .t_label {
		width: 670px;
	}
	.content .c_right .r_location {
		width: 670px;
	}
}

.tbl{width: 500px;height:350px;margin: 0 auto;}
.tbl p{margin-top:28px;margin-left:20px;}
.uname{width: 200px;height:20px;}
.emil{width: 200px;height:20px;}
</style>
</head>
<body>
	<!-- content start -->
	<div class="content">
		<!-- c_left start -->
		<div class="c_left">
			<div class="l_logo"></div>

			<!-- l_nav start -->
			<div class="l_nav">
				<ul>
					<li><a href="javascript:void(0);"> <i class="n_logo1"></i>
							<span>所有元素</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i class="n_logo2"></i>
							<span>表格表单类</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i class="n_logo3"></i>
							<span>标签按钮类</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i class="n_logo4"></i>
							<span>日历类</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i class="n_logo5"></i>
							<span>TAB轮换</span>
					</a></li>
					<li><a href="javascript:void(0);"> <i class="n_logo6"></i>
							<span>其他元素</span>
					</a></li>
				</ul>
			</div>
			<!-- end l_nav -->

		</div>
		<!-- end c_left -->

		<!-- header start -->
		<div class="c_header">

			<!-- h_nav start -->
			<div class="h_nav">
				<ul>
					<li><a href="#" class="n_first"> <i class="n_ico1"></i> <span>首页</span>
					</a></li>
					<li><a href="#"> <i class="n_ico2"></i> <span>界面管理</span>
					</a></li>
					<li><a href="#"> <i class="n_ico3"></i> <span>栏目管理</span>
					</a></li>
					<li><a href="#"> <i class="n_ico4"></i> <span>内容管理</span>
					</a></li>
					<li><a href="#"> <i class="n_ico5"></i> <span>用户管理</span>
					</a></li>
					<li><a href="#"> <i class="n_ico6"></i> <span>论坛中心</span>
					</a></li>
					<li><a href="#"> <i class="n_ico7"></i> <span>应用中心</span>
					</a></li>
					<li><a href="#"> <i class="n_ico8"></i> <span>工具</span>
					</a></li>
				</ul>
			</div>
			<!-- end h_nav -->

			<!-- h_user start -->
			<div class="h_user">
				<div class="u_info">当前用户：<shiro:principal/> , 身份：系统管理员</div>
				<a href="${pageContext.request.contextPath }/user/logout">
				 <span>退出</span> <i class="u_ico"></i>
				</a>
			</div>
			<!-- end h_user -->
		</div>
		<!-- end header -->

		<!-- c_right start -->
		<div class="c_right">
			<!-- r_location start -->
			<div class="r_location">
				<i></i>
				<p>您当前所在位置：首页 > 后台中心</p>
			</div>
			<!-- end r_location -->



			<!-- r_table start -->
			<div class="r_table">
				<div class="t_title">
					<i></i> <span>表格表单类</span>
				</div>


		<div class="tbl">
			<form:form action="${pageContext.request.contextPath }/edit/aaa" method="post" modelAttribute="edit_user">

						<style>
						
						</style>
								
								<p>用户名 ： <form:input path="userdetail.user.userName"
											class="uname" /></p>
								
								

								<c:if test="${edit_user.userdetail.user.id == null }">
								
								<p>密码    : <form:input path="userdetail.user.password"
												class="" /></p>
									
								</c:if>
								
								<c:if test="${edit_user.userdetail.user.id != null }">
											<input type="hidden" name="id"
												value="${edit_user.userdetail.user.id}" />
											<input type="hidden" name="_method" value="PUT" />
								</c:if>
								

							
								<p>邮箱:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="userdetail.user.email"
											class="emil" /></p>
								
								
								<br />

								
									<p>	<form:radiobutton path="userdetail.sex" value="1"
											class=""  />
										男
 &nbsp; &nbsp;								<form:radiobutton path="userdetail.sex" value="0"
											class="" />
										女
								</p>
								
								<p><form:checkboxes items="${favours }" path="favours" delimiter="&nbsp;&nbsp;" class="" /></p>
									
								<p><form:select path="userdetail.departmentId" items="${departments }" class=""></form:select></p>
								
								<p><input class="btn btn-primary" type="submit" value="提交" /></p>

					</form:form>

				</div>
				
				
			</div>
			<!-- end r_table -->

		</div>
		<!--end c_right-->

	</div>

	<!-- end content -->
</body>
</html>
