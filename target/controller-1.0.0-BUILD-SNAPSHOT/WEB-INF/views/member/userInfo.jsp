<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

				<form class="login100-form validate-form" method="post" name="frm" action="${ pageContext.request.contextPath }/member/updateAction" onclick="return false;">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">ID</span>
						<input type="hidden" name="userIDX" value="${ userVO.userIDX }">
						<input class="input100" type="text" name="userId" id="update_UserId" placeholder="Enter ID" value="${ userVO.userId }" readonly="readonly">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">regDate</span>
						<input class="input100" type="text" name="userDate" value="${ userVO.userDate }" readonly="readonly">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required" style="width: 75%;">
						<span class="label-input100">Grade</span>
						<input class="input100" type="text" value="${ gradeCheck }" readonly="readonly">
						<span class="focus-input100"></span>
					</div>
					
					<button class="btn btn-outline-primary" type="button" onclick="gradeApply()" style="height: 5%; font-size: smaller;">
						Grade Up
					</button>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="userPw" id="update_UserPw" placeholder="Enter password" value="${ userVO.userPw }" autofocus="autofocus">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password Check</span>
						<input class="input100" type="password" id="update_UserPw_Check" placeholder="Enter password Check" value="${ userVO.userPw }">
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
						<input class="input100" type="text" name="userName" id="update_UserName" placeholder="Enter Name" value="${ userVO.userName }">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Phone</span>
						<input class="input100" type="text" name="userPhone" id="update_UserPhone" placeholder="Enter Phone" value="${ userVO.userPhone }">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Addr</span>
						<input class="input100" type="text" name="userAddr" id="update_UserAddr" placeholder="Enter Addr" value="${ userVO.userAddr }">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Email</span>
						<input class="input100" type="email" name="userEmail" id="update_UserEmail" placeholder="Enter Email" value="${ userVO.userEmail }">
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn" style="text-align: right;">
						<button class="btn btn-outline-success" type="submit" onclick="updateCheck()">
							Update
						</button>
						&nbsp;&nbsp;
						<button class="btn btn-outline-danger" type="button" onclick="AnimalView()">
							Animal
						</button>
						&nbsp;&nbsp;
						<button class="btn btn-outline-warning" type="button" onclick="logOutAction()">
							LogOut
						</button>
						&nbsp;&nbsp;
						<c:if test="${ sessionUserGrade == 99 }">
							<button class="btn btn-outline-dark" type="button" onclick="adminPageView()">
								adminPage
							</button>
						</c:if>
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
	$("#update_UserPw_Check").keyup(function(){
		var pw = $("#update_UserPw").val();
		var pwck = $("#update_UserPw_Check").val();
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

	function updateCheck() {
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		if($("#update_UserPw").val() == "") {
			$("#update_UserPw").focus();
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		else if($("#update_UserPw_Check").val() == "") {
			$("#update_UserPw_Check").focus();
			alert("비밀번호 확인을 입력해주세요.");
			return false;
		}
		else if($("#update_UserPw").val() != $("#update_UserPw_Check").val()) {
			$("#update_UserPw").focus();
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
		else if($("#update_UserName").val() == "") {
			$("#update_UserName").focus();
			alert("이름을 입력해주세요.");
			return false;
		}
		else if($("#update_UserPhone").val() == "") {
			$("#update_UserPhone").focus();
			alert("전화번호를 입력해주세요.");
			return false;
		}
		else if($("#update_UserAddr").val() == "") {
			$("#update_UserAddr").focus();
			alert("주소를 입력해주세요.");
			return false;
		}
		else if($("#update_UserEmail").val() == "") {
			$("#update_UserEmail").focus();
			alert("이메일을 입력해주세요.");
			return false;
		}
		else if(!getMail.test($("#update_UserEmail").val())) {
			$("#update_UserEmail").focus();
			alert("이메일 형식에 맞게 입력해주세요.");
			return false;
		}
		else {
			var joinCheck = confirm("정보를 수정 하시겠습니까?");
			if(joinCheck == true) {
				frm.submit();
			}
		}
	}
	
	function AnimalView() {
		location.href="${ pageContext.request.contextPath }/member/animalList?userId=${sessionUserId}";
	}
	
	function gradeApply() {
		location.href="${ pageContext.request.contextPath }/member/gradeView?userId=${ userVO.userId }";
	}
	
	function logOutAction() {
		location.href="${ pageContext.request.contextPath }/member/logoutAction";
	}
	function adminPageView() {
		location.href="${ pageContext.request.contextPath }/admin/adminPage";
	}
</script>

</html>