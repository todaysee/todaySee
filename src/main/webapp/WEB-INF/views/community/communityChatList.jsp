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
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- js files -->
<script src="/js/mypageCommunity/chatList.js"></script>
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
			<div class="py-10 h-screen bg-gray-300 px-2">
				<div
					class="max-w-md mx-auto bg-gray-100 shadow-lg rounded-lg overflow-hidden md:max-w-lg">
					<div class="md:flex">
						<div class="w-full p-4">
							
							<ul>
								<li
									class="flex justify-between items-center bg-white mt-2 p-2 hover:shadow-lg rounded cursor-pointer transition">
									<div class="flex ml-2">
										<div class="flex flex-col ml-2">
											<span class="font-medium text-black">Jessica Koel</span> <span
												class="text-sm text-gray-400 truncate w-32">Hey,
												Joel, I here to help you out please tell me</span>
										</div>
									</div>
									<div class="flex flex-col items-center">
										<span class="text-gray-300">11:26</span> <i
											class="fa fa-star text-green-400"></i>
									</div>
								</li>
								
							</ul>
						</div>
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