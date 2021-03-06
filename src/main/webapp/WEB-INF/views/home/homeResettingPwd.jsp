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

	<title>오늘 이거 볼래 ? | 비밀번호 재설정 </title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
	<!-- CSS -->
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
                             	  <div class = "logo" style="text-align:center">
                                <img src="images/myPageCommunity/logo-2.png" alt="image" style="margin-top: 100px !important;">
                                </div>
                                
                            </div>
                        </div>
                    </div>
    	
                    <div class="col-lg-6 col-md-12">
                        <div class="login-form" style="height:100%;">
                        
                            <div style="text-align:center"><h2> 비밀번호 재설정 </h2></div>
        
                            <form action="/updatingPwd" method="post" name="resettingPwd">
                               <input type="hidden" name="userEmail" value="${ userEmail}"/>
                                <div class="form-group">
                                    <label> 비밀번호  </label>
                                <input type="password" class="form-control"  name="userPassword" id="userPassword" style="margin-bottom: 30px !important;">
                                <span class="error_message"></span>
                                </div>
                                
        
                                <div class="form-group">
                                    <label> 비밀번호 재설정 </label>
                                    <input type="password" class="form-control" name="rePassword" id="rePassword">
                                	<span class="error_message"></span>
                                </div>
        
                                 
                                 <div class="or-text"><span></span></div> 
                               
							<button type="button" class="google-btn" name="btnResetting" id="btnResetting" style="margin-top: 40px !important; margin-bottom: 30px !important;">비밀번호 재설정</button>                                
                                		<div class="lost-your-password-wrap">
                                		<div style="float:left; color:grey;">
                                        	<a href="/" class="lost-your-password">홈으로 가기  </a>
                                        	</div>
                                        	<a href="/login" class="lost-your-password">로그인하기   </a> &nbsp;&nbsp;&nbsp; 
                                        	<a href="/passwordFind" class="lost-your-password">비밀번호 찾기 </a>
                                        	<div style="float:right; color:grey;">
                                  	 	</div>
                                        	</div>
                                        	<div class="or-text"><span></span></div> 
                                        
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="home-btn-icon">
                <a href="/"><i class="flaticon-home"></i></a>
            </div>
        </div>
        <!-- End Preloader Area -->

         
         
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
<!-- owl-carousel -->
<script src="/js/home/owl.carousel.min.js"></script>
<!-- counter-js -->
<script src="/js/home/jquery.waypoints.min.js"></script>
<script src="/js/home/jquery.counterup.min.js"></script>
<!-- Iscotop -->
<script src="/js/home/isotope.pkgd.min.js"></script>
<script src="/js/home/jquery.magnific-popup.min.js"></script>
<script src="/js/home/slick.min.js"></script>
<script src="/js/home/streamlab-core.js"></script>
<script src="/js/home/script.js"></script>


<!-- js추가 -->
 <script src="/js/home/UserLogin.js"></script>


</body>

</html>