<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Zust - Social Community & Marketplace HTML Template</title>

	<!-- Favicon -->
	<link rel="icon" type="image/png" href="/images/mypageCommunity/favicon.png">
	<!-- CSS files -->
	<link rel="stylesheet" href="/css/mypageCommunity.css">
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/mypage/preLoader.jsp"%>
<!--=========== Loader =============-->

<!--========== Body ==============-->
<div class="main-content-wrapper d-flex flex-column">
	<!--========== Header Navbar ==============-->
	<%@ include file="../inculde/mypage/navbar.jsp"%>
	<!--========== Header Navbar ==============-->
	<!--========== SideBar ==============-->
	<%@ include file="../inculde/mypage/sideMenu.jsp"%>
	<!--========== SideBar ==============-->

	<!--========== Body ==============-->
	<div class="content-page-box-area">
		<div class="content-page-box-area">
			<div class="page-banner-box bg-7">
				<h3>Events</h3>
			</div>

			<div class="events-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>즐겨찾기 이름</h3>
				</div>
				<div class="bookmarkDateils-box">
					<div class="events-footer d-flex justify-content-between align-items-center">
						<a href="#" class="default-btn">현재 리스트 삭제</a>&nbsp
						<a href="#" class="default-btn">선택 영상을 리스트에서 삭제</a>&nbsp
						<a href="#" class="default-btn">선택 영상을 다른 리스트로 이동</a>&nbsp
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="assets/images/events/events-1.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>연령등급</span>
							<h3>
								<a href="#">영상 제목</a>
							</h3>
							<p>장르</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">리스트에서 삭제</a>
								<span>플랫폼</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-2.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>02:30PM to 04:30PM</span>
							<h3>
								<a href="#">Dance Conference</a>
							</h3>
							<p>Online</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>August 06, 2021</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-3.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>12:30PM to 02:30PM</span>
							<h3>
								<a href="#">Food Festival</a>
							</h3>
							<p>1157 Anmoore Road New York, NY</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>July 30, 2021</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-4.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>12:30PM to 02:30PM</span>
							<h3>
								<a href="#">Film Festival</a>
							</h3>
							<p>2611 Deer Ridge Drive Newark, NJ</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>August 13, 2021</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-5.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>03:30PM to 05:30PM</span>
							<h3>
								<a href="#">Language Festival</a>
							</h3>
							<p>Online</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>August 20, 2021</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-6.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>05:30PM to 07:30PM</span>
							<h3>
								<a href="#">Business Conference</a>
							</h3>
							<p>1535 Point Street Chicago, IL</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>August 27, 2021</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-7.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>02:30PM to 04:30PM</span>
							<h3>
								<a href="#">Shopping Conference</a>
							</h3>
							<p>Online</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>July 30, 2021</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-8.jpg" alt="image">
						</a>
						<div class="events-content">
							<span>12:30PM to 02:30PM</span>
							<h3>
								<a href="#">Music Party</a>
							</h3>
							<p>2428 Terra Street Seattle, WA</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn">Attend</a>
								<span>September 03, 2021</span>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
	<!--========== Body ==============-->

	<!--========== Right SideBar ==============-->
	<%@ include file="../inculde/mypage/rightSidebar.jsp"%>
	<!--========== Right SideBar ==============-->

</div>
<!--========== Body ==============-->

<!--========== Footer ==============-->
<%@ include file="../inculde/mypage/footer.jsp"%>
<!--========== Footer ==============-->

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