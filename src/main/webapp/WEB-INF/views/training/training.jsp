<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>AniMergency</title>

<!-- Bootstrap core CSS -->
<link
	href="${ pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="${ pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css?ver=2"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link
	href="${ pageContext.request.contextPath }/resources/css/clean-blog.min.css"
	rel="stylesheet">
<style>
#free tr:nth-child(2n+1) {
	background-color: #f3f6f7;
}
</style>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="${ pageContext.request.contextPath }/">AniMergency</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="${ pageContext.request.contextPath }/">홈</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${ pageContext.request.contextPath }/training/training">훈련게시판</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${ pageContext.request.contextPath }/free/free">자유게시판</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${ pageContext.request.contextPath }/qa/qa">질의응답</a></li>
					<c:choose>
						<c:when test="${empty sessionUserId }">
							<li class="nav-item"><a class="nav-link"
								href="${ pageContext.request.contextPath }/member/login">로그인</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								href="${ pageContext.request.contextPath }/member/userInfo?userId=${ sessionUserId }">${ sessionUserName }님</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('${ pageContext.request.contextPath }/resources/img/trainingboard.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="page-heading">
						<h1>Training Board</h1>
						<span class="subheading">세상에 나쁜 동물은 없다</span>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">

			<table class="table table-striped" id="training">
				<thead>
					<tr style="background-color: darkslategray;">
						<th style="color: white; width: 6%; text-align: center;">NO</th>
						<th style="color: white; width: 45%; text-align: center;">제목</th>
						<th style="color: white; width: 18%; text-align: center;">글쓴이</th>
						<th style="color: white; width: 21%; text-align: center;">시간</th>
						<th style="color: white; width: 10%; text-align: center;">조회수</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="map" items="${ list }">
						<tr style="text-align: center;">
							<td>${map.tIDX }</td>
							<td><a
								href="${ pageContext.request.contextPath }/training/tnread?tIDX=${map.tIDX}">${map.tTitle }</a></td>
							<td>${map.userId }</td>
							<td>${map.tDate }</td>
							<td>${map.tCount }</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
		<p align="right">
			<button type="button" class="btn btn-outline-success"
				style="font-size: xx-small; color: #2f4f4f; border-color: #2f4f4f;"
				onclick="location.href='${ pageContext.request.contextPath }/training/tnwrite'">글쓰기</button>
		</p>
	</div>
	<hr>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">

					<p class="copyright text-muted">New Idiots &copy; Korean
						Foundation for Quality 2019</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${ pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${ pageContext.request.contextPath }/resources/js/clean-blog.min.js"></script>

</body>

</html>