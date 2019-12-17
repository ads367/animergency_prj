<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Info</title>
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
						Info
					</a>
					</span>
				</div>

				<form class="login100-form validate-form" method="post" name="frm" action="${ pageContext.request.contextPath }/admin/userGradeAction" onclick="return false;">
					
					
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Grade</span>
							<input type="hidden" name="userId" value="${ sessionUserId }">
							<input type="hidden" name="userName" value="${ sessionUserName }">
							
							<select name="userGrade" style="width: 100%;">
							    <option value="1">일반</option>
							    <option value="2">전문가</option>
							</select>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">
							Apply<br />
							GradeUp
						</span>
							<textarea name="applyContent" id="grade_ApplyContent" style="width: 100%; height: 350px;" autofocus="autofocus"></textarea>
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="btn btn-outline-success" type="submit" onclick="gradeApplyAction()">
							Apply
						</button>
						&nbsp;&nbsp;
						<button class="btn btn-outline-warning" type="button" onclick="gradeApplyCancel()">
							Cancel
						</button>
					</div>
				</form>
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
	function gradeApplyAction() {
		if($("#grade_ApplyContent").val() == "") {
			$("#grade_ApplyContent").focus();
			alert("내용을 입력하세요.");
			return false;
		} else {
			frm.submit();
			alert("신청이 완료되었습니다.");
		}
	}
	function gradeApplyCancel() {
		location.href="${ pageContext.request.contextPath }/member/userInfo?userId=${ sessionUserId }";
	}
</script>
</html>