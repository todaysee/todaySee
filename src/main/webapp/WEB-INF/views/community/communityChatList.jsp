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
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- js files -->
<script src="/js/mypageCommunity/chatList.js"></script>
<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
		<div class="all-notifications-body">
                    <div class="all-notifications-header d-flex justify-content-between align-items-center">
                        <h3>채팅방 목록</h3>
                    </div>
                    <div class="item d-flex justify-content-between align-items-center">
                        <div class="figure">
                            <a href="my-profile.html"><img src="../images/mypageCommunity/user/user-55.jpg" class="rounded-circle" alt="image"></a>
                        </div>
                        <div class="text">
                            <h4><a href="my-profile.html">James Vanwin</a></h4>
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