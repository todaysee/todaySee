<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Links of CSS files -->
<link rel="stylesheet" href="/css/mypageCommunity.css">
<link rel="stylesheet" href="../css/mypageCommunity/communityIndex.css">

<!-- js files -->
<script src="../js/mypageCommunity/communityIndex.js"></script>

<title>Zust - Social Community & Marketplace HTML Template</title>

<link rel="icon" type="image/png"
	href="/images/mypageCommunity/favicon.png">
</head>

<body>

	<!-- Start Preloader Area -->
	<%@ include file="../inculde/community/preLoader.jsp"%>


	<!-- Start Main Content Wrapper Area -->
	<div class="main-content-wrapper d-flex flex-column">

		<!-- Start Navbar Area -->
		<%@ include file="../inculde/community/navbar.jsp"%>

		<!-- Start Sidemenu Area -->
		<%@ include file="../inculde/community/sideMenu.jsp"%>


		<!-- Start Content Page Box Area -->
		<div class="content-page-box-area">
			<div class="row">
				<div class="col-lg-6 col-md-12 square">
					<div class="news-feed-area">
						<div
							class="events-inner-box-style justify-content-between align-items-center">

							<div class="events-search-box search-test">
								<form>
									<input type="text" class="input-search"
										placeholder="검색어를 입력하세요.">
									<button type="button">
										<i class="ri-search-line"></i>
									</button>
								</form>
							</div>
						</div>
						<div class="news-feed news-feed-form">
							<h3 class="news-feed-title">글쓰기</h3>
							<form>
								<div class="form-group">
									<textarea name="message" class="form-control"
										placeholder="내용을 적어주세요."></textarea>
								</div>
								<ul
									class="button-group d-flex justify-content-between align-items-center">
									<li class="photo-btn">
										<button type="submit">
											<i class="flaticon-gallery"></i> 사진
										</button>
									</li>
									<li class="post-btn">
										<button type="submit">작성</button>
									</li>
								</ul>
							</form>
						</div>

						<div class="news-feed news-feed-post">
							<div
								class="post-header d-flex justify-content-between align-items-center">
								<div class="image">
									<a href="my-profile.html"><img
										src="/images/mypageCommunity/user/user-35.jpg"
										class="rounded-circle" alt="image"></a>
								</div>
								<div class="info ms-3">
									<span class="name community_title"><a
										href="my-profile.html">제목</a></span>
									<div class='row'>
										<span class="small-text user_name col-md-9"><a href="#">작성자</a></span>
										<span class="small-text col-md-3 write_date"><a
											href="#">xxxx.xx.xx</a></span>
									</div>
								</div>
							</div>

							<div class="post-body">
								<p>💗</p>
								<div class="post-image">
									<img src="/images/mypageCommunity/news-feed-post/post-2.jpg"
										alt="image">
								</div>
								<ul
									class="post-meta-wrap d-flex justify-content-between align-items-center">
									<li class="post-react"><button class="community_like">
											<i class="flaticon-like"></i><span>Like</span> <span
												class="number">3 </span>
										</button></li>
									<li class="post-comment"><a href="#"><i
											class="flaticon-comment"></i><span>Comment</span> <span
											class="number">0 </span></a></li>
									<li class="post-share"><a href="#"><i
											class="flaticon-share"></i><span>Share</span> <span
											class="number">0 </span></a></li>
									<li><a type="button" class="gen-button-like myModal"
										data-bs-toggle="modal" data-bs-target="#modalReport"> <span><i
												class="fa fa-exclamation-triangle"></i>신고</span>
									</a></li>
								</ul>
								<form class="post-footer">
									<div class="footer-image">
										<a href="#"><img
											src="/images/mypageCommunity/user/user-2.jpg"
											class="rounded-circle" alt="image"></a>
									</div>
									<div class="form-group">
										<textarea name="message" class="form-control"
											placeholder="내용을 적어주세요."></textarea>

									</div>
								</form>
							</div>
						</div>


						<div class="load-more-posts-btn">
							<a href="#"><i class="flaticon-loading"></i> Load More Posts</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--========== Report Modal ==============-->
		<div class="modal fade" id="modalReport" data-backdrop="static"
			data-keyboard="false" tabindex="-1"
			aria-labelledby="modalReportLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalReportLabel">리뷰 신고하기</h5>

					</div>
					<div class="modal-body">
						<form>
							<div class="padding-6">
								<div class="gen-after-report">
									<div class="gen-extra-report">
										<ul>
											<li><span>리뷰 작성자 :</span> <span>English</span></li>
											<li><span>리뷰 내용 :</span>
												<p>Streamlab is a long established fact that a reader
													will be distracted by the readable content of a page when
													Streamlab at its layout. The point of using Lorem Streamlab
													is that it has a more-or-less normal distribution of
													Streamlab as opposed Streamlab.</p></li>
										</ul>
									</div>
								</div>
								<div class="padding-7">
									<div class="form-group">
										<label for="message-text" class="col-form-label">사유
											선택:</label> <select class="modalSelect">
											<option>스팸홍보/도배글입니다.</option>
											<option>음란물입니다.</option>
											<option>불법정보를 포함하고 있습니다.</option>
											<option>청소년에게 유해한 내용입니다.</option>
											<option>욕설/생명경시/혐오/차별적 표현입니다.</option>
											<option>개인정보 노출 게시물입니다.</option>
											<option>불쾌한 표현이 있습니다.</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-4 ml-auto">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">닫기</button>
								<button type="button" class="btn btn-danger">등록</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--========== Report Modal ==============-->

		<!-- End Content Page Box Area -->

		<!-- Start Right Sidebar Area -->
		<%@ include file="../inculde/community/rightSidebar.jsp"%>


	</div>
	<!-- End Main Content Wrapper Area -->

	<!-- Start Copyright Area -->
	<%@ include file="../inculde/community/footer.jsp"%>



	<!-- Links of JS files -->
	<script src="/js/mypageCommunity/jquery.min.js"></script>
	<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
	<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
	<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
	<script src="/js/mypageCommunity/simplebar.min.js"></script>
	<script src="/js/mypageCommunity/metismenu.min.js"></script>
	<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
	<script src="/js/mypageCommunity/wow.min.js"></script>
	<script src="/js/mypageCommunity/main.js"></script>

</body>
</html>