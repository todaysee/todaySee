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
<!-- js files -->
<script src = "../js/mypageCommunity/chatRoom.js"></script>
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
			<div class="all-messages-body">
				<div
					class="all-messages-header d-flex justify-content-between align-items-center">
					<h3>${roomName}</h3>
					<input type="hidden" id="sessionId" value=""> <input
						type="hidden" id="roomNumber" value="${roomNumber}">


				</div>


				<div class="messages-chat-container">
					<div class="chat-content">
						<div class="chat">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="/images/mypageCommunity/user/user-11.jpg" width="50"
									height="50" class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>Hello, dear I want talk to you?</p>
								</div>
							</div>
						</div>

						<div class="chat chat-left">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="/images/mypageCommunity/user/user-2.jpg" width="50"
									height="50" class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body" >
								<div class="chat-message chating" id="chating">
								</div>
							</div>
						</div>
					</div>
					<div class="chat-list-footer">
						<form class="d-flex align-items-center">
							<input type="text" id="chatting" class="form-control" placeholder="메세지를 입력하세요.">

							<button onlick="send()" id="sendBtn" class="send-btn">보내기</button>
						</form>
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