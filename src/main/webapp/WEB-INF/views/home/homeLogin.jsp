<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta name="keywords" content="Streamlab - Video Streaming HTML5 Template" />
	<meta name="description" content="Streamlab - Video Streaming HTML5 Template" />
	<meta name="author" content="StreamLab" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Login</title>
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
	<!-- CSS -->
	<link rel="stylesheet" href="/css/home.css"/>	
	<link rel="stylesheet" href="/css/mypageCommunity.css">
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/home/preLoader.jsp"%>
<!--=========== Loader =============-->

<!--========== Header ==============-->

<!--========== Header ==============-->

<!--========== Body ==============-->


        <!-- Start Preloader Area -->
        <div class="preloader-area">
            <div class="spinner">
                <div class="inner">
                    <div class="disc"></div>
                    <div class="disc"></div>
                    <div class="disc"></div>
                </div>
            </div>
        </div>
        <!-- End Preloader Area -->
        
        <!-- Start Preloader Area -->
        <div class="profile-authentication-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="profile-authentication-image">
                            <div class="content-image">
                            
                            	<!-- 이미지 링크 -->
                                <div class="logo">
                                    <a href="index.html"><img src="images/mypageCommunity/logo.png" alt="Zust"></a>
                                </div>
                                <div class="vector-image">
                                    <img src="images/myPageCommunity/vector.png" alt="image">
                                </div>
                                
                            </div>
                        </div>
                    </div>
    	
                    <div class="col-lg-6 col-md-12">
                        <div class="login-form">
                            <div style="text-align:center"><h2>Login</h2></div>
        
                            <form action="/login" method="post">
                            
                                <div class="form-group">
                                    <label> 이메일 </label>
                                    <input type="text" name="userEmail"  value="moon@gmail.com" class="form-control">
                                </div>
        
                                <div class="form-group">
                                    <label> 비밀번호 </label>
                                    <input type="password" name="userPassword" value="0000" class="form-control">
                                </div>
        
                                 <!-- <div class="remember-me-wrap d-flex justify-content-between align-items-center" 
                                style="position:absolute; left:10%;">  -->
                              		
                                        	<div class="lost-your-password-wrap">
                                        	<div style="float:left; color:grey;">
                                        	<input type="checkbox" id="test1">
                                        <label for="test1">이메일 기억하기</label>
                                        
                                        	</div>
                                       	
                                <button type="submit" class="default-btn"> 로그인 </button>
                                 <div class="or-text"><span></span></div> 
                                                               
                                		<div class="lost-your-password-wrap">
                                		<div style="float:left; color:grey;">
                                        	<a href="/" class="lost-your-password">홈으로 가기  </a>
                                        	</div>
                                        	<a href="/signup" class="lost-your-password">회원가입하기  </a> &nbsp;&nbsp;&nbsp;
                                        	<div style="float:right;">
                                        	<a href="/idFind" class="lost-your-password" style="color:grey;">이메일</a>&nbsp;<a href="/passwordFind" style="color:grey;">비밀번호찾기</a>
                                        	</div>
                                        	</div>
                                        	</div>
                                        	<div class="or-text"><span></span></div> 
                                        
                                        	
                                        	<!-- 이미지 링크 -->
                                        	<p>
                                        	
                                        	<div class="loginimages" class="col-lg-6 col-md-12">
                              		<img src="images/home/login/kakao-login.png" alt="kakao" style="max-width: 50%; float:left; width: 250px;">
                              		<img src="images/home/login/naver-login.png" alt="naver" style="max-width:50%; width:225px;">
                              		</div>
                            
                               
                                
                                        
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="home-btn-icon">
                <a href="index.html"><i class="flaticon-home"></i></a>
            </div>
        </div>
        <!-- End Preloader Area -->
        
        <!-- Links of JS files -->
         <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/jquery-ui.min.js"></script>
        <script src="assets/js/simplebar.min.js"></script>
        <script src="assets/js/metismenu.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/main.js"></script>
         
         
          <script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>
   
<!--========== Body ==============-->


<!--========== Footer ==============-->

<!--========== Footer ==============-->

<!-- js-min -->
<script src="/js/home/jquery-3.6.0.min.js"></script>
<script src="/js/home/asyncloader.min.js"></script>
<!-- JS bootstrap -->
<script src="/js/home/bootstrap.min.js"></script>
<!-- owl-carousel -->
<script src="/js/home/owl.carousel.min.js"></script>
<!-- counter-js -->
<script src="/js/home/jquery.waypoints.min.js"></script>
<script src="/js/home/jquery.counterup.min.js"></script>
<!-- popper-js -->
<script src="/js/home/popper.min.js"></script>
<script src="/js/home/swiper-bundle.min.js"></script>
<!-- Iscotop -->
<script src="/js/home/isotope.pkgd.min.js"></script>
<script src="/js/home/jquery.magnific-popup.min.js"></script>
<script src="/js/home/slick.min.js"></script>
<script src="/js/home/streamlab-core.js"></script>
<script src="/js/home/script.js"></script>


</body>

</html>