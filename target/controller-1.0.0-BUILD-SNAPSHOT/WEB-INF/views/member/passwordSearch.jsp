<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Password Search</title>
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
					<a href="/" style="  font-family: Poppins-Bold; font-size: 30px; color: #fff;
						text-transform: uppercase; line-height: 1.2; text-align: center;">
						AniMergency <br />
						password search
					</a>
					</span>
				</div>

				<form class="login100-form validate-form" method="post" name="frm" action="${ pageContext.request.contextPath }/member/passwoardSearchAction" onclick="return false;">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">ID</span>
						<input class="input100" type="text" name="userId" id="passwordSearch_UserID" placeholder="Enter ID">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Email</span>
						<input class="input100" type="email" name="userEmail" id="passwordSearch_UserEamil" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn" style="float: center;" onclick="passwordSearch()">
						<button class="login100-form-btn">
							Search
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
	function passwordSearch() {
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		if($("#passwordSearch_UserID").val() == "") {
			$("#passwordSearch_UserID").focus();
			alert("아이디를 입력하세요.");
			return false;
		}
		else if($("#passwordSearch_UserEamil").val() == "") {
			$("#passwordSearch_UserEamil").focus();
			alert("이메일을 입력해주세요.");
			return false;
		} 
		else if(!getMail.test($("#passwordSearch_UserEamil").val())){
			$("#passwordSearch_UserEamil").focus();
			alert("이메일 형식에 맞게 작성해주세요.");
			return false;
		}
		else {
			frm.submit();
		}
	}
</script>

</html>