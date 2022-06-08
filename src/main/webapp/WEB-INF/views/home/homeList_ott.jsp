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

	<title>오늘 이거 볼래 ? | OTT 콘텐츠</title>

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
		.loadMoreBtn{
			text-align: center;
		}
		.gen-carousel-movies-style-3 .gen-movie-contain .gen-movie-meta-holder ul li{
			font-size : 16px;
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
                                플랫폼
                            </h1>
                        </div>
                        <div class="gen-breadcrumb-container">
                            <ol class="breadcrumb">
                               <li value="1"><a href="/search/ott?ottNumber=1">넷플릭스</a></li>
                                <li><span>&#124;</span></li>
                                <li value="2"><a href="/search/ott?ottNumber=2">디즈니플러스</a></li>
                                <li><span>&#124;</span></li>
                                <li value="3"><a href="/search/ott?ottNumber=3">애플티비</a></li>
                                <li><span>&#124;</span></li>
                                <li value="4"><a href="/search/ott?ottNumber=4">웨이브</a></li>
                                <li><span>&#124;</span></li>
                                <li value="5"><a href="/search/ott?ottNumber=5">왓챠</a></li>
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
    <div id="scrollGenres">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row contentList">
                    <!-- start for -->
                     <c:forEach items="${ottContentList}" var="content">
					<c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                <div class="gen-movie-contain">
                                    <div class="gen-movie-img">

                                        <img src="${ content.contentMainImagesUrl}" alt="streamlab-image">
                                        <div class="gen-movie-action">
                                            <a href="/details/${content.contentNumber }" class="gen-button">
                                                <i class="fa fa-play"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="gen-info-contain">
                                        <div class="gen-movie-info">

                                            <h3><a href="/details/${content.contentNumber }">${content.contentTitle}</a></h3>
                                        </div>
                                        <div class="gen-movie-meta-holder">
                                            <ul>
                                                <li>${content.contentRunningTime}</li>
                                                <li>
                                                    <span>
	                                                    <c:forEach items="${content.contentGenre}" var="genres">
			                                                    <a href="/search/genres?genreNumber=${genres.genre.genreNumber}&page=1">${genres.genre.genreName}</a>   
	                                                    </c:forEach>
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
                <c:if test="${totalPage ne 2 }">
				<div class="col-lg-12">
	                    <div class="gen-load-more-button">
	                        <div class="gen-btn-container loadMoreBtn">
	                            <button type="button" id="genresLoadMoreBtn" class="gen-button gen-button-loadmore">
	                                <span class="button-text">Load More</span>
	                                <span class="loadmore-icon" style="display: none;"><i
	                                        class="fa fa-spinner fa-spin"></i></span>
	                            </button>
                        </div>
                    </div>
             	</div>
                </c:if>
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

<!-- 안정은 js -->
<script src="/js/homeList/homeList_ott.js"></script>
<script type="text/javascript">
let urlParams = new URL(location.href).searchParams;
let ottNumber = urlParams.get('ottNumber');
$('.breadcrumb > li').each(function(index, element){
	if($(this).val() == ottNumber){
		$(this).children('a').css('color','red');
	}//end of if
})

</script>
</body>

</html>