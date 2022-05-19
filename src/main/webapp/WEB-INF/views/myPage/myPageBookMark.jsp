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
			<div class="page-banner-box bg-5">
				<h3>Groups</h3>
			</div>

			<div class="groups-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>사용자님이 생성한 보고싶어요 리스트</h3>
				</div>

				<div class="groups-search-box">
					<form>
						<input type="text" class="input-search" placeholder="Search groups...">
						<button type="submit"><i class="ri-search-line"></i></button>
					</form>
				</div>
			</div>

			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="all-groups" role="tabpanel">
					<div class="row justify-content-center">
						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
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
											<h3><a href="#">즐겨찾기 이름</a></h3>
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
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-2.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-2.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Marketing</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">173</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">7451</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2015</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-3.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-3.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Fitness Club</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">122</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">9453</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2013</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-4.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-4.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Restaurant</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">321</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">1151</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2019</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-5.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-5.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Travel Life</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">99</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">650</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2017</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-6.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-6.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Fashion Day</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">159</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">1929</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2018</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-7.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-7.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Photography</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">150</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">321</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2019</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-8.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-8.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Child Care</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">58</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">224</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2020</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-9.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-9.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Music Club</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">120</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">165</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2015</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-10.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-10.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Developer</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">145</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">3245</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2019</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-11.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-11.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Sports Fun</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">245</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">4245</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2010</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 item -->

						<!-- 즐겨찾기 item -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-12.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-12.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Teaching Club</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">62</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">6245</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2012</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 즐겨찾기 item -->

					<div class="load-more-posts-btn">
						<a href="#"><i class="flaticon-loading"></i> Load More</a>
					</div>
				</div>

				<div class="tab-pane fade" id="most-members" role="tabpanel">
					<div class="row justify-content-center">
						<div class="col-lg-3 col-sm-6">
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
											<h3><a href="#">Graphic Design</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">62</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">6451</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2016</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-2.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-2.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Marketing</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">173</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">7451</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2015</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-3.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-3.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Fitness Club</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">122</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">9453</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2013</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-4.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-4.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Restaurant</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">321</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">1151</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2019</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-5.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-5.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Travel Life</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">99</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">650</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2017</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-6.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-6.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Fashion Day</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">159</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">1929</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2018</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-7.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-7.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Photography</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">150</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">321</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2019</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-8.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-8.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Child Care</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">58</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">224</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2020</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-9.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-9.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Music Club</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">120</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">165</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2015</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-10.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-10.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Developer</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">145</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">3245</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2019</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-11.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-11.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Sports Fun</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">245</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">4245</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2010</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="single-groups-card">
								<div class="groups-image">
									<a href="#">
										<img src="/images/mypageCommunity/groups/groups-bg-12.jpg" alt="image">
									</a>
								</div>
								<div class="groups-content">
									<div class="groups-info d-flex justify-content-between align-items-center">
										<a href="#">
											<img src="/images/mypageCommunity/groups/groups-12.jpg" alt="image">
										</a>
										<div class="text ms-3">
											<h3><a href="#">Teaching Club</a></h3>
											<span>Public Groups</span>
										</div>
									</div>
									<ul class="statistics">
										<li>
											<a href="#">
												<span class="item-number">62</span>
												<span class="item-text">Post</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">6245</span>
												<span class="item-text">Members</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="item-number">2012</span>
												<span class="item-text">Since</span>
											</a>
										</li>
									</ul>
									<div class="join-groups-btn">
										<button type="submit">Join Group</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="load-more-posts-btn">
						<a href="#"><i class="flaticon-loading"></i> Load More</a>
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