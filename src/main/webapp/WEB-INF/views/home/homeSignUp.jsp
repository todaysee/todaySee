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

	<title>오늘 이거 볼래 ? | 회원가입</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
	<!-- CSS -->
	<link rel="stylesheet" href="/css/home.css"/>
	<link rel="stylesheet" href="/css/mypageCommunity.css">
	<!-- 문혜진 CSS  -->
    <link rel="stylesheet" href="/css/home/homeStyle.css">
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
                              <!--   <div class = "logo" style="text-align:center">
                                <img src="images/myPageCommunity/team4_Logo.png" alt="image" style="margin-top: 170px !important;">
                                </div>  -->
                                 <div class = "logo" style="text-align:center">
                                <img src="images/myPageCommunity/logo-2.png" alt="image" style="margin-top: 230px !important;">
                                </div>
                                                               
                            </div>
                        </div>
                    </div>
    
                    <div class="col-lg-6 col-md-12">
                        <div class="register-form">
                            <div style="text-align:center"><h2>회원가입</h2></div>
        
                            <form id="signUp_frm" action="/signUp" method="post">
                                <div class="form-group">
                                    <label>닉네임</label>
                                    <input type="text" id="userNickname" name="userNickname" class="form-control">
                                    <span class="error_box"></span>
                                  </div>

								&nbsp;
								<div class="row">
                                <div class="form-group col-md-9" >
                                    <label for="userEmail">이메일</label>
                                    <input type="email"  id="userEmail" name="userEmail" class="form-control" style="margin-right:0px;">
                             		<span class="error_box"></span>
									</div>
									<div class="post-btn col-md-3">
									
                                  <input type="button" id="btn_emailCheck" class="default-btn" name="btn_emailCheck" style="border-radius: 13px; 
                                  padding-left: 20px !important; padding-right: 20px !important; margin-top: 30px; margin-left:5px;" value="중복확인"/>
                             		</div>
                             		</div>
                             		 
                             		
                                <div class="form-group">
                                
                                    <label>비밀번호</label>
                                    <input type="password" id="userPassword" name="userPassword" class="form-control">
                                     <span class="error_box"></span>
                                    
                                </div>

                                &nbsp;
                                <div class="form-group">
                                    <label>비밀번호 확인 </label>
                                    <input type="password" id="userPassword2" name="userPassword2"  class="form-control">
                                    <span class="error_box"></span>
                                 </div>
                                
                                &nbsp;
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" id="userName" name="userName" class="form-control">
                                    <span class="error_box"></span>
                                   </div>
                                
                                &nbsp;
                                <div class="form-group">
                                    <label>성별</label>
                                    
                                   	<select class="form-control" id="userGender" name="userGender" id="gender">
                                   		<option value="">성별을 선택해주세요</option>
                                   		<option value="여성">여성</option>
                                   		<option value="남성">남성</option>
                                   		</select>
                                   		<span class="error_box"></span>
                                 </div>
                               
                                &nbsp;
                                <div class="form-group">
                                    <label>휴대전화번호</label>
                                    <input type="text" id="userTel" name="userTel" class="form-control">
                                    <span class="error_box"></span>
                                </div>
        
                                
                                <div class="remember-me-wrap">
                                   		<input type="checkbox" id="checkBox" name="checkBox">
                                   		
                                        <label for="checkBox" style="float: right;">이용약관에 동의합니다.</label>
                                        <span class="error_box"></span>
                                        	&nbsp;&nbsp;	&nbsp;	
                                        	
                                   
                                </div>
                                <div class="or-text"><span></span></div>  
                                
                                <div class="post-btn">
								<button type="submit" id="btn_register" name="btn_register" class="default-btn" style="border-radius: 13px; 
											padding-left: 20px !important; padding-right: 20px !important; width: 100%;">회원가입</button>	
											</div>
											
											
						<!-- 		<div class="post-btn">
								<button type="submit" id="btn_register" name="btn_register" style="border-radius: 13px; 
											padding-left: 20px !important; padding-right: 20px !important; width: 100%;">회원가입</button>	
											</div>	
											
											
								<button type="button" class="default-btn" name="btn_Login" id="btn_Login"> 로그인 </button>
                                 <div class="or-text"><span></span></div> 			
                                  -->
									
									
									<div class="lost-your-password-wrap" style="margin-top: 20px;">
                                        	<a href="/" class="lost-your-password" style="float:left; color:grey;">홈으로 가기  </a>
                                       
                                        	<div style="float:right;">
                                        	<a href="/login" class="lost-your-password" style="color:grey;">로그인하기</a>
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