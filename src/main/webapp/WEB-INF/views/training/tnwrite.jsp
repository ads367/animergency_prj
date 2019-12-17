<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	href="${ pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css"
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
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav" style="background-color: cadetblue;">
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

	<!-- Main Content -->
	<div class="container" style="margin-top: 100px;">
		<form action="${ pageContext.request.contextPath }/training/tnwrite"
			method="post" id="frm" onclick="return false;">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">


					<table class="table table-striped" id="training">
						<tbody>
							<tr style="background-color: darkslategray;">
								<td style="border-right: inset; color: white;">
									제목
									<input type="hidden" name="userId" value="${ sessionUserId }">
								</td>
								<td><input type="text" name="tTitle" id="write_tTitle"
									style="width: 99%; border: 2px;" autofocus="autofocus" /></td>
							</tr>
							<tr>
								<td style="border-bottom: groove; border-right: inset;">내용</td>
								<td style="border-bottom: groove;"><textarea
										name="tContent" id="write_tContent"
										style="width: 99%; height: 300px; border: 2px;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<p align="right">
						<button type="submit" class="btn btn-outline-info"
							onclick="tnWriteCheck()" style="font-size: small;">작성완료</button>
						<button type="button"
							onclick="location.href='${ pageContext.request.contextPath }/training/training'"
							class="btn btn-outline-info" style="font-size: small;">목록으로</button>
					</p>
				</div>
			</div>
		</form>
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

	<!-- Contact Form JavaScript -->
	<script
		src="${ pageContext.request.contextPath }/resources/js/jqBootstrapValidation.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script
		src="${ pageContext.request.contextPath }/resources/js/clean-blog.min.js"></script>

</body>

<script>
	function tnWriteCheck() {
		if ($("#write_tTitle").val() == "") {
			$("#write_tTitle").focus();
			alert("제목을 입력하세요.");
			return false;
		} else if ($("#write_tContent").val() == "") {
			$("#write_tContent").focus();
			alert("내용을 입력하세요.");
			return false;
		} else {
			var writeAction = confirm('글을 작성하시겠습니까?');
			if (writeAction == true) {
				frm.submit();
			}
		}
	}
</script>

</html>