<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="${ pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${ pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css"
   rel="stylesheet" type="text/css">
<link
   href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
   rel='stylesheet' type='text/css'>
<link
   href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
   rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="${ pageContext.request.contextPath }/resources/css/clean-blog.min.css" rel="stylesheet">

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
               <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/info"
                  style="font: 5em">소개</a></li>
               <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/"
                  style="font: 5em">홈</a></li>
               <li class="nav-item"><a class="nav-link"
                  href="${ pageContext.request.contextPath }/training/training">훈련게시판</a></li>
               <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/free/free">자유게시판</a>
               </li>
               <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/qa/qa">질의응답</a>
               </li>
               <c:choose>
					<c:when test="${empty sessionUserId }">
				<li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/member/login">로그인</a></li>
					</c:when>
				<c:otherwise>
					<li class="nav-item">
						<a class="nav-link" href="${ pageContext.request.contextPath }/member/userInfo?userId=${ sessionUserId }">${ sessionUserName }님</a>
					</li>
					</c:otherwise>
				</c:choose>
            </ul>
         </div>
      </div>
   </nav>

   <!--  Page Header -->
   <header class="masthead"
      style="background-image: url('${ pageContext.request.contextPath }/resources/img/background.png')">
      <div class="overlay"></div>
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
               <div class="site-heading">

                  <div id="carouselExampleIndicators" class="carousel slide"
                     data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0"
                           class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                     </ol>
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <img src="${ pageContext.request.contextPath }/resources/img/home1.jpg" class="d-block w-100"
                              alt="animal">
                        </div>
                        <div class="carousel-item">
                           <img src="${ pageContext.request.contextPath }/resources/img/home2.jpg" class="d-block w-100"
                              alt="뿌엥">
                        </div>
                        <div class="carousel-item">
                           <img src="${ pageContext.request.contextPath }/resources/img/home3.jpg" class="d-block w-100"
                              alt="?">
                        </div>
                     </div>
                     <a class="carousel-control-prev"
                        href="#carouselExampleIndicators" role="button"
                        data-slide="prev"> <span class="carousel-control-prev-icon"
                        aria-hidden="true"></span> <span class="sr-only">Previous</span>
                     </a> <a class="carousel-control-next"
                        href="#carouselExampleIndicators" role="button"
                        data-slide="next"> <span class="carousel-control-next-icon"
                        aria-hidden="true"></span> <span class="sr-only">Next</span>
                     </a>
                  </div>
                  <span class="subheading">댕댕이 냥이들과 즐겁게 사는 법</span>
                  <span class="subheading">초보집사님들을 위한 알뜰살뜰한 인뽀😘 </span>
               </div>
            </div>
         </div>
      </div>
   </header>


   <!-- Main Content -->
   <div class="container">
      <div class="row">
         <div class="col-lg-8 col-md-10 mx-auto">
            <hr>
            <div class="post-preview">
               <a href="http://www.animal.go.kr/">
                  <h2 class="post-title">우리 아이 신분증 만들어 주셨나요?</h2>
                  
                  <img src="${ pageContext.request.contextPath }/resources/img/animal1.jpg" alt="동물보호관리시스템">
                  
                  <h5 class="post-subtitle">8월 31일 이달 말까지 동물등록 자진신고기간!서두르세요~</h5>
                  <h5 class="post-subtitle">9월부터 동물등록과 정본 변경 신고 미이행 적발 시 과태료
                     부과!</h5>
                  <h6 class="post-subtitle">동물보호관리시스템 바로가기</h6>
               </a>
               <p class="post-meta">on August 26, 2019</p>
            </div>
            <hr>
            <div class="post-preview">
               <a href="post.html">
                  <h2 class="post-title">HOT!무엇이든 물어보시개
                  </h2>
                  
                  <iframe width="640" height="360"
               src="https://www.youtube.com/embed/7XnbrXVTiOM" frameborder="0"
               allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
               allowfullscreen></iframe>
                  
                  <h5 class="post-subtitle">강아지 강 씨 개통령 강형욱에게 무엇이든 물어보시개 #아는형님 #JTBC봐야지</h3>
               </a>
               <p class="post-meta">
                  on August 25, 2019
               </p>
            </div>
            <hr>
            <div class="post-preview">
               <a href="http://www.petmagazine.kr/news/articleView.html?idxno=496">
                  <h2 class="post-title">Pet Magazine</h2>
                  <h2>고양이는 왜 우유를 마시면 안될까?</h2>
                  <h5 class="post-subtitle">고양이에게 우유를 먹이는 것은 자연스럽게 보인다. 대부분의
                     새끼고양이가 우유를 좋아하고, 과거에는 우유를 주는 것을 전통으로 여겼다. 하지만,</h5>
                  <h6 class="post-subtitle">...See More</h6>
               </a>
               <p class="post-meta">
                  Posted by <a href="#">심재훈 reporter</a> on August 26, 2019
               </p>
            </div>

            <hr>
            <!-- Pager -->
            <div class="clearfix">
               <a class="btn btn-primary float-right" href="#">TOP &uarr;</a>
            </div>
         </div>
      </div>
   </div>

   <hr>

   <!-- Footer -->
   <footer>

      <p class="copyright text-muted">New Idiots &copy; Korean
         Foundation for Quality 2019</p>

   </footer>

   <!-- Bootstrap core JavaScript -->
   <script src="${ pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
   <!--  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

   <!-- Custom scripts for this template -->
   <script src="${ pageContext.request.contextPath }/resources/js/clean-blog.min.js"></script>

</body>

</html>