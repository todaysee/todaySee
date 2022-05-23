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
		/*==================================
            box안의 상단바 버튼 수정
        ==================================*/
		.events-inner-box-style .bookmarkDateils-box {
			position: relative;
		}

		.bookmarkDateils-box .events-footer .default-btn {
			display: inline-block;
			background-color: var(--main-color);
			color: var(--white-color);
			padding: 5px 20px;
			font-size: 13px;
			border-radius: 5px;
			-webkit-transition: var(--transition);
			transition: var(--transition);
		}

		.bookmarkDateils-box .events-footer .default-btn:hover {
			background-color: var(--optional-color);
		}

		/*==================================
            체크박스 css 추가
        ==================================*/

		input[type="checkbox"],
		input[type="radio"] {
			border: 0;
			clip: rect(0 0 0 0);
			height: 1px;
			margin: -1px;
			overflow: hidden;
			padding: 0;
			position: absolute;
			width: 1px;
		}
		input[type="checkbox"]:hover + label:before,
		input[type="radio"]:hover + label:before {
			border-color: #999;
		}
		input[type="checkbox"]:active + label:before,
		input[type="radio"]:active + label:before {
			transition-duration: 0;
			filter: brightness(0.2);
		}
		input[type="checkbox"] + label,
		input[type="radio"] + label {
			position: relative;
			padding-left: 26px;
			font-weight: normal;
		}
		input[type="checkbox"] + label:before, input[type="checkbox"] + label:after,
		input[type="radio"] + label:before,
		input[type="radio"] + label:after {
			box-sizing: content-box;
			position: absolute;
			content: '';
			display: block;
			left: 0;
		}
		input[type="checkbox"] + label:before,
		input[type="radio"] + label:before {
			top: 50%;
			width: 16px;
			height: 16px;
			margin-top: -10px;
			border: 2px solid #d9d9d9;
			text-align: center;
		}
		input[type="checkbox"] + label:after,
		input[type="radio"] + label:after {
			background-color: #00bad2;
			top: 50%;
			left: 6px;
			width: 8px;
			height: 8px;
			margin-top: -4px;
			transform: scale(0);
			transform-origin: 50%;
			transition: transform 200ms ease-out;
		}

		input[type="radio"]:checked + label:before {
			-moz-animation: borderscale 300ms ease-in;
			-webkit-animation: borderscale 300ms ease-in;
			animation: borderscale 300ms ease-in;
			background-color: #fff;
		}
		input[type="radio"]:checked + label:after {
			transform: scale(1);
		}
		input[type="radio"] + label:before, input[type="radio"] + label:after {
			border-radius: 50%;
		}

		input[type="checkbox"] + label:after {
			background-color: transparent;
			top: 50%;
			left: 5px;
			width: 7px;
			height: 4px;
			margin-top: -5px;
			border-style: solid;
			border-color: #00bad2;
			border-width: 0 0 3px 3px;
			-moz-transform: rotate(-45deg) scale(0);
			-ms-transform: rotate(-45deg) scale(0);
			-webkit-transform: rotate(-45deg) scale(0);
			transform: rotate(-45deg) scale(0);
			-moz-transition: none;
			-o-transition: none;
			-webkit-transition: none;
			transition: none;
		}
		input[type="checkbox"]:checked + label:before {
			-moz-animation: borderscale 200ms ease-in;
			-webkit-animation: borderscale 200ms ease-in;
			animation: borderscale 200ms ease-in;
		}
		input[type="checkbox"]:checked + label:after {
			content: '';
			-moz-transform: rotate(-45deg) scale(1);
			-ms-transform: rotate(-45deg) scale(1);
			-webkit-transform: rotate(-45deg) scale(1);
			transform: rotate(-45deg) scale(1);
			-moz-transition: -moz-transform 200ms ease-out;
			-o-transition: -o-transform 200ms ease-out;
			-webkit-transition: -webkit-transform 200ms ease-out;
			transition: transform 200ms ease-out;
		}

		input[type="text"] {
			font-family: "Open Sans", "Helvetica Neue", Arial, sans-serif;
			font-weight: normal;
			font-size: 16px;
			line-height: 24px;
			padding: 5px 10px;
			background-color: #fff;
			border: 2px solid #d9d9d9;
		}
		input[type="text"]:focus {
			outline: none;
		}
		input[type="text"]:focus, input[type="text"]:hover {
			border-color: #999;
		}
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
					<h3>즐겨찾기 이름</h3>
				</div>
				<div class="bookmarkDateils-box">
					<div class="events-footer d-flex justify-content-between align-items-center">
						<a href="#" class="default-btn" data-bs-toggle="modal" data-bs-target="#modalListUpdate">현재 리스트 수정</a>&nbsp
						<a href="#" class="default-btn delete-btn">현재 리스트 삭제</a>&nbsp
						<a href="#" class="default-btn">선택 영상을 리스트에서 삭제</a>&nbsp
						<a href="#" class="default-btn" data-bs-toggle="modal" data-bs-target="#modalListMove">선택 영상을 다른 리스트로 이동</a>&nbsp
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
							<img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
						</a>
						<div class="events-content">
							<div class="row">
								<div class="col-md-6">
									<span>연령등급</span>
								</div>
								<div class="col-md-2 ms-auto">
									<input type="checkbox" id="movie1" class="checkbox2"/><label for="movie1"></label>
								</div>
							</div>
							<h3>
								<a href="#">영상 제목</a>
							</h3>
							<p>장르</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
								<a href="#" class="default-btn delete-btn">리스트에서 삭제</a>
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
								<a href="#" class="default-btn ">Attend</a>
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

<!--========== List Update Modal ==============-->
<div class="modal fade" id="modalListUpdate" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalListUpdateLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalListUpdateLabel">리스트 수정하기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				...
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary">수정하기</button>
			</div>
		</div>
	</div>
</div>
<!--========== List Update Modal ==============-->

<!--========== List Update Modal ==============-->
<div class="modal fade" id="modalListMove" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalListMoveLable" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalListMoveLable">영상 이동하기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				...
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary">이동하기</button>
			</div>
		</div>
	</div>
</div>
<!--========== List Update Modal ==============-->

<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>

<!-- 추가 script -->
<script>
	$('.delete-btn').on('click', function(){
		if(confirm('정말 삭제하시겠습니까?') == true) {
			alert('삭제되었습니다.');
		} else {
			alert('취소되었습니다.');
		}
	});
</script>
</body>
</html>