<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="keywords"
	content="Streamlab - Video Streaming HTML5 Template" />
<meta name="description"
	content="Streamlab - Video Streaming HTML5 Template" />
<meta name="author" content="StreamLab" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>오늘 이거 볼래 ? | 이메일 찾기</title>

<!-- Favicon -->
<link rel="shortcut icon" href="/images/home/favicon.png">
<!-- CSS -->
<link rel="stylesheet" href="/css/mypageCommunity.css">

</head>

<body>

	<!--=========== Loader =============-->
	<%@ include file="../inculde/home/preLoader.jsp"%>
	<!--=========== Loader =============-->

	<!--========== Header ==============-->

	<!--========== Header ==============-->

	<!--========== Body ==============-->


	<!-- Start Preloader Area -->
	<div class="preloader-area">
		<div class="spinner">
			<div class="inner">
				<div class="disc"></div>
				<div class="disc"></div>
				<div class="disc"></div>
			</div>
		</div>
	</div>
	<!-- End Preloader Area -->

	<!-- Start Preloader Area -->
	<div class="profile-authentication-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="profile-authentication-image">
						<div class="content-image">

							<!-- 이미지 링크 -->
							<div class = "logo" style="text-align:center">
                                <img src="images/myPageCommunity/logo-2.png" alt="image" style="margin-top: 50px !important; margin-bottom: 50px !important;">
                                </div>

						</div>
					</div>
				</div>

				<div class="col-lg-6 col-md-12">
					<div class="login-form" style="height: 100%;">
						<div style="text-align: center">
							<h2>이메일 목록</h2>
						</div>

						<form>
							<div class="favourite-table table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>No.</th>
											<th>이메일</th>
											<th>회원가입 날짜</th>

										</tr>
									</thead>

									<tbody>
										<c:choose>
											<c:when test="${fn:length(userEmailList) >= 1 }">

												<c:forEach items="${userEmailList }" var="vo" varStatus="status">
													<tr>
														<td>
															<h5>${status.count }</h5>
														</td>
														<td>${vo.userEmail }</td>
														<td>${vo.userSignupDate }</td>
														<td>${vo.userLoginDate }</td>

													</tr>

												</c:forEach>
											</c:when>
										</c:choose>

									</tbody>
								</table>
							</div>

							<div class="text"
								style="color: grey; text-align: left; margin-bottom: 5% !important; margin-left: 49% !important;">
								사용자는 최대 3개의 계정을 가질 수 있습니다.</div>


							<div class="lost-your-password-wrap" style="font-size: 30px;">
								<div style="float: left; color: grey;">
									<a href="/" class="lost-your-password">홈으로
										가기 </a>
								</div>
								<a href="/login" class="lost-your-password">로그인하기 </a>
								&nbsp;&nbsp;&nbsp; 
								<a href="/passwordFind" class="lost-your-password">비밀번호 찾기 </a>
								<div style="float: right; color: grey;"></div>
							</div>
							<div class="or-text">
								<span></span>
							</div>


						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="home-btn-icon">
			<a href="/"><i class="flaticon-home"></i></a>
		</div>
	</div>
	<!-- End Preloader Area -->

	<script src="/js/mypageCommunity/jquery.min.js"></script>
	<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
	<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
	<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
	<script src="/js/mypageCommunity/simplebar.min.js"></script>
	<script src="/js/mypageCommunity/metismenu.min.js"></script>
	<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
	<script src="/js/mypageCommunity/wow.min.js"></script>
	<script src="/js/mypageCommunity/main.js"></script>



	<!--========== Body ==============-->


	<!--========== Footer ==============-->

	<!--========== Footer ==============-->

	<!-- js-min -->
	<script src="/js/home/jquery-3.6.0.min.js"></script>
	<script src="/js/home/asyncloader.min.js"></script>
	<!-- owl-carousel -->
	<script src="/js/home/owl.carousel.min.js"></script>
	<!-- counter-js -->
	<script src="/js/home/jquery.waypoints.min.js"></script>
	<script src="/js/home/jquery.counterup.min.js"></script>
	<!-- Iscotop -->
	<script src="/js/home/isotope.pkgd.min.js"></script>
	<script src="/js/home/jquery.magnific-popup.min.js"></script>
	<script src="/js/home/slick.min.js"></script>
	<script src="/js/home/streamlab-core.js"></script>
	<script src="/js/home/script.js"></script>


</body>

</html>