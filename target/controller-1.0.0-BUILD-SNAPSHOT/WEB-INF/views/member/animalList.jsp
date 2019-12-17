<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Animal</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${ pageContext.request.contextPath }/resources/member/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/css/util.css">
	<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/member/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url('${ pageContext.request.contextPath }/resources/img/signup.jpg')">
					<span class="login100-form-title-1">
						<a href="${ pageContext.request.contextPath }/" style="  font-family: Poppins-Bold; font-size: 30px; color: #fff;
						text-transform: uppercase; line-height: 1.2; text-align: center;">
						AniMergency <br />
						AnimalList
					</a>
					</span>
				</div>
				
				<table style="width: 100%;">
					<tr style="border-bottom: 1px solid; text-align: center;">
						<td>Name</td>
						<td>Birth</td>
						<td>Sex</td>
						<td>Type</td>
					</tr>
					<c:forEach var="animalVO" items="${ aniList }">
                  <tr style="text-align:center;">
                     <td>${ animalVO.aniName }</td>
                     <td>${ animalVO.aniBirth }</td>
                     <td>${ animalVO.aniSex }</td>
                     <td>${ animalVO.aniType }</td>
                  </tr>
               </c:forEach>
				</table>
				<p style="text-align: right; font-size: 6px;">
					<button type="button" class="btn btn-primary" style="font-size: x-small;" onclick="animalinfoView()">등록</button>
				</p>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/bootstrap/js/popper.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/daterangepicker/moment.min.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${ pageContext.request.contextPath }/resources/member/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->

</body>
<script>
	function animalinfoView() {
		location.href = "${ pageContext.request.contextPath }/member/animalInfo";
	}
</script>
</html>