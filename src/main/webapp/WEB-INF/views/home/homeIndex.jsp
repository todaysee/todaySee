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
		
		
		<!-- 커뮤니티 인기글 css --> 
		.post_like{
			color: #ffffff;
		}
		
		.like_number{
			color: #ffffff;
		}
		
		.comment_number{
			color: #ffffff;
		}
		
		.community_like_icon{
			color: #ffffff;
		}
		
		.community_comment_icon{
			color: #ffffff;
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

<!-- owl-carousel Banner Start -->
<section class="pt-0 pb-0">
	<div class="container-fluid px-0">
		<div class="row no-gutters">
			<div class="col-12">
				<div class="gen-banner-movies banner-style-2">
					<div class="owl-carousel owl-loaded owl-drag" data-dots="false" data-nav="true" data-desk_num="1"
						 data-lap_num="1" data-tab_num="1" data-mob_num="1" data-mob_sm="1" data-autoplay="true"
						 data-loop="true" data-margin="0">
						 
						 <!-- start for -->
					 <c:forEach items="${newContent }" var="content">
						<div class="item" style="background: url('${content.contentMainImagesUrl}')">
							<div class="gen-movie-contain-style-2 h-100">
								<div class="container h-100">
									<div class="row flex-row-reverse align-items-center h-100">
										<div class="col-xl-6">
											<div class="gen-front-image">
												<img src="${ content.contentPosterImagesUrl}" alt="owl-carousel-banner-image">
												<a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="playBut popup-youtube popup-vimeo popup-gmaps">
													<!-- Generator: Adobe Illustrator 19.0.0, SVG Export Plug-In  -->
													<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="213.7px"
														 height="213.7px" viewBox="0 0 213.7 213.7"
														 enable-background="new 0 0 213.7 213.7" xml:space="preserve">
                                             <polygon class="triangle" id="XMLID_17_" fill="none" stroke-width="7"
													  stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
													  points="
                                                            73.5,62.5 148.5,105.8 73.5,149.1 "></polygon>
														<circle class="circle" id="XMLID_18_" fill="none" stroke-width="7"
																stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10"
																cx="106.8" cy="106.8" r="103.3">
														</circle>
                                          </svg>
													<span>Watch Trailer</span>
												</a>
											</div>
										</div>
										<div class="col-xl-6">
											<div class="gen-tag-line"><span>최신 컨텐츠</span></div>
											<div class="gen-movie-info">
												<h3><a href="http://localhost:8080/details/${content.contentNumber }">${content.contentTitle}</a></h3>
											</div>
											<div class="gen-movie-meta-holder">
											<ul class="gen-meta-after-title">
													<li class="gen-sen-rating"><span>${content.contentAge }세</span></li>
											</ul>
												<p>${content.contentInfo }</p>
												<div class="gen-meta-info">
													<ul class="gen-meta-after-excerpt">
														<li>
															<strong>상영날짜 :</strong>
															${content.contentReleaseDate }
														</li>
														<li>
															<strong>장르 :</strong>
                                                    <span>
	                                                    <c:forEach items="${content.contentGenre}" var="genres">
			                                                    <a href="http://localhost:8080/search/genres?genreNumber=${genres.genre.genreNumber}&page=1">${genres.genre.genreName}</a>   
	                                                    </c:forEach>
                                                    </span>
														</li>
													</ul>
												</div>
											</div>
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
	</div>
</section>
<!-- owl-carousel Banner End -->

<!-- owl-carousel Videos Section-1 Start -->
<section class="gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">인기 영화</h4>
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
					
				<!-- 인기 영화 for문 시작-->
				<c:forEach items="${RecommendedList}" var="content">
				<c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
						<div class="item">
							<div class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="${ content.contentPosterImagesUrl}" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
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
																<a class="login-link" href="/register.html">Sign in to add this movie to a playlist.</a>
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
												<h3><a href="http://localhost:8080/details/${content.contentNumber }">${content.contentTitle}</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>${content.contentRunningTime}</li>
													<li>
														<a href="http://localhost:8080/search/genres"><span>
		                                                    <c:forEach items="${content.contentGenre}" var="genres">
				                                                    ${genres.genre.genreName}   
		                                                    </c:forEach>
                                                    </span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
						</c:if>
						</c:forEach>
					<!-- for문 끝-->

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
				<h4 class="gen-heading-title">사용자 추천 인기 영화</h4>
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
						 
				<!-- 인기 영화 for문 시작-->
				<c:forEach items="${RecommendedList}" var="content">
				<c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
						<div class="item">
							<div class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="${ content.contentPosterImagesUrl}" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
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
																<a class="login-link" href="/register.html">Sign in to add this movie to a playlist.</a>
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
												<h3><a href="http://localhost:8080/details/${content.contentNumber }">${content.contentTitle}</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>${content.contentRunningTime}</li>
													<li>
														<a href="http://localhost:8080/search/genres"><span>
		                                                    <c:forEach items="${content.contentGenre}" var="genres">
				                                                    ${genres.genre.genreName}   
		                                                    </c:forEach>
                                                    </span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
						</c:if>
						</c:forEach>
					<!-- for문 끝-->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- owl-carousel Videos Section-2 End -->

<!-- owl-carousel Videos Section-3 Start -->
<section class="pt-0 gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">사용자 추천 인기 영화</h4>
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
						 
				<!-- 인기 영화 for문 시작-->
				<c:forEach items="${RecommendedList}" var="content">
				<c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
						<div class="item">
							<div class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="${ content.contentPosterImagesUrl}" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
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
																<a class="login-link" href="/register.html">Sign in to add this movie to a playlist.</a>
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
												<h3><a href="http://localhost:8080/details/${content.contentNumber }">${content.contentTitle}</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>${content.contentRunningTime}</li>
													<li>
														<a href="http://localhost:8080/search/genres"><span>
		                                                    <c:forEach items="${content.contentGenre}" var="genres">
				                                                    ${genres.genre.genreName}   
		                                                    </c:forEach>
                                                    </span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
						</c:if>
						</c:forEach>
					<!-- for문 끝-->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- owl-carousel Videos Section-3 End -->

<!-- owl-carousel Videos Section-4 Start -->
<section class="pt-0 gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">사용자 추천 인기 영화</h4>
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
						 
				<!-- 인기 영화 for문 시작-->
				<c:forEach items="${RecommendedList}" var="content">
				<c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
						<div class="item">
							<div class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
								<div class="gen-carousel-movies-style-2 movie-grid style-2">
									<div class="gen-movie-contain">
										<div class="gen-movie-img">
											<img src="${ content.contentPosterImagesUrl}" alt="owl-carousel-video-image">
											<div class="gen-movie-add">
												<div class="wpulike wpulike-heart">
													<div class="wp_ulike_general_class wp_ulike_is_not_liked"><button type="button" class="wp_ulike_btn wp_ulike_put_image"></button></div>
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
																<a class="login-link" href="/register.html">Sign in to add this movie to a playlist.</a>
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
												<h3><a href="http://localhost:8080/details/${content.contentNumber }">${content.contentTitle}</a>
												</h3>
											</div>
											<div class="gen-movie-meta-holder">
												<ul>
													<li>${content.contentRunningTime}</li>
													<li>
														<a href="http://localhost:8080/search/genres"><span>
		                                                    <c:forEach items="${content.contentGenre}" var="genres">
				                                                    ${genres.genre.genreName}   
		                                                    </c:forEach>
                                                    </span></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- #post-## -->
						</div>
						</c:if>
						</c:forEach>
					<!-- for문 끝-->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- owl-carousel Videos Section-4 End -->

<!-- owl-carousel Videos Section-2 Start -->
<!-- <section class="pt-0 gen-section-padding-2">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6">
				<h4 class="gen-heading-title">커뮤니티 인기글</h4>
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
			<div class="news-feed-area">
						 start for
				 <div class="board">
				
				<div class="row">
				start for
					<div class=" feed_post">
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
							<ul class="post-meta-wrap d-flex justify-content-between">
								<li class="post_like">
									<button class="community_like"><i class="flaticon-like community_like_icon"></i><span class="number like_number">1499 </span></button>
								</li>	
								<li class="post_comment">
									<a href="#"><i class="flaticon-comment community_comment_icon"></i><span class="number comment_number">599 </span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				end of for
				</div>
			</div>
		</div>
						end of for
					</div>
				</div>
			</div>
		</div>
</section> -->

<!-- owl-carousel Videos Section-2 End -->


<!-- footer start -->
<%@ include file="../inculde/home/footer.jsp"%>
<!-- Back-to-Top end -->

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