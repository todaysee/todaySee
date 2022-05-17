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

	<title>Streamlab - Video Streaming HTML5 Template</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
	<!-- CSS -->
	<link rel="stylesheet" href="/css/home.css"/>
	<style type="text/css">
		#click_page > a {
			color : #e50916;
		}
		
		.search_result{
			padding: 3% 0% 1% 3%
		}
	</style>
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/home/preLoader.jsp"%>
<!--=========== Loader =============-->

<!--========== Header ==============-->
<%@ include file="../inculde/home/navbar.jsp"%>
<!--========== Header ==============-->

<!--========== Body ==============-->

   <!-- breadcrumb -->
    <div class="gen-breadcrumb" style="background-image: url('images/background/asset-25.jpeg');">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav aria-label="breadcrumb">
                        <div class="gen-breadcrumb-title">
                            <h1>
                                즐겨찾기
                            </h1>
                        </div>
                        <div class="gen-breadcrumb-container">
                            <ol class="breadcrumb">
                                <li ><a href="/search/content">콘텐츠</a></li>
                               	<li><span>&#124;</span></li>
                                <li ><a href="/search/person">인물</a></li>
                               	<li><span>&#124;</span></li>
                                <li id="click_page"><a href="/search/bookmark">즐겨찾기</a></li>
                               	<li><span>&#124;</span></li>
                                <li ><a href="/search/community">커뮤니티</a></li>
                            </ol>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
	
	<div class="search_result">
		<h4>"${search_result}"의 검색 결과</h4>
	</div>
	
   <!-- Section-1 Start -->
    <section class="gen-section-padding-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                    
                    <!-- start of for -->
                       <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                <div class="gen-movie-contain">
                                    <div class="gen-movie-img">
                                        <img src="/images/home/background/asset-5.jpeg" alt="streamlab-image">
                                        <div class="gen-movie-add">
                                            <div class="wpulike wpulike-heart ">
                                                <div class="wp_ulike_general_class">
                                                    <a href="#" class="sl-button"><i class="far fa-heart"></i></a>
                                                </div>
                                            </div>
                                            <ul class="menu bottomRight">
                                                <li class="share top">
                                                    <i class="fa fa-share-alt"></i>
                                                    <ul class="submenu">
                                                        <li><a href="#" class="facebook"><i
                                                                    class="fab fa-facebook-f"></i></a>
                                                        </li>
                                                        <li><a href="#" class="facebook"><i
                                                                    class="fab fa-instagram"></i></a>
                                                        </li>
                                                        <li><a href="#" class="facebook"><i
                                                                    class="fab fa-twitter"></i></a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <div class="movie-actions--link_add-to-playlist dropdown">
                                                <a class="dropdown-toggle" href="#"><i class="fa fa-plus"></i></a>
                                                <div class="dropdown-menu mCustomScrollbar">
                                                    <div class="mCustomScrollBox">
                                                        <div class="mCSB_container">
                                                            <a class="login-link" href="#">Sign
                                                                in to add this movie to a playlist.</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="gen-info-contain">
                                        <div class="gen-movie-info">
                                            <h3><a href="single-movie.html">The
                                                    warrior life</a></h3>
                                        </div>
                                        <div class="gen-movie-meta-holder">
                                            <ul>
                                                <li>2hr 00mins</li>
                                                <li>
                                                    <a href="action.html"><span>Action</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    <!-- end of for -->
                </div>
                <div class="col-lg-12">
                    <div class="gen-load-more-button">
                        <div class="gen-btn-container">
                            <a class="gen-button gen-button-loadmore" href="#">
                                <span class="button-text">Load More</span>
                                <span class="loadmore-icon" style="display: none;"><i
                                        class="fa fa-spinner fa-spin"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section-1 End -->
<!--========== Body ==============-->


<!--========== Footer ==============-->
<%@ include file="../inculde/home/footer.jsp"%>
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