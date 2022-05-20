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
                                장르
                            </h1>
                        </div>
                        <div class="gen-breadcrumb-container">
                            <ol class="breadcrumb">

                               <li ><a href="/search/genres?contentgenre_number=1">드라마</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=2">로맨스</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=3">스릴러</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genrecontentgenre_number=4">SF</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=5">가족</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=16">코미디</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=7">다큐멘터리</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=9">스포츠</a></li>
                            </ol>
                            <ol class="breadcrumb">
                                <li ><a href="/search/genres?contentgenre_number=8">범죄</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=10">애니메이션</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=11">예능</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=12">액션</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=13">역사</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=14">음악</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=15">전쟁</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=6">공포</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?contentgenre_number=17">판타지</a></li>

                              </ol>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->

<!--========== Body ==============-->
   <!-- Section-1 Start -->
    <section class="gen-section-padding-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                    <!-- start for -->

                     <c:forEach items="${genresContentList}" var="genresContent">

                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                <div class="gen-movie-contain">
                                    <div class="gen-movie-img">

                                        <img src="${ genresContent.content_main_images_url}" alt="streamlab-image">
                                        <div class="gen-movie-add">
                                            <div class="wpulike wpulike-heart">
                                                <div class="wp_ulike_general_class wp_ulike_is_not_liked"><button type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>


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
                                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
                                                        class="fa fa-plus"></i></a>
                                                <div class="dropdown-menu mCustomScrollbar">
                                                    <div class="mCustomScrollBox">
                                                        <div class="mCSB_container">
                                                            <a class="login-link" href="#">Sign in to add this movie to
                                                                a
                                                                playlist.</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gen-movie-action">
                                            <a href="single-movie.html" class="gen-button">
                                                <i class="fa fa-play"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gen-info-contain">
                                        <div class="gen-movie-info">

                                            <h3><a href="single-movie.html">${genresContent.content_title}</a></h3>
                                        </div>
                                        <div class="gen-movie-meta-holder">
                                            <ul>
                                                <li>${genresContent.content_running_time}</li>
                                                <li>
                                                    <a href="/search/genres?contentgenre_number=${ contentgenre_number}"><span>Action</span></a>

                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                      </c:forEach>

                        <!-- end of for -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="gen-pagination">
                        <nav aria-label="Page navigation">
                            <ul class="page-numbers">
                                <li><span aria-current="page" class="page-numbers current">1</span></li>
                                <li><a class="page-numbers" href="#">2</a></li>
                                <li><a class="page-numbers" href="#">3</a></li>
                                <li><a class="next page-numbers" href="#">Next page</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

    </section>
    <!-- Section-1 End -->

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