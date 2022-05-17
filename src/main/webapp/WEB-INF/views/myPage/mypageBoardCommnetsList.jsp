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
		<div class="page-banner-box">
			<h3>Account Setting</h3>
		</div>

		<div class="account-setting-list-tabs">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="profile-information-tab" data-bs-toggle="tab" href="#profile-information" role="tab" aria-controls="profile-information">게시글 보기</a>
				</li>

				<li class="nav-item">
					<a class="nav-link" id="account-tab" data-bs-toggle="tab" href="#account" role="tab" aria-controls="account">댓글 보기</a>
				</li>
			</ul>
		</div>

		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="profile-information" role="tabpanel">
				<div class="row" id="reviewBody">

				</div>
			</div>

			<div class="tab-pane fade" id="account" role="tabpanel">

			</div>
		</div>

		<ul class="pagination justify-content-center" style="margin:20px 0; cursor: pointer;">
		</ul>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="/js/ajax/reviewPaging.js"></script>
</body>
</html>