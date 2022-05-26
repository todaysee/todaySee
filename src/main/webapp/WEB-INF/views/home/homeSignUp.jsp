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

	<title>회원가입</title>

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
                        <div class="register-form">
                            <div style="text-align:center"><h2>회원가입</h2></div>
        
                            <form action="/signup" method="post">
                                <div class="form-group">
                                    <label>닉네임</label>
                                    <input type="text" name="userNickname" class="form-control" value="Gill">
                                   
                                </div>

								
								&nbsp;
								<div class="row">
                                <div class="form-group col-md-9" >
                                    <label>이메일</label>
                                    <input type="email" name="userEmail" class="form-control" value="moon@gmail.com" style="margin-right:0px;">
									</div>
									<div class="post-btn col-md-3">
                                  <button type="submit" class="button_h" name="emailcheck" style="border-radius: 13px; 
                                  padding-left: 20px !important; padding-right: 20px !important; margin-top: 30px; margin-left:5px;">중복확인</button>
                             		</div>
                             		</div>
                             		 
                             		
                                <div class="form-group">
                                
                                    <label>비밀번호</label>
                                    <input type="password" name="userPassword" class="form-control">
                                </div>

                                &nbsp;
                                <div class="form-group">
                                    <label>비밀번호 확인 </label>
                                    <input type="password" name="userPassword2"  class="form-control">
                                </div>
                                
                                &nbsp;
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" name="userName" value="TOMBOY" class="form-control">
                                </div>
                                
                                &nbsp;
                                <div class="form-group">
                                    <label>성별</label>
                                    
                                   	<select class="form-control" name="userGender" id="gender">
                                   		<option value="choice">성별을 선택해주세요</option>
                                   		<option value="Woman">여성</option>
                                   		<option value="Man">남성</option>
                                   		</select>
                                   	
                                </div>
                               
                                &nbsp;
                                <div class="form-group">
                                    <label>휴대전화번호</label>
                                    <input type="text" name="userTel" value="010333" class="form-control">
                                </div>
        
                                
                                <div class="remember-me-wrap">
                                    	 <input type="checkbox" id="test1">
                                        <label for="test1" style="float: right;"> <a href="privacy.html">이용약관에 동의합니다.</a></label>
                                        	&nbsp;&nbsp;	&nbsp;	
                                        	
                                   
                                </div>
                                <div class="or-text"><span></span></div>  
                                
                                <div class="post-btn">
								<button type="submit" name="register" style="border-radius: 13px; 
											padding-left: 20px !important; padding-right: 20px !important; width: 100%;">Register</button>	
											</div>
									
									
									<div class="lost-your-password-wrap" style="margin-top: 20px;">
                                		<div style="float:left;">
                                        	<a href="/" class="lost-your-password" style="color:grey;">홈으로 가기  </a>
                                        	</div>
                                       	<div style="float:right; color:grey;" class="lost-your-password"><a href="/idFind">이메일</a>/<a href="/passwordFind">비밀번호</a> 찾기 
                                        	</div>                                        	
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