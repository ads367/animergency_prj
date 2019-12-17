<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
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
						Sign Up
					</a>
					</span>
				</div>

				<form class="login100-form validate-form" method="post" name="frm" action="${ pageContext.request.contextPath }/member/joinAction" onclick="return false;">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required" style="width: 75%">
						<span class="label-input100">ID</span>
						<input class="input100" type="text" name="userId" id="join_UserId" placeholder="Enter ID">
						<span class="focus-input100"></span>
					</div>
					
					<button id="userIdCheck" class="btn btn-secondary" style="height: 5%; font-size: smaller;" onclick="userIdCheck1()">Check</button>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="userPw" id="join_UserPw" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password Check</span>
						<input class="input100" type="password" id="join_UserPw_Check" placeholder="Enter password Check">
						<span class="focus-input100"></span>
					</div>
					
					<div id="passwordSuccess">
						<p style="font-family: Poppins-Regular; font-size: 15px; color: blue; line-height: 1.2;
							display: block; width: 100%; background: transparent; padding: 0 5px;">
							<font size="2">비밀번호가 일치합니다.</font>
						</p>
					</div>
					<div id="passwordDanger">
						<p style="font-family: Poppins-Regular; font-size: 15px; color: red; line-height: 1.2;
							display: block; width: 100%; background: transparent; padding: 0 5px;">
							<font size="2">비밀번호가 일치하지 않습니다.</font>
						</p>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Name</span>
						<input class="input100" type="text" name="userName" id="join_UserName" placeholder="Enter Name">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Phone</span>
						<input class="input100" type="text" name="userPhone" id="join_UserPhone" placeholder="Enter Phone">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Addr</span>
						<input class="input100" type="text" name="userAddr" id="join_UserAddr" placeholder="Enter Addr">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Email</span>
						<input class="input100" type="email" name="userEmail" id="join_UserEmail" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" style="background-color: steelblue;" onclick="joinCheck()">
							Join
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="login100-form-btn" type="button" style="background-color: steelblue;" onclick="joinCancel()">
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
$(function(){
	$("#passwordSuccess").hide();
	$("#passwordDanger").hide();
	$("#join_UserPw_Check").keyup(function(){
		var pw = $("#join_UserPw").val();
		var pwck = $("#join_UserPw_Check").val();
		if(pw != "" || pwck != "") {
			if(pw == pwck) {
				$("#passwordSuccess").show();
				$("#passwordDanger").hide();
			} else if (pw != pwck) {
				$("#passwordSuccess").hide();
				$("#passwordDanger").show();
			} else {
				$("#passwordSuccess").hide();
				$("#passwordDanger").hide();
			}
		}
	});
});

	function userIdCheck1() {
		if($("#join_UserId").val() == "") {
			$("#join_UserId").focus();
			alert("아이디를 입력하세요.");
			return false;
		} else {
			$.ajax({
				type : "POST",
				url : "${ pageContext.request.contextPath }/member/userIdCheck",
				data : "userId="+$("#join_UserId").val(),
				dataType : "json",
				success : function(result) {
					if(result == 0) {
						$("#join_UserId").attr("disabled", true);
						alert("사용 가능한 아이디입니다.");
					} else if(result == 1) {
						$("#join_UserId").focus();
						alert("이미 존재하는 아이디입니다. \n다른 아이디를 사용해주세요.");
						return false;
					} else {
						alert("에러가 발생했습니다.");
					}
				},
				error : function(error) {
					alert("서버가 응답하지 않습니다. \n다시 시도해주시기 바랍니다.");
				}
			});
		}
	}
	
	function joinCheck() {
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
 		if(!$("#join_UserId").attr("disabled")) {
			$("#join_UserId").focus();
			alert("아이디 중복확인을 하세요.");
			return false;
		}
		else if($("#join_UserPw").val() == "") {
			$("#join_UserPw").focus();
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		else if($("#join_UserPw_Check").val() == "") {
			$("#join_UserPw_Check").focus();
			alert("비밀번호 확인을 입력해주세요.");
			return false;
		}
		else if($("#join_UserPw").val() != $("#join_UserPw_Check").val()) {
			$("#join_UserPw").focus();
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		else if($("#join_UserName").val() == "") {
			$("#join_UserName").focus();
			alert("이름을 입력해주세요.");
			return false;
		}
		else if($("#join_UserPhone").val() == "") {
			$("#join_UserPhone").focus();
			alert("전화번호를 입력해주세요.");
			return false;
		}
		else if($("#join_UserAddr").val() == "") {
			$("#join_UserAddr").focus();
			alert("주소를 입력해주세요.");
			return false;
		}
		else if($("#join_UserEmail").val() == "") {
			$("#join_UserEmail").focus();
			alert("이메일을 입력해주세요.");
			return false;
		}
		else if(!getMail.test($("#join_UserEmail").val())) {
			$("#join_UserEmail").focus();
			alert("이메일 형식에 맞게 입력해주세요.");
			return false;
		}
		else {
			var joinCheck = confirm("회원가입을 하시겠습니까?");
			if(joinCheck == true) {
				$("#join_UserId").attr("disabled", false);
				frm.submit();
			}
		}
	}
	
	function joinCancel() {
		var cancelCheck = confirm("회원가입을 취소하시겠습니까?");
		if(cancelCheck == true) {
			location.href="${ pageContext.request.contextPath }/member/login";
		}
	}
</script>

</html>