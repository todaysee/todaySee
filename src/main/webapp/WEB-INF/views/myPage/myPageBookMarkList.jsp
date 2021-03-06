<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>오늘 이거 볼래? | ${user.userNickname}님의 보고싶어요 목록</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
	<!-- CSS files -->
	<link rel="stylesheet" href="/css/mypageCommunity.css">
	<!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>

	<!-- 추가 CSS -->
	<style>
		.groups-inner-box-style .title h3 {
			font-size: var(--font-size);
			margin-bottom: 0;
		}

		.book_mark_body {
			display:none;
		}
		#end {display:none;}

		.single-groups-card .groups-content .groups-info .text h2 {
			font-size: 20px;
			margin-bottom: 0;
		}

		.single-groups-card .groups-content .groups-info .text h2 a {
			color: var(--black-color);
		}

		.single-groups-card .groups-content .groups-info .text h2 a:hover {
			color: var(--main-color);
		}

	</style>
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
	<div class="content-page-box-area">
		<div class="content-page-box-area">
			<%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>

			<div class="events-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>${user.userNickname}님이 생성한 보고싶어요 목록</h3>
				</div>
			</div>

			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="all-groups" role="tabpanel">
					<div class="row">
						<!-- 즐겨찾기 item -->
						<c:forEach items="${bookmarkList}" var="bookmark">
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<c:if test="${empty bookmark.contentMainImg}">
											<img src="/images/home/cat.jpg" alt="defaultImage">
										</c:if>
										<c:if test="${not empty bookmark.contentMainImg}">
											<img src="${bookmark.contentMainImg}" alt="${bookmark.bookmarkName}">
										</c:if>
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
										</a>
										<div class="text ms-3">
											<h2><a href="/myPage/bookMark/${bookmark.bookmarkNumber}">${bookmark.bookmarkName}</a></h2>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="button" onclick="location.href='/myPage/bookMark/${bookmark.bookmarkNumber}'">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						<!-- 즐겨찾기 item -->

					</div>

					<div class="load-more-posts-btn">
						<a href="#"><i class="flaticon-loading" id="load">더 보기</i></a>
						<div id="end">마지막 북마크입니다.</div>



			</div>
		</div>
	</div>
	<!--========== Body ==============-->

	<!--========== Right SideBar ==============-->
<%@ include file="../inculde/community/rightSidebar.jsp" %>
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
<script>
	$("#search").on("keyup", function () {
		let value = $(this).val().toLowerCase();
		if(value === ''){ // 검색칸이 비었을때 창을 다시 세팅함
			$('.book_mark_body').css('display','none');

			$('.book_mark_body').slice(0, 8).show();

			$("#load").show();
		}else {
			$(".book_mark_body").filter(function () {
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				$("#load").css('display','none');

				$("#end").css('display','none');

			});
		}
	});
	plusReview();
	function plusReview(){

		$(".book_mark_body").slice(0, 8).show(); // select the first ten
		if ($(".book_mark_body").length>8) {
			$("#load").click(function (e) { // click event for load more
				e.preventDefault();
				$(".book_mark_body:hidden").slice(0, 4).show(); // select next 10 hidden divs and show them
				if ($(".book_mark_body:hidden").length == 0) { // check if any hidden divs still exist
					$("#load").css('display', 'none');
					$("#end").show();
				}
			});
		} else {
			$("#load").css('display', 'none');
		}

	}
</script>
</body>
</html>