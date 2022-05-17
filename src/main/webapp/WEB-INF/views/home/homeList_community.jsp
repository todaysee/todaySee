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
	
	<!-- 커뮤니티 CSS -->
	<link rel="stylesheet" href="/css/mypageCommunity.css">
	<style type="text/css">
		.board {
		padding: 5%
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
                                <li class="active" ><a href="/search/content">콘텐츠</a></li>
                                <li class=""><a href="/search/person">인물</a></li>
                                <li class=""><a href="/search/bookmark">즐겨찾기</a></li>
                                <li class=""><a href="/search/community">커뮤니티</a></li>
                            </ol>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
			<div class="board">
				<div class="news-feed-area">
				
				<div class="">
					<div class="col-md-4">
					<div class="news-feed news-feed-post">
						<div class="post-header d-flex justify-content-between align-items-center">
							<div class="image">
								<a href="my-profile.html"><img src="/images/mypageCommunity/user/user-32.jpg" class="rounded-circle" alt="image"></a>
							</div>
							<div class="info ms-3">
								<span class="name"><a href="my-profile.html">Julie R. Morleyv</a></span>
								<span class="small-text"><a href="#">10 Mins Ago</a></span>
							</div>
							<div class="dropdown">
								<button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-menu"></i></button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-edit"></i> Edit Post</a></li>
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-private"></i> Hide Post</a></li>
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-trash"></i> Delete Post</a></li>
								</ul>
							</div>
						</div>

						<div class="post-body">
							<p>Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Praesent sapien massa convallis a pellentesque nec egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis.</p>
							<div class="post-image">
								<img src="/images/mypageCommunity/news-feed-post/post-1.jpg" alt="image">
							</div>
							<ul class="post-meta-wrap d-flex justify-content-between align-items-center">
								<li class="post-react">
									<a href="#"><i class="flaticon-like"></i><span>Like</span> <span class="number">1499 </span></a>

									<ul class="react-list">
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-1.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-2.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-3.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-4.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-5.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-6.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-7.png" alt="Like"></a>
										</li>
									</ul>
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
					<div class="col-md-4">
					<div class="news-feed news-feed-post">
						<div class="post-header d-flex justify-content-between align-items-center">
							<div class="image">
								<a href="my-profile.html"><img src="/images/mypageCommunity/user/user-32.jpg" class="rounded-circle" alt="image"></a>
							</div>
							<div class="info ms-3">
								<span class="name"><a href="my-profile.html">Julie R. Morleyv</a></span>
								<span class="small-text"><a href="#">10 Mins Ago</a></span>
							</div>
							<div class="dropdown">
								<button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-menu"></i></button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-edit"></i> Edit Post</a></li>
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-private"></i> Hide Post</a></li>
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-trash"></i> Delete Post</a></li>
								</ul>
							</div>
						</div>

						<div class="post-body">
							<p>Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Praesent sapien massa convallis a pellentesque nec egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis.</p>
							<div class="post-image">
								<img src="/images/mypageCommunity/news-feed-post/post-1.jpg" alt="image">
							</div>
							<ul class="post-meta-wrap d-flex justify-content-between align-items-center">
								<li class="post-react">
									<a href="#"><i class="flaticon-like"></i><span>Like</span> <span class="number">1499 </span></a>

									<ul class="react-list">
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-1.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-2.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-3.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-4.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-5.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-6.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-7.png" alt="Like"></a>
										</li>
									</ul>
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
					<div class="col-md-4">
					<div class="news-feed news-feed-post">
						<div class="post-header d-flex justify-content-between align-items-center">
							<div class="image">
								<a href="my-profile.html"><img src="/images/mypageCommunity/user/user-32.jpg" class="rounded-circle" alt="image"></a>
							</div>
							<div class="info ms-3">
								<span class="name"><a href="my-profile.html">Julie R. Morleyv</a></span>
								<span class="small-text"><a href="#">10 Mins Ago</a></span>
							</div>
							<div class="dropdown">
								<button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-menu"></i></button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-edit"></i> Edit Post</a></li>
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-private"></i> Hide Post</a></li>
									<li><a class="dropdown-item d-flex align-items-center" href="#"><i class="flaticon-trash"></i> Delete Post</a></li>
								</ul>
							</div>
						</div>

						<div class="post-body">
							<p>Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Praesent sapien massa convallis a pellentesque nec egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis.</p>
							<div class="post-image">
								<img src="/images/mypageCommunity/news-feed-post/post-1.jpg" alt="image">
							</div>
							<ul class="post-meta-wrap d-flex justify-content-between align-items-center">
								<li class="post-react">
									<a href="#"><i class="flaticon-like"></i><span>Like</span> <span class="number">1499 </span></a>

									<ul class="react-list">
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-1.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-2.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-3.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-4.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-5.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-6.png" alt="Like"></a>
										</li>
										<li>
											<a href="#"><img src="/images/mypageCommunity/react/react-7.png" alt="Like"></a>
										</li>
									</ul>
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
				</div>
					<div class="load-more-posts-btn">
						<a href="#"><i class="flaticon-loading"></i> Load More Posts</a>
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



</body>

</html>