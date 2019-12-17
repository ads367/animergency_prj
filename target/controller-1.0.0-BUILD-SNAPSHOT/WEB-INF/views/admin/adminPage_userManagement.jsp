<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/admin/admin.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/admin.admin.js">
<!------ Include the above in your HEAD tag ---------->

<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button"
				class="navbar-toggle navbar-toggle-sidebar collapsed">MENU
			</button>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="${ pageContext.request.contextPath }/admin/adminPage">
				Administrator </a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<form class="navbar-form navbar-left" method="GET" role="search">
				<div class="form-group">
					<input type="text" name="q" class="form-control"
						placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${ pageContext.request.contextPath }/"
					role="button" aria-expanded="false"> 메인으로 </a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<div class="container-fluid main-container">
	<div class="col-md-2 sidebar">
		<div class="row">
			<!-- uncomment code for absolute positioning tweek see top comment in css -->
			<div class="absolute-wrapper"></div>
			<!-- Menu -->
			<div class="side-menu">
				<nav class="navbar navbar-default" role="navigation">
					<!-- Main Menu -->
					<div class="side-menu-container">
						<ul class="nav navbar-nav">
							<li>
								<a href="${ pageContext.request.contextPath }/admin/adminPage">
									<span class="glyphicon glyphicon-signal"></span>
										등급관리
								</a>
							</li>
							<li class="active">
								<a href="${ pageContext.request.contextPath }/admin/adminPage_userManagement">
									<span class="glyphicon glyphicon-dashboard"></span>
									회원관리
								</a>
							</li>
							<li>
								<a href="${ pageContext.request.contextPath }/admin/adminPage_boardManagement">
									<span class="glyphicon glyphicon-plane"></span>
									게시물 관리
								</a>
							</li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>

			</div>
		</div>
	</div>
	<div class="col-md-10 content">
		<div class="panel panel-default">
			<div class="panel-heading">userManagement</div>
			<div class="panel-body">TestContent</div>
		</div>
	</div>
</div>