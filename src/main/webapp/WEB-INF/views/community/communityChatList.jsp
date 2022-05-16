<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Zust - Social Community & Marketplace HTML Template</title>

<!-- Favicon -->
<link rel="icon" type="image/png"
	href="/images/mypageCommunity/favicon.png">
<!-- CSS files -->
<link rel="stylesheet" href="/css/mypageCommunity.css">
<link rel="stylesheet" href="/css/mypageCommunity/chatList.css">
</head>

<body>

	<!--=========== Loader =============-->
	<%@ include file="../inculde/community/preLoader.jsp"%>
	<!--=========== Loader =============-->

	<!--========== Body ==============-->
	<div class="main-content-wrapper d-flex flex-column">
		<!--========== Header Navbar ==============-->
		<%@ include file="../inculde/community/navbar.jsp"%>
		<!--========== Header Navbar ==============-->
		<!--========== SideBar ==============-->
		<%@ include file="../inculde/community/sideMenu.jsp"%>
		<!--========== SideBar ==============-->

		<!--========== Body ==============-->
		<div class="content-page-box-area">
			<div
				class="events-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>채팅방 이미지 선택</h3>
					
				</div>
				<a href="my-profile.html"><img
							src="../images/mypageCommunity/user/user-55.jpg"
							class="rounded-circle" alt="image"></a>
				
				<div class="events-search-box">
				
					<form>
						<input type="text" class="input-search"
							placeholder="채팅방 이름을 적어주세요">
							
					</form>
				</div>
				<div class="events-btn">
					<a class="default-btn">채팅방 생성</a>
					
				</div>
			</div>
			<div class="all-notifications-body" >
				<div
					class="all-notifications-header d-flex justify-content-between align-items-center">
					<h3>채팅방 목록</h3>
				</div>
				<div class="item d-flex justify-content-between align-items-center cricle">

					
					<div class="figure">
						<a href="my-profile.html"><img
							src="../images/mypageCommunity/user/user-55.jpg"
							class="rounded-circle" alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a>James Vanwin</a>
						</h4>
						<span>Posted A Comment On Your Status</span>

					</div>
					

				</div>
				
				<div class="item d-flex justify-content-between align-items-center cricle">

					
					<div class="figure">
						<a href="my-profile.html"><img
							src="../images/mypageCommunity/user/user-55.jpg"
							class="rounded-circle" alt="image"></a>
					</div>
					<div class="text">
						<h4>
							<a>James Vanwin</a>
						</h4>
						<span>Posted A Comment On Your Status</span>

					</div>
					

				</div>
				
				


			</div>
		</div>
		<!--========== Body ==============-->

		<!--========== Right SideBar ==============-->
		<%@ include file="../inculde/community/rightSidebar.jsp"%>
		<!--========== Right SideBar ==============-->

	</div>
	<!--========== Body ==============-->

	<!--========== Footer ==============-->
	<%@ include file="../inculde/community/footer.jsp"%>
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