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
		id="mainNav" style="background-color: lightcoral;">
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
		<form action="${ pageContext.request.contextPath }/qa/qaupdateAction"
			method="post">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">


					<table class="table" id="free">
						<tbody>
							<tr style="background-color: pink;">
								<td style="border-right: inset;">제목 <input type="hidden"
									name="qIDX" value="${ qaupdate.qIDX }">
								</td>
								<td><input type="text" name="qTitle"
									style="width: 99%; border: 2px;" autofocus="autofocus"
									value="${qaupdate.qTitle }" /></td>
							</tr>
							<tr>
								<td style="border-right: inset;"></td>
								<td><input type="text" name="userId"
									value="작성자 :${qaupdate.userId }" readonly="readonly"
									style="width: 99%; border: 2px; border: none; text-align: right; font-size: small; padding-bottom: 0px;" />
								</td>
							</tr>
							<tr>
								<td
									style="border-bottom: groove; border-right: inset; border-top: none;">내용</td>
								<td style="border-top: none; border-bottom: groove;"><textarea
										name="qContent"
										style="width: 100%; height: 350px; border: 2px;">${qaupdate.qContent }</textarea>
								</td>
							</tr>
						</tbody>
					</table>

					<p align="right">
						<button type="submit" class="btn btn-outline-danger"
							style="font-size: small;">수정완료</button>
						<button type="button" class="btn btn-outline-danger"
							style="font-size: small;" onclick="qUpdateCancel()">수정취소</button>
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
	function qUpdateCancel() {
		var idx = ${qaupdate.qIDX};
		var updateCancel = confirm('수정을 취소하시겠습니까?');
		if (updateCancel == true) {
			location.href = "${ pageContext.request.contextPath }/qa/qadelete?qIDX="+ idx;
		}
	}
</script>

</html>