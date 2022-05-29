<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Links of CSS files -->
    <link rel="stylesheet" href="/css/mypageCommunity.css">
    <link rel="stylesheet" href="../css/mypageCommunity/communityIndex.css">
    <!-- 추가 CSS -->
    <style>
        .groups-inner-box-style .title h3 {
            font-size: var(--font-size);
            margin-bottom: 0;
        }

        .genre_mark_body {
            display: none;
        }

        #end {
            display: none;
        }

    </style>

    <!-- js files -->
    <script src="../js/mypageCommunity/communityIndex.js"></script>
    <!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>

    <title>Zust - Social Community & Marketplace HTML Template</title>

    <link rel="icon" type="image/png"
          href="/images/mypageCommunity/favicon.png">
</head>

<body>

<!-- Start Preloader Area -->
<%@ include file="../inculde/community/preLoader.jsp" %>


<!-- Start Main Content Wrapper Area -->
<div class="main-content-wrapper d-flex flex-column">

    <!-- Start Navbar Area -->
    <%@ include file="../inculde/mypage/navbar.jsp" %>

    <!-- Start Sidemenu Area -->
    <%@ include file="../inculde/mypage/sideMenu.jsp" %>


    <!-- Start Content Page Box Area -->
    <div class="content-page-box-area">
        <div class="content-page-box-area">
            <%@ include file="../inculde/mypage/myPageTitleImg.jsp" %>

            <div class="account-setting-list-tabs">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="ottTab" data-bs-toggle="tab" href="#ott" role="tab" aria-controls="ott">Ott
                            카테고리</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" id="genreTab" data-bs-toggle="tab" href="#genre" role="tab"
                           aria-controls="genre">장르 카테고리</a>
                    </li>
                </ul>
            </div>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="ott" role="tabpanel">
                    <div class="row">
						<c:forEach items="${ottList}" var="ott">
							<!-- 게시판 이동 시작 -->
							<div class="col-lg-3 col-md-6 review_mark_body">
								<div class="single-groups-card">
									<div class="groups-image">
										<a href="/communityOttBoard/${ott.ottNumber}">
											<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
										</a>
									</div>
									<div class="groups-content">
										<div class="groups-info d-flex justify-content-between align-items-center">
											<a href="/communityOttBoard/${ott.ottNumber}">
												<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
											</a>
											<div class="text ms-3">
												<h3><a href="/communityOttBoard/${ott.ottNumber}">${ott.ottName}</a></h3>
											</div>
										</div>
										<div class="join-groups-btn">
											<button type="button" class="btn btn-primary">
												${ott.ottName} 게시판
											</button>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
                    </div>
                </div>

                <div class="tab-pane fade" id="genre" role="tabpanel">
                    <div class="events-inner-box-style d-flex justify-content-between align-items-center">
                        <div class="title">
                            <h3>장르 검색하기</h3>
                        </div>

                        <div class="events-search-box">
                            <input type="text" class="input-search" id="searchGenre" placeholder="장르 검색하기">
                        </div>
                    </div>
                    <div class="row">
						<c:forEach items="${genreList}" var="genre">
							<!-- 게시판 이동 시작 -->
							<div class="col-lg-3 col-md-6 genre_mark_body">
								<div class="single-groups-card">
									<div class="groups-image">
										<a href="/communityGenreBoard/${genre.genreNumber}">
											<img src="/images/mypageCommunity/groups/groups-bg-1.jpg" alt="image">
										</a>
									</div>
									<div class="groups-content">
										<div class="groups-info d-flex justify-content-between align-items-center">
											<a href="/communityGenreBoard/${genre.genreNumber}">
												<img src="/images/mypageCommunity/groups/groups-1.jpg" alt="image">
											</a>
											<div class="text ms-3">
												<h3><a href="/communityGenreBoard/${genre.genreNumber}">${genre.genreName}</a></h3>
											</div>
										</div>
										<div class="join-groups-btn">
											<button type="button" class="btn btn-primary">
													${genre.genreName} 게시판
											</button>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
                    </div>


                    <div class="load-more-posts-btn">
                        <a href="#"><i class="flaticon-loading" id="load">더 보기</i></a>
                    </div>
                    <div class="text-center" id="end">마지막 즐겨찾기입니다.</div>
                </div>
            </div>

        </div>
    </div>


    <!-- End Content Page Box Area -->

    <!-- Start Right Sidebar Area -->
    <%@ include file="../inculde/community/rightSidebar.jsp" %>


</div>
<!-- End Main Content Wrapper Area -->

<!-- Start Copyright Area -->
<%@ include file="../inculde/community/footer.jsp" %>


<!-- Links of JS files -->
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
	window.onload = function(){
		$("#searchGenre").on("keyup", function () {
			let value = $(this).val().toLowerCase();
			if (value === '') { // 검색칸이 비었을때 창을 다시 세팅함
				$('.genre_mark_body').css('display', 'none');
				$('.genre_mark_body').slice(0, 8).show();
				$("#load").show();
			} else {
				$(".genre_mark_body").filter(function () {
					$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
					$("#load").css('display', 'none');
					$("#end").css('display', 'none');
				});
			}
		});
		plusReview();

		function plusReview() {
			$(".genre_mark_body").slice(0, 8).show(); // select the first ten
			if ($(".genre_mark_body").length > 8) {
				$("#load").click(function (e) { // click event for load more
					e.preventDefault();
					$(".genre_mark_body:hidden").slice(0, 4).show(); // select next 10 hidden divs and show them
					if ($(".genre_mark_body:hidden").length == 0) { // check if any hidden divs still exist
						$("#load").css('display', 'none');
						$("#end").show();
					}
				});
			} else {
				$("#load").css('display', 'none');
			}

		}
	}
</script>

</body>
</html>