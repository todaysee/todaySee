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


	<title>오늘 이거 볼래 ? | 장르 콘텐츠</title>


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
                                장르
                            </h1>
                        </div>
                        <div class="gen-breadcrumb-container">
                            <ol class="breadcrumb">
                               <li value="1"><a href="/search/genres?genreNumber=1" class="firstGenre">드라마</a></li>
                                <li><span>&#124;</span></li>
                                <li value="2"><a href="/search/genres?genreNumber=2">로맨스</a></li>
                                <li><span>&#124;</span></li>
                                <li value="3"><a href="/search/genres?genreNumber=3">스릴러</a></li>
                                <li><span>&#124;</span></li>
                                <li value="4"><a href="/search/genres?genreNumber=4">SF</a></li>
                                <li><span>&#124;</span></li>
                                <li value="5"><a href="/search/genres?genreNumber=5">가족</a></li>
                                <li><span>&#124;</span></li>
                                <li value="16"><a href="/search/genres?genreNumber=16">코미디</a></li>
                                <li><span>&#124;</span></li>
                                <li value="7"><a href="/search/genres?genreNumber=7">다큐멘터리</a></li>
                                <li><span>&#124;</span></li>
                                <li value="9"><a href="/search/genres?genreNumber=9">스포츠</a></li>
                            </ol>
                            <ol class="breadcrumb">
                                <li value="8"><a href="/search/genres?genreNumber=8">범죄</a></li>
                                <li><span>&#124;</span></li>
                                <li value="10"><a href="/search/genres?genreNumber=10">애니메이션</a></li>
                                <li><span>&#124;</span></li>
                                <li value="11"><a href="/search/genres?genreNumber=11">예능</a></li>
                                <li><span>&#124;</span></li>
                                <li value="12"><a href="/search/genres?genreNumber=12">액션</a></li>
                                <li><span>&#124;</span></li>
                                <li value="13"><a href="/search/genres?genreNumber=13">역사</a></li>
                                <li><span>&#124;</span></li>
                                <li value="14"><a href="/search/genres?genreNumber=14">음악</a></li>
                                <li><span>&#124;</span></li>
                                <li value="15"><a href="/search/genres?genreNumber=15">전쟁</a></li>
                                <li><span>&#124;</span></li>
                                <li value="6"><a href="/search/genres?genreNumber=6">공포</a></li>
                                <li><span>&#124;</span></li>
                                <li value="17"><a href="/search/genres?genreNumber=17">판타지</a></li>

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
                     <c:forEach items="${genresContentList}" var="content">
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
	                                <span class="button-text">더 보기</span>
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
<script src="/js/homeList/homeList_genres.js"></script>
<script type="text/javascript">

//url에 따라서 카테고리 색 변경
let urlParams = new URL(location.href).searchParams;
let genreNumber = urlParams.get('genreNumber');
$('.breadcrumb > li').each(function(index, element){
	if($(this).val() == genreNumber){
		$(this).children('a').css('color','red');
	}//end of if
})// end of $('.breadcrumb > li').each()

// url에 장르번호가 없을 때 첫번째 카테고리에 색변경
if(genreNumber == null){
	$('.firstGenre').css('color','red');
}// end of if


</script>
</body>

</html>