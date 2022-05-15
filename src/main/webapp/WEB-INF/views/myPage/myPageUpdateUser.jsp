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
        <div class="page-banner-box">
            <h3>Account Setting</h3>
        </div>

        <div class="account-setting-list-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="userTab" data-bs-toggle="tab" href="#userNameChange" role="tab" aria-controls="profile-information">닉네임 변경</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" id="passwordTab" data-bs-toggle="tab" href="#passwordChange" role="tab" aria-controls="account">비밀번호 변경</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" id="signOutTab" data-bs-toggle="tab" href="#signOut" role="tab" aria-controls="privacy">회원 탈퇴</a>
                </li>

            </ul>
        </div>

        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="userNameChange" role="tabpanel">
                <form class="account-setting-form">
                    <h3>닉네임 변경하기</h3>

                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>변경할 닉네임을 입력하세요.</label>
                                <input type="text" class="form-control" placeholder="닉네임 적기">
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12">
                            <button type="button" class="btn default-btn">변경하기</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="tab-pane fade" id="passwordChange" role="tabpanel">
                <form class="account-setting-form">
                    <h3>비밀번호 변경하기</h3>

                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>변경할 비밀번호 입력</label>
                                <input type="password" class="form-control" placeholder="Full name">
                                <label>변경할 비밀번호 한번 더 입력</label>
                                <input type="password" class="form-control" placeholder="Full name">
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12">
                            <button type="submit" class="default-btn">변경하기</button>
                        </div>
                    </div>
                </form>

            </div>

            <div class="tab-pane fade" id="signOut" role="tabpanel">
                <form class="account-setting-form">
                    <h3>회원 탈퇴하기</h3>

                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="form-group">
                                <label>탈퇴사유</label>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='account_Reason' value="상품 다양성/가격품질 불만"> <label
                                        class='form-check-label'>상품 다양성/가격품질 불만</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='account_Reason' value="교환/환불/품질불만"> <label
                                        class='form-check-label'>교환/환불/품질불만</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='account_Reason' value="배송지연"> <label
                                        class='form-check-label'>배송지연</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='account_Reason' value="이용빈도 낮음"><label
                                        class='form-check-label'>이용빈도 낮음</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='account_Reason' value="etc"> <label
                                        class='form-check-label'>기타</label>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="textEtc"
                                           placeholder="입력해주세요." name='account_ReasonText' readonly>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <button type="submit" class="default-btn">탈퇴 하기</button>
                        </div>
                    </div>
                </form>
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