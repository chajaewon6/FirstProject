<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.hotel.dao.*"%>
<%
    // 오라클로 부터 출력할 데이터를 읽어 온다 
    HotelDAO dao=new HotelDAO();
    ArrayList<HotelVO> list=dao.HotelListData();
    for(HotelVO vo:list)
    {
    	String s=vo.getTitle();
    	if(s.length()>20)
    	{
    		s=s.substring(0,20)+"...";
    	}
    	vo.setTitle(s);
    }
%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Travel HTML-5 Template </title>
        <style type="text/css">
        .form-row tm-search-form-row{
        margin-top: 400px;
        }
        </style>
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
            <!-- bootstrap -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<!-- search css,js -->
		<link rel="stylesheet" type="text/css" href="../css/datepicker.css"/>
    <link rel="stylesheet" type="text/css" href="../slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="../slick/slick-theme.css"/>
    <link rel="stylesheet" href="../css/templatemo-style.css">
    <script src="../js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
    <script src="../js/popper.min.js"></script>                    <!-- https://popper.js.org/ -->       
    <script src="../js/bootstrap.min.js"></script>                 <!-- https://getbootstrap.com/ -->
    <script src="../js/datepicker.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
    <script src="../js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
    <script src="../slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->
    <script src="../js/jquery.scrollTo.min.js"></script>  
    <script> 
        /* Google Maps
        ------------------------------------------------*/
        var map = '';
        var center;

        function initialize() {
            var mapOptions = {
                zoom: 16,
                center: new google.maps.LatLng(37.769725, -122.462154),
                scrollwheel: false
            };

            map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

            google.maps.event.addDomListener(map, 'idle', function() {
              calculateCenter();
          });

            google.maps.event.addDomListener(window, 'resize', function() {
              map.setCenter(center);
          });
        }

        function calculateCenter() {
            center = map.getCenter();
        }

        function loadGoogleMap(){
            var script = document.createElement('script');
            script.type = 'text/javascript';
            script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&' + 'callback=initialize';
            document.body.appendChild(script);
        } 

        /* DOM is ready
        ------------------------------------------------*/
        $(function(){

            // Change top navbar on scroll
            $(window).on("scroll", function() {
                if($(window).scrollTop() > 100) {
                    $(".tm-top-bar").addClass("active");
                } else {                    
                 $(".tm-top-bar").removeClass("active");
                }
            });

            // Smooth scroll to search form
            $('.tm-down-arrow-link').click(function(){
                $.scrollTo('#tm-section-search', 300, {easing:'linear'});
            });

            // Date Picker in Search form
            var pickerCheckIn = datepicker('#inputCheckIn');
            var pickerCheckOut = datepicker('#inputCheckOut');

            // Update nav links on scroll
            $('#tm-top-bar').singlePageNav({
                currentClass:'active',
                offset: 60
            });

            // Close navbar after clicked
            $('.nav-link').click(function(){
                $('#mainNav').removeClass('show');
            });

            // Slick Carousel
            $('.tm-slideshow').slick({
                infinite: true,
                arrows: true,
                slidesToShow: 1,
                slidesToScroll: 1
            });

            loadGoogleMap();                                       // Google Map                
            $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright           
        });

    </script>               
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
                                
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="header-info-right f-right">
                                <ul class="header-social">    
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                   <li> <a href="#"><i class="fab fa-pinterest-p"></i></a></li>
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
                                            <li><a href="#">숙박예약</a>
                                            </li>
                                            <li><a href="contact.html">마이페이지</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
        <!-- Header End -->
    </header>

    <main>
        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="../img/hero/contact_hero.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>호텔 예약</h2>
                            </div>
                        </div>
                            <!-- searchform -->
                            <!--  
                            <div class="row tm-banner-row" id="tm-section-search">

                            <form action="index.html" method="get" class="tm-search-form tm-section-pad-2">
                                <div class="form-row tm-search-form-row">                                
                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
                                        <label for="inputCity">호텔명</label>
                                        <input name="destination" type="text" class="form-control" id="inputCity" placeholder="호텔명을 입력하세요...">
                                    </div>
                                    <div class="form-group tm-form-group tm-form-group-1">                                    
                                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
                                            <label for="inputRoom">방 개수</label>
                                            <select name="room" class="form-control tm-select" id="inputRoom">
                                                <option value="1" selected>1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>                                        
                                        </div>
                                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">                                       
                                            <label for="inputAdult">성인</label>     
                                            <select name="adult" class="form-control tm-select" id="inputAdult">
                                                <option value="1" selected>1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>                                        
                                        </div>
                                        <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">

                                            <label for="inputChildren">유아</label>                                            
                                            <select name="children" class="form-control tm-select" id="inputChildren">
                                            	<option value="0" selected>0</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                            </select>                                        
                                        </div>
                                    </div>
                                </div> 
                                <div class="form-row tm-search-form-row">

                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
                                        <label for="inputCheckIn">체크인 날짜</label>
                                        <input name="check-in" type="text" class="form-control" id="inputCheckIn" placeholder="Check In">
                                    </div>
                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
                                        <label for="inputCheckOut">체크아웃 날짜</label>
                                        <input name="check-out" type="text" class="form-control" id="inputCheckOut" placeholder="Check Out">
                                    </div>
                                    <div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
                                        <label for="btnSubmit">&nbsp;</label>
                                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Search</button>
                                    </div>
                                </div>                              
                            </form>                             

                        </div>
                        -->
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->

        <!-- Favourite Places Start -->
        <div class="favourite-place place-padding">
            <div class="container">
                
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <h2 style="color:#00D8FF">#강남</h2>
                        </div>
                    </div>
                </div>
                
										    <a href="#" class="btn btn btn-sm">추천순</a>
										    <a href="#" class="btn btn btn-sm">낮은 가격순</a>
										    <a href="#" class="btn btn btn-sm">높은 가격순</a>
									 
                <div class="row">
                		<%
						           for(HotelVO vo:list)
						           {
       							%>
       							
                    <div class="col-xl-4 col-lg-4 col-md-6">
                    
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="<%=vo.getPoster() %>" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                <div class="#">
                                    <span><i class="fas fa-star"></i>
                                    <span><%=vo.getStar() %></span> 
                                    </span>
                                    </div>
                                    <h3><a href="#"><%=vo.getTitle() %></a></h3>
                                    <p class="dolor"><%=vo.getGrade() %> <span>/<%=vo.getPrice() %></span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <!--  <li><i class="far fa-clock"></i>3 Days</li> -->
                                        <li><i class="fas fa-map-marker-alt"></i><%=vo.getAddr() %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    		<%
						           			}
                        %>
                   
                </div>
            </div>
        </div>
        <!-- Favourite Places End -->

        <!-- Pagination-area Start -->
        <div class="pagination-area pb-100 text-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="single-wrap d-flex justify-content-center">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-start">
                                  <li class="page-item"><a class="page-link" href="#"><span class="flaticon-arrow roted left-arrow"></span></a></li>
                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                  <li class="page-item"><a class="page-link" href="#"><span class="flaticon-arrow right-arrow"></span></a></li>
                                </ul>
                              </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pagination-area End -->
    </main>
    <footer>
        
        <!-- Footer Start-->
        <div class="footer-area footer-padding footer-bg" data-background="../img/service/footer_bg.jpg">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                              <!-- logo -->
                             <div class="footer-logo">
                                 <a href="index.html"><img src="../img/logo/logo2_footer.png" alt=""></a>
                             </div>
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p>Lorem iaspsum doldfor sit amvset, consectetur adipisicing cvelit csed do eiusmod tempor incididucvccnt ut labovre.</p>
                                </div>
                             </div>
                         </div>
                       </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Quick Links</h4>
                                <ul>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#"> Offers & Discounts</a></li>
                                    <li><a href="#"> Get Coupon</a></li>
                                    <li><a href="#">  Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>New Products</h4>
                                <ul>
                                    <li><a href="#">Woman Cloth</a></li>
                                    <li><a href="#">Fashion Accessories</a></li>
                                    <li><a href="#"> Man Accessories</a></li>
                                    <li><a href="#"> Rubber made Toys</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                 <li><a href="#">Frequently Asked Questions</a></li>
                                 <li><a href="#">Terms & Conditions</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Privacy Policy</a></li>
                                 <li><a href="#">Report a Payment Issue</a></li>
                             </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer bottom -->
                <div class="row pt-padding">
                 <div class="col-xl-7 col-lg-7 col-md-7">
                    <div class="footer-copy-right">
                         <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                 </div>
                  <div class="col-xl-5 col-lg-5 col-md-5">
                        <!-- social -->
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                        </div>
                 </div>
             </div>
            </div>
        </div>
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
        <script src="./../js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./../js/jquery.scrollUp.min.js"></script>
        <script src="./../js/jquery.nice-select.min.js"></script>
		<script src="./../js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./../js/contact.js"></script>
        <script src="./../js/jquery.form.js"></script>
        <script src="./../js/jquery.validate.min.js"></script>
        <script src="./../js/mail-script.js"></script>
        <script src="./../js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./../js/plugins.js"></script>
        <script src="./../js/main.js"></script>
        
    </body>
</html>