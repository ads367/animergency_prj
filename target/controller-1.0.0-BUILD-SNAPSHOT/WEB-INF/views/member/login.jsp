<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign In</title>
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
						Sign In
					</a>
					</span>
				</div>

				<form class="login100-form validate-form" method="post" name="frm" action="${ pageContext.request.contextPath }/member/loginAction">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">ID</span>
						<input class="input100" type="text" name="userId" id="login_UserId" placeholder="Enter ID">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="userPw" id="login_UserPw" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<a href="${ pageContext.request.contextPath }/member/join" class="txt1">
								Sing Up
							</a>
						</div>

						<div>
							<a href="${ pageContext.request.contextPath }/member/passwordSearch" class="txt1">
								Forgot your password?
							</a>
						</div>
					</div>
					<div class="container-login100-form-btn" style="float: center;">
						<button class="login100-form-btn" onclick="userLoginCheck()">
							Login
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
	<script src="${ pageContext.request.contextPath }/resources/member/js/main.js"></script>

</body>
<script>
	function userLoginCheck() {
		if($("#login_UserId").val() == "") {
			$("#login_UserId").focus();
			alert("아이디를 입력하세요.");
			return false;
		}
		else if($("#login_UserPw").val() == "") {
			$("#login_UserPw").focus();
			alert("비밀번호를 입력하세요.");
			return false;
		}
		else {
			frm.submit();
		}
		
	}
</script>
</html>