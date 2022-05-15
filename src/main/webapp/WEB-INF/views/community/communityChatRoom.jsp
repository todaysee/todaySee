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
					<h3>채팅</h3>

					
				</div>


				<div class="messages-chat-container">
					<div class="chat-content">
						<div class="chat">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-11.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
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
									src="assets/images/user/user-2.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>Said how can I cooperate with you?</p>
								</div>
							</div>
						</div>

						<div class="chat">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-3.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>I need some ideas from you about my design</p>
								</div>
							</div>
						</div>

						<div class="chat chat-left">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-4.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>What you want to know about design</p>
								</div>
							</div>
						</div>

						<div class="chat">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-5.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>With everything I know about design, I can help you in
										many ways</p>
								</div>
							</div>
						</div>

						<div class="chat chat-left">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-6.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>Ok, I'm taking note I'm telling you everything I need</p>
								</div>
							</div>
						</div>

						<div class="chat">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-7.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>I am waiting for your note</p>
								</div>
							</div>
						</div>

						<div class="chat chat-left">
							<div class="chat-avatar">
								<a routerLink="/profile" class="d-inline-block"> <img
									src="assets/images/user/user-8.jpg" width="50" height="50"
									class="rounded-circle" alt="image">
								</a>
							</div>

							<div class="chat-body">
								<div class="chat-message">
									<p>What makes you different from other learning platforms?</p>
								</div>
							</div>
						</div>
					</div>

					<div class="chat-list-footer">
						<form class="d-flex align-items-center">
							<div class="btn-box d-flex align-items-center me-3">
								<button class="file-attachment-btn d-inline-block me-2"
									data-bs-toggle="tooltip" data-bs-placement="top"
									title="File Attachment" type="button">
									<i class="ri-attachment-2"></i>
								</button>

							</div>

							<input type="text" class="form-control"
								placeholder="메세지를 입력하세요.">

							<button type="submit" class="send-btn d-inline-block">보내기</button>
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