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

	</style>
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
			<%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>

			<div class="events-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>사용자님이 생성한 보고싶어요 리스트</h3>
				</div>

				<div class="events-search-box">
					<input type="text" class="input-search" id="search" placeholder="리뷰 검색하기">
				</div>
			</div>

			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="all-groups" role="tabpanel">
					<div class="row">
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6 book_mark_body">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="/myPage/bookMark/list/1">즐겨찾기 이름</a></h3>
										</div>
									</div>
									<div class="join-groups-btn">
										<button type="submit">즐겨찾기 보기</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->
					</div>
					<!-- 즐겨찾기 item -->

					<div class="load-more-posts-btn">
						<a href="#"><i class="flaticon-loading" id="load">더 보기</i></a>
					</div>
					<div class="text-center" id="end">마지막 즐겨찾기입니다.</div>
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