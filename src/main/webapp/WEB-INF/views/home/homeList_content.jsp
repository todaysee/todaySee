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


	<title>오늘 이거 볼래 ? | 검색 상세 페이지</title>


	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
	<!-- CSS -->
	<link rel="stylesheet" href="/css/home.css"/>
	
		<style type="text/css">
		
		#click_page > a {
			color : #e50916;
		}
		
		.search_result{
			padding: 3% 0% 1% 3%;
		}
		.loadMoreBtn{
			text-align: center;
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
                            <br/>
                            <h1>
                               "${search_result}"의 검색 결과
                            </h1>
                        </div>
                        <div class="gen-breadcrumb-container">
                            <ol class="breadcrumb">
                            </ol>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
	
   <!-- Section-1 Start -->
    <section class="gen-section-padding-3">
    <div id="scrollGenres">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                    <!-- start for -->
                     <c:forEach items="${movie}" var="content">
					<c:if test="${content.content_poster_images_url ne 'none Main img'}">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                <div class="gen-movie-contain">
                                    <div class="gen-movie-img">

                                        <img src="${ content.content_poster_images_url}" alt="streamlab-image">
                                        <div class="gen-movie-action">
                                            <a href="/details/${content.content_number }" class="gen-button">
                                                <i class="fa fa-play"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gen-info-contain">
                                        <div class="gen-movie-info">

                                            <h3><a href="/details/${content.content_number }">${content.content_title}</a></h3>
                                        </div>
                                        <div class="gen-movie-meta-holder">
                                            <ul>
                                                <li>${content.content_running_time}</li>
                                                <li>
                                                    <span>
                                                    	<a href="/search/genres?genreNumber=1&page=1">
		                                                    <c:forEach items="${content.genre_name}" var="genres">
				                                                    ${genres} 
		                                                    </c:forEach>
		                                                    </a>  
                                                    </span>

                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

					</c:if>
                      </c:forEach>

                        <!-- end of for -->
                            </div>
                        </div>
                    </div>
                </div>
				<div class="col-lg-12">
	                    <div class="gen-load-more-button">
	                        <div class="gen-btn-container loadMoreBtn">
	                            <button type="button" class="gen-button gen-button-loadmore">
	                                <span class="button-text">더 보기</span>
	                                <span class="loadmore-icon" style="display: none;"><i
	                                        class="fa fa-spinner fa-spin"></i></span>
	                            </button>
                        </div>
                    </div>
             	</div>

			</div>
    </section>
    <!-- Section-1 End -->

<!-- owl-carousel Videos Section-4 End -->
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