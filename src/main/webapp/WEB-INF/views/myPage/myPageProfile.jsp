<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>오늘 이거 볼래? | ${user.userNickname}님의 개인 정보</title>

<!-- Favicon -->
	<link rel="shortcut icon" href="/images/home/favicon.png">
<!-- CSS files -->
<link rel="stylesheet" href="/css/mypageCommunity.css">
<!-- js files -->
<script src="../js/mypageCommunity/chatList.js"></script>

<style>
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
			<%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>
			<div class="row">
				<div class="col-lg-1 col-md-12"></div>

				<div class="col-lg-10 col-md-12">
					<div class="account-setting-form">
						<h3>내 정보</h3>
						<%@ include file="../inculde/mypage/myPageProfileImg.jsp"%>
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>닉네임</label> <input type="text" class="form-control"
										value="${user.userNickname}" readonly>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>이름</label> <input type="text" class="form-control"
										value="${user.userName}" readonly>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>성별</label> <input type="text" class="form-control"
										value="${user.userGender}" readonly>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>로그인 날짜</label> <input type="text" class="form-control date2"
										value="${user.userLoginDate}" readonly>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>이메일</label> <input type="text" class="form-control"
										placeholder="${user.userEmail}" readonly>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-group">
									<label>가입일자</label> <input type="text" class="form-control date1"
										value="${user.userSignupDate}" readonly>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group">
									<label>작성 리뷰 수</label> <a href="/myPage/review"><input type="number"
										class="form-control" value="${userReview}" readonly></a>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group">
									<label>작성 게시글 수</label> <a href="/myPage/list"><input type="number"
										class="form-control" value="${userCommunity}" readonly></a>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group">
									<label>받은 좋아요</label> <input type="number" class="form-control"
										value="${userReviewLikeSum}" readonly>
								</div>
							</div>
							<div class="col-lg-3 col-md-3">
								<div class="form-group">
									<label>가입일로 부터 몇 일</label> <input type="number"
										class="form-control" value="${userJoinDate}" readonly>
								</div>
							</div>
							<div class="col-lg-2 col-md-12">
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#userInfoChangeModal">
									정보 수정</button>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="userInfoChangeModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">비밀번호 입력</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="container-fluid">
												<div class="">회원님의 정보 수정을 위해 비밀번호를 확인 합니다.</div>
												<br />
											</div>
											 <form id="checkPwd" name="checkPwd" action="/myPage/update" method="get">
											<div class="row">
												<div class="col-md-12">
													<label>비밀번호</label> <input type="password" name="myPagePassword" id="myPagePassword"
														class="form-control">
														<span class="error_message"></span>
												</div>
											</div>
										</div>
									
										<div class="modal-footer">
											
												<button type="button" name = "btnCheckPwd" id="btnCheckPwd" class="btn btn-primary">확인</button>
										
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">닫기</button>
													</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-1 col-md-12"></div>
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
	
	<!-- JS 추가 !  -->
	<script src="/js/mypageCommunity/password.js"></script>
	<script>
		$(function () {
			let dateCut1 = $(".date1").val()
			let cut1 = dateCut1.substring(0,11)
			$(".date1").val(cut1)

			let dateCut2= $(".date2").val()
			let cut2 = dateCut2.substring(0,11)
			$(".date2").val(cut2)
		})
	</script>
	
</body>
</html>