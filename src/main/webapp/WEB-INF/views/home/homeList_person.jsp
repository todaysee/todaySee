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
                                인물
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
<!-- owl-carousel Videos Section-1 Start -->
<section class="gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">All Time Hits</h4>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
				<div class="gen-movie-action">
					<div class="gen-btn-container text-right">
						<a href="/tv-shows-pagination.html" class="gen-button gen-button-flat">
							<span class="text">More Videos</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-12">
				<div class="gen-style-2">
					<div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
						 data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
						 data-loop="false" data-margin="30">
						 
						 <!-- start for -->
						<div class="item">
							<div
									class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="/images/home/background/asset-5.jpeg" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
															type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
												</div>
												<ul class="menu bottomRight">
													<li class="share top">
														<i class="fa fa-share-alt"></i>
														<ul class="submenu">
															<li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
														</ul>
													</li>
												</ul>
												<div class="movie-actions--link_add-to-playlist dropdown">
													<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
															class="fa fa-plus"></i></a>
													<div class="dropdown-menu mCustomScrollbar">
														<div class="mCustomScrollBox">
															<div class="mCSB_container">
																<a class="login-link" href="/register.html">Sign in to add this movie
																	to a
																	playlist.</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="gen-movie-action">
												<a href="/single-movie.html" class="gen-button">
													<i class="fa fa-play"></i>
												</a>
											</div>
										</div>
										<div class="gen-info-contain">
											<div class="gen-movie-info">
												<h3><a href="/single-movie.html">The
													warrior life</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>2hr 00mins</li>
													<li>
														<a href="/action.html"><span>Action</span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
						<!-- end of for -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- owl-carousel Videos Section-1 End -->

<!-- owl-carousel Videos Section-2 Start -->
<section class="pt-0 gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">Top Regional Shows</h4>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
				<div class="gen-movie-action">
					<div class="gen-btn-container text-right">
						<a href="/tv-shows-pagination.html" class="gen-button gen-button-flat">
							<span class="text">More Videos</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-12">
				<div class="gen-style-2">
					<div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
						 data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
						 data-loop="false" data-margin="30">
						 
						 <!-- start for -->
						<div class="item">
							<div
									class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="/images/home/background/asset-14.jpeg" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
															type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
												</div>
												<ul class="menu bottomRight">
													<li class="share top">
														<i class="fa fa-share-alt"></i>
														<ul class="submenu">
															<li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
														</ul>
													</li>
												</ul>
												<div class="movie-actions--link_add-to-playlist dropdown">
													<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
															class="fa fa-plus"></i></a>
													<div class="dropdown-menu mCustomScrollbar">
														<div class="mCustomScrollBox">
															<div class="mCSB_container">
																<a class="login-link" href="/register.html">Sign in to add this movie
																	to a
																	playlist.</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="gen-movie-action">
												<a href="/single-movie.html" class="gen-button">
													<i class="fa fa-play"></i>
												</a>
											</div>
										</div>
										<div class="gen-info-contain">
											<div class="gen-movie-info">
												<h3><a href="/single-movie.html">ghost of sky</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>1 Season</li>
													<li>
														<a href="/adventure.html"><span>Adventure</span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
						<!-- end of for -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- owl-carousel Videos Section-2 End -->


<!-- owl-carousel Videos Section-3 Start -->
<section class="gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">Watch For Free: Movie Mania</h4>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
				<div class="gen-movie-action">
					<div class="gen-btn-container text-right">
						<a href="/tv-shows-pagination.html" class="gen-button gen-button-flat">
							<span class="text">More Videos</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-12">
				<div class="gen-style-2">
					<div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
						 data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
						 data-loop="false" data-margin="30">

					<!-- start for -->
						<div class="item">
							<div
									class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="/images/home/background/asset-1.jpeg" alt="owl-carousel-video-images">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
															type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
												</div>
												<ul class="menu bottomRight">
													<li class="share top">
														<i class="fa fa-share-alt"></i>
														<ul class="submenu">
															<li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
														</ul>
													</li>
												</ul>
												<div class="movie-actions--link_add-to-playlist dropdown">
													<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
															class="fa fa-plus"></i></a>
													<div class="dropdown-menu mCustomScrollbar">
														<div class="mCustomScrollBox">
															<div class="mCSB_container">
																<a class="login-link" href="/register.html">Sign in to add this movie
																	to a
																	playlist.</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="gen-movie-action">
												<a href="/single-movie.html" class="gen-button">
													<i class="fa fa-play"></i>
												</a>
											</div>
										</div>
										<div class="gen-info-contain">
											<div class="gen-movie-info">
												<h3><a href="/single-movie.html">King of Skull</a></h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>2hr 13mins</li>
													<li>
														<a href="/action.html"><span>Action</span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
					<!-- end of for -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- owl-carousel Videos Section-3 End -->

<!-- owl-carousel images Start -->
<section class="pt-0 gen-section-padding-2 home-singal-silder">
	
</section>
<!-- owl-carousel images End -->

<!-- owl-carousel Videos Section-4 Start -->
<section class="pt-0 gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">All Time Hits</h4>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
				<div class="gen-movie-action">
					<div class="gen-btn-container text-right">
						<a href="/tv-shows-pagination.html" class="gen-button gen-button-flat">
							<span class="text">More Videos</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-12">
				<div class="gen-style-2">
					<div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="4"
						 data-lap_num="3" data-tab_num="2" data-mob_num="1" data-mob_sm="1" data-autoplay="false"
						 data-loop="false" data-margin="30">
						
						<!-- start for -->
						<div class="item">
							<div
									class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="/images/home/background/asset-10.jpeg" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button
															type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
												</div>
												<ul class="menu bottomRight">
													<li class="share top">
														<i class="fa fa-share-alt"></i>
														<ul class="submenu">
															<li><a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-instagram"></i></a>
															</li>
															<li><a href="#" class="facebook"><i class="fab fa-twitter"></i></a></li>
														</ul>
													</li>
												</ul>
												<div class="movie-actions--link_add-to-playlist dropdown">
													<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i
															class="fa fa-plus"></i></a>
													<div class="dropdown-menu mCustomScrollbar">
														<div class="mCustomScrollBox">
															<div class="mCSB_container">
																<a class="login-link" href="/register.html">Sign in to add this movie
																	to a
																	playlist.</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="gen-movie-action">
												<a href="/single-movie.html" class="gen-button">
													<i class="fa fa-play"></i>
												</a>
											</div>
										</div>
										<div class="gen-info-contain">
											<div class="gen-movie-info">
												<h3><a href="/single-movie.html">skull of myths</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>1hr 24mins</li>
													<li>
														<a href="/action.html"><span>Action</span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
					<!-- end of for -->
					</div>
				</div>
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