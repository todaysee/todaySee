<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>오늘 이거 볼래 ? | 익명 채팅방 리스트</title>

<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
<!-- CSS files -->
<link rel="stylesheet" href="/css/mypageCommunity.css">
<link rel="stylesheet" href="../css/mypageCommunity/chatList.css">
<!-- js files -->
<script src="../js/mypageCommunity/chatList.js"></script>
</head>

<body>

	<!--=========== Loader =============-->
	<%@ include file="../inculde/home/preLoader.jsp"%>
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
		<div class="content-page-box-areac">
			<div
				class="events-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>실시간 익명 채팅방</h3>

				</div>

				<div class="events-search-box">

					<form>
						<input type="text" class="input-search" name="roomName"
							id="roomName" placeholder="채팅방 이름 입력">

					</form>
				</div>
				<div class="events-btn">
					<a class="default-btn" id="createRoom">채팅방 생성</a>
				</div>
			</div>
			<div class="all-notifications-body">

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