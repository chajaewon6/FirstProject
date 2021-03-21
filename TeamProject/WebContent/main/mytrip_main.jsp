<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Travel HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="../css/bootstrap.min.css">
            <link rel="stylesheet" href="../css/owl.carousel.min.css">
            <link rel="stylesheet" href="../css/flaticon.css">
            <link rel="stylesheet" href="../css/slicknav.css">
            <link rel="stylesheet" href="../css/animate.min.css">
            <link rel="stylesheet" href="../css/magnific-popup.css">
            <link rel="stylesheet" href="../css/fontawesome-all.min.css">
            <link rel="stylesheet" href="../css/themify-icons.css">
            <link rel="stylesheet" href="../css/slick.css">
            <link rel="stylesheet" href="../css/nice-select.css">
            <link rel="stylesheet" href="../css/style.css">
            <link rel="stylesheet" href="../css/profile.css">
   </head>

   <body>
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="../img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-top top-bg d-none d-lg-block">
                   <div class="container">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-lg-8">
                            <div class="header-info-left">
                                <ul>                          
                                    <!-- <li>needhelp@gotrip.com</li>
                                    <li>666 569 025077</li>
                                    <li>broklyn street new york</li> -->
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="header-info-right f-right">
                                <ul class="header-social">    
                                    <li><a href="#"><input type=button value="로그인"></input></a></li>
                                    <li><a href="#"><input type=button value="회원가입"></input></a></li>
                                    <!-- <li><a href="#"><input type=button></input></a></li>
                                   <li> <a href="#"><input type=button></input></a></li> -->
                                </ul>
                            </div>
                        </div>
                       </div>
                   </div>
                </div>
               <div class="header-bottom  header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.html"><img src="../img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>               
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="about.html">지역별관광지</a>
                                            <ul class="submenu">
                                                    <li><a href="blog.html">광화문</a></li>
                                                    <li><a href="single-blog.html">명동</a></li>
                                                    <li><a href="blog.html">동대문</a></li>
                                                    <li><a href="single-blog.html">홍대</a></li>
                                                    <li><a href="blog.html">여의도</a></li>
                                                    <li><a href="single-blog.html">이태원</a></li>
                                                    <li><a href="blog.html">강남</a></li>
                                                    <li><a href="single-blog.html">잠실</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="packages.html">나의 일정 만들기</a></li>
                                            <li><a href="blog.html">다른 일정 둘러보기</a>
                                                <ul class="submenu">
                                                    <li><a href="blog.html">지역별</a></li>
                                                    <li><a href="single-blog.html">장소별</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">커뮤니티</a>
                                             <ul class="submenu">
                                                    <li><a href="single-blog.html">여행사진 공유</a></li>
                                                    <li><a href="single-blog.html">공지사항</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">숙박예약</a>
                                                <ul class="submenu">
                                                    <li><a href="elements.html">Element</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">마이페이지</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
        </header>
  
    <!-- 내용 들어가는 위치 -->
    <jsp:include page="mytrip.jsp"></jsp:include>
        <!-- Footer End-->
    </footer>

<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./../js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./../js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./../js/popper.min.js"></script>
        <script src="./../js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./../js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./../js/owl.carousel.min.js"></script>
        <script src="./../js/slick.min.js"></script>

		<!-- One Page, Animated-HeadLin -->
        <script src="./../js/wow.min.js"></script>
		<script src="./../js/animated.headline.js"></script>
		
		<!-- Scrollup, nice-select, sticky -->
        <script src="./../js/jquery.scrollUp.min.js"></script>
        <script src="./../js/jquery.nice-select.min.js"></script>
		<script src="./../js/jquery.sticky.js"></script>
        <script src="./../js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="./../js/contact.js"></script>
        <script src="./../js/jquery.form.js"></script>
        <script src="./../js/jquery.validate.min.js"></script>
        <script src="./../js/mail-script.js"></script>
        <script src="./../js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./../js/plugins.js"></script>
        <script src="./../js/main.js"></script>
        
        <script src="script.js"></script>

</body>
</html>