<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="${ pageContext.request.contextPath }/resources/info/info.css" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->
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
               <li class="nav-item"><a class="nav-link" href="${ pageContext.request.contextPath }/member/login">로그인</a>
               </li>
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
               <div class="page-heading">
                  <h1>Introduce</h1>
                  <span class="subheading">New Idiots_새얼간이</span>
               </div>
            </div>
         </div>
      </div>
   </header>


   <!-- Main Content -->
   
        <div class="container">
          <div class="row blog">
            <div class="col-md-12">
            
                <!-- Carousel items -->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="row">
                      <div class="col-md-4" >
                        <div class="item-box-blog">
                          <div class="item-box-blog-image">
                            <!--Date-->
                           
                            <!--Image-->
                            <figure> <img alt="" src="${ pageContext.request.contextPath }/resources/img/ChoiMinSik.jpg"> </figure>
                          </div>
                          <div class="item-box-blog-body">
                            <!--Heading-->
                            <div class="item-box-blog-heading">
                                <h4>Choi MinSik</h4>
                              </a>
                            </div>
                            <!--Data-->
                            <div class="item-box-blog-data" style="padding: px 15px;">
                              <p style="font-size: medium;"><i class="fa fa-user-o"></i> 팀장, <i class="fa fa-comments-o"></i> Full-Stack</p>
                            </div>
                            <!--Text-->
                            <div>
                              <p style="font-size: initial;">말티즈 강아지 3살 6.3kg 초롱이 형이예요🐶</p>
                            </div>
                            
                          </div>
                        </div>
                      </div>
                      
                      
                      <div class="col-md-4" >
                        <div class="item-box-blog">
                          <div class="item-box-blog-image">
                            <!--Date-->
                           
                            <!--Image-->
                            <figure> <img alt="" src="${ pageContext.request.contextPath }/resources/img/ChoYongHan.jpg"> </figure>
                          </div>
                          <div class="item-box-blog-body">
                            <!--Heading-->
                            <div class="item-box-blog-heading">
                                <h4>Cho YongHan</h4>
                              </a>
                            </div>
                            <!--Data-->
                            <div class="item-box-blog-data" style="padding: px 15px;">
                              <p style="font-size: medium;"><i class="fa fa-user-o"></i> 팀원, <i class="fa fa-comments-o"></i> Back-End</p>
                            </div>
                            <!--Text-->
                            <div>
                              <p style="font-size: initial;">크림색 토이푸들 강아지 0.5살 감자 아빠에요🐾</p>
                            </div>
                            
                          </div>
                        </div>
                      </div>
                      
                      
                      
                      
                      
                      <div class="col-md-4" >
                        <div class="item-box-blog">
                          <div class="item-box-blog-image">
                            <!--Date-->
                            
                            <!--Image-->
                            <figure> <img alt="" src="${ pageContext.request.contextPath }/resources/img/KimNaYeon.jpg"> </figure>
                          </div>
                          <div class="item-box-blog-body">
                            <!--Heading-->
                            <div class="item-box-blog-heading">
                                <h4>Kim NaYeon</h4>
                              </a>
                            </div>
                            <!--Data-->
                            <div class="item-box-blog-data" style="padding: px 15px;">
                              <p style="font-size: medium;"><i class="fa fa-user-o"></i> 팀원, <i class="fa fa-comments-o"></i> Front-End</p>
                            </div>
                            <!--Text-->
                           <!--  <div class="item-box-blog-text"> -->
                              <p style="font-size: initial;">아메리칸 숏헤어 고양이 2살 꼬미 엄마예요🐱⭐</p>
                            </div>
                         
                          </div>
                        </div>
                      </div>
                    </div>
                    <!--.row-->
                  </div>
                    <!--.row-->
                  </div>
                  <!--.item-->
                </div>
                <!--.carousel-inner-->
              </div>
              <!--.Carousel-->
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