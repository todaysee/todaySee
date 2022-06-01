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

                               <li ><a href="/search/genres?genreNumber=1&page=1">드라마</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=2&page=1">로맨스</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=3&page=1">스릴러</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=4&page=1">SF</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=5&page=1">가족</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=16&page=1">코미디</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=7&page=1">다큐멘터리</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=9&page=1">스포츠</a></li>
                            </ol>
                            <ol class="breadcrumb">
                                <li ><a href="/search/genres?genreNumber=8&page=1">범죄</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=10&page=1">애니메이션</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=11&page=1">예능</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=12&page=1">액션</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=13&page=1">역사</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=14&page=1">음악</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=15&page=1">전쟁</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=6&page=1">공포</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/genres?genreNumber=17&page=1">판타지</a></li>

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
                    <div class="row">
                    <!-- start for -->
                     <c:forEach items="${genresContentList}" var="content">
					<c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
                        <div class="col-xl-3 col-lg-4 col-md-6">
                            <div class="gen-carousel-movies-style-3 movie-grid style-3">
                                <div class="gen-movie-contain">
                                    <div class="gen-movie-img">

                                        <img src="${ content.contentMainImagesUrl}" alt="streamlab-image">
                                        <div class="gen-movie-action">
                                            <a href="single-movie.html" class="gen-button">
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
                <div class="col-lg-12 col-md-12">
                    <div class="gen-pagination">
                        <nav aria-label="Page navigation">
                            <ul class="page-numbers">
                            <c:if test="${param.page > 1 }">
                            	<li><a class="prev page-numbers" href="/search/genres?genreNumber=${param.genreNumber }&page=${param.page-1}"></a></li>
                            </c:if>
                            <c:forEach begin="1" end="${totalPage  }" var="pageNum">
                                <li><a aria-current="page" class="page-numbers" href="/search/genres?genreNumber=${param.genreNumber }&page=${pageNum}">${pageNum}</a></li>
                            </c:forEach>
                            <c:if test="${param.page < totalPage }">
                                <li><a class="next page-numbers" href="/search/genres?genreNumber=${param.genreNumber }&page=${param.page+1}">Next page</a></li>
                            </c:if>
                            </ul>
                        </nav>
                    </div>
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

<!-- 무한 스크롤 js -->
<script src="/js/homeList/homeList.js"></script>

</body>

</html>