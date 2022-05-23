<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

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

    <style>

    </style>
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/mypage/preLoader.jsp" %>
<!--=========== Loader =============-->

<!--========== Body ==============-->
<div class="main-content-wrapper d-flex flex-column">
    <!--========== Header Navbar ==============-->
    <%@ include file="../inculde/mypage/navbar.jsp" %>
    <!--========== Header Navbar ==============-->
    <!--========== SideBar ==============-->
    <%@ include file="../inculde/mypage/sideMenu.jsp" %>
    <!--========== SideBar ==============-->

    <!--========== Body ==============-->
    <div class="content-page-box-area">
        <%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>

        <div class="row">
            <div class="col-lg-1 col-md-12">
            </div>

            <div class="col-lg-10 col-md-12">
                <div class="account-setting-form">
                    <h3>내 정보</h3>
                    <img src="https://www.justwatch.com/images/backdrop/272301461/s1440/seupai-paemilri"
                         class="rounded-circle img-thumbnail float-start containerMyProfileImg " alt="image">




                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <label>닉네임</label>
                                <input type="text" class="form-control" value="${user.userNickname}" readonly>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <label>이름</label>
                                <input type="text" class="form-control" value="${user.userName}" readonly>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <label>성별</label>
                                <input type="text" class="form-control" value="${user.userGender}" readonly>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <label>생년월일</label>
                                <input type="text" class="form-control" value="2022-05-15" readonly>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <label>이메일</label>
                                <input type="text" class="form-control" placeholder="${user.userEmail}" readonly>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="form-group">
                                <label>가입일자</label>
                                <input type="text" class="form-control" value="2022-05-15" readonly>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="form-group">
                                <label>평가한 영상 수</label>
                                <input type="number" class="form-control" value="33" readonly>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="form-group">
                                <label>작성 리뷰 수</label>
                                <input type="number" class="form-control" value="33" readonly>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="form-group">
                                <label>받은 좋아요</label>
                                <input type="number" class="form-control" value="33" readonly>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="form-group">
                                <label>작성 게시글 수</label>
                                <input type="number" class="form-control" value="33" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#userInfoChangeModal">
                                정보 수정
                            </button>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="userInfoChangeModal" tabindex="-1"
                             aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">비밀번호 입력</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="">회원님의 정보 수정을 위해 비밀번호를 확인 합니다.</div>
                                            <br/>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label>비밀번호</label>
                                                <input type="password" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/myPage/update/${user.userNumber}">
                                            <button type="button" class="btn btn-primary">확인</button>
                                        </a>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                            닫기
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-1 col-md-12">
            </div>
        </div>

    </div>


    <!--========== Body ==============-->
    <!--========== Right SideBar ==============-->
    <%@ include file="../inculde/mypage/rightSidebar.jsp" %>
    <!--========== Right SideBar ==============-->
</div>
<!--========== Body ==============-->

<!--========== Footer ==============-->
<%@ include file="../inculde/mypage/footer.jsp" %>
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