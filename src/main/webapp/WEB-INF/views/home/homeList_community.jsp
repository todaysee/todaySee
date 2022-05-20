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

	<!-- 커뮤니티 CSS -->
	<link rel="stylesheet" href="/css/mypageCommunity.css"/>
	<!-- CSS -->
	<link rel="stylesheet" href="/css/home.css"/>
	
	
	<style type="text/css">
			
		body {
			background-color: #161616;
		}

		#click_page > a {
			color : #e50916;
		}
		.board {
			padding : 3% 3%;
		}
		.feed_post {
			padding : 2%;
			background-color: #161616;
		}
		
		.news-feed-area .news-feed-post{
			background-color:  #221f1f;
		}
		
		div.info.ms-3 > span.name > a {
			color: #ffffff;
		}
		span.small-text > a {
			color: #ffffff;
		}
		.post-body > p {
			color: #ffffff;
		}
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-react span {
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-comment span{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-share span{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-react .number{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-comment .number{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-share .number{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-react i{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-comment i{
			color: #ffffff;
		}
		
		.news-feed-area .news-feed-post .post-body .post-meta-wrap .post-share i{
			color: #ffffff;
		}
		
		.community_like {
			background-color:  #221f1f;
			border:  #221f1f;
		}
		.loadMorePosts{
			background-color: #161616;
			border:  #221f1f;
			color: #ffffff;
		}
		
		.load-more-posts-btn i{
			color: #e50916;
		}
		
		.write_date{
			color: #6b7c8f;
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
                                커뮤니티
                            </h1>
                        </div>
                        <div class="gen-breadcrumb-container">
                            <ol class="breadcrumb">
                                <li ><a href="/search/content">콘텐츠</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/person">인물</a></li>
                                <li><span>&#124;</span></li>
                                <li ><a href="/search/bookmark">즐겨찾기</a></li>
                                <li><span>&#124;</span></li>
                                <li id="click_page"><a href="/search/community">커뮤니티</a></li>
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
	
			<div class="board">
				<div class="news-feed-area">
				
				<div class="row">
				<!-- start for -->
					<div class="col-md-4 feed_post">
					<div class="news-feed news-feed-post post_back">
						<div class="post-header d-flex justify-content-between align-items-center">
							<div class="image">
								<a href="my-profile.html"><img src="/images/mypageCommunity/user/user-32.jpg" class="rounded-circle" alt="image"></a>
							</div>
							<div class="info ms-3">
								<span class="name community_title"><a href="my-profile.html">제목</a></span>
								<div class='row'>
								<span class="small-text user_name col-md-9"><a href="#">작성자</a></span>
								<span class="small-text col-md-3 write_date"><a href="#">xxxx.xx.xx</a></span>
								</div>
							</div>

						</div>

						<div class="post-body">
							<p>Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Praesent sapien massa convallis a pellentesque nec egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis.</p>
							<div class="post-image">
								<img src="/images/mypageCommunity/news-feed-post/post-1.jpg" alt="image" id="imgClick">
							</div>
							<ul class="post-meta-wrap d-flex justify-content-between align-items-center">
								<li class="post-react">
									<button class="community_like"><i class="flaticon-like community_like_icon"></i><span>Like</span> <span class="number">1499 </span></button>
								</li>
								<li class="post-comment">
									<a href="#"><i class="flaticon-comment"></i><span>Comment</span> <span class="number">599 </span></a>
								</li>
								<li class="post-share">
									<a href="#"><i class="flaticon-share"></i><span>Share</span> <span class="number">24 </span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end of for -->
					<div class="load-more-posts-btn">
						<a href="javascript:moreList();" class="loadMorePosts"><i class="flaticon-loading"></i> Load More Posts</a>
					</div>
				</div>
			</div>
		</div>
<!--========== Body ==============-->

<!--========== Footer ==============-->
<%@ include file="../inculde/home/footer.jsp"%>
<!--========== Footer ==============-->

<!-- 커뮤니티 JS -->
<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>

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

	<script type="text/javascript">
	

		let com_list = false;
		$('.community_like').click(function(){

			// 클릭 시 하트 색 빨간색으로 변경
			if(!com_list){
				$(this).children('i').css('color', '#e50916')
				com_list = true;
			}else{
				$(this).children('i').css('color', '#ffffff')
				com_list = false;
			}
			
		})// end of $('.community_like').click()
		
		function moreList(btn){
			console.log("morelist에서 받은 매개변수 : " + btn);
			console.log("morelist 매개변수로 들어온 (버튼객제)의 valse = 페이징 " + btn.value);
			
			$.ajax({
				url : "",
				type : "post",	
				dataType:'json',
				data : {},	// 마지막 페이지 번호
				success : function(){
					
				},
				error : function(ex){
					alert('실패')
					console.log(ex)
					
				}
				
			});
			
		} // end of moreList()


	</script>

</body>

</html>