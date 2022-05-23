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
        <%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>


        <div class="row">
            <div class="col-lg-1 col-md-12">
            </div>

            <div class="col-lg-10 col-md-12">
                <div class="account-setting-form">
                    <h3>내 정보 수정</h3>
                    <img src="https://www.justwatch.com/images/backdrop/272301461/s1440/seupai-paemilri"
                         class="rounded-circle img-thumbnail float-start containerMyProfileImg " alt="image">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="mb-3">
                                <label for="formFile" class="form-label">프로필 이미지 변경하기</label>
                                <input class="form-control" type="file" id="formFile">
                            </div>
                            <div class="mb-3">
                                <label for="formFile2" class="form-label">배경 이미지 변경하기</label>
                                <input class="form-control" type="file" id="formFile2">
                            </div>
                        </div>
                        <hr/>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>닉네임 변경하기</label>
                                <input type="text" class="form-control" value="">
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" style="margin-bottom: 15px;">
                                닉네임 변경
                            </button>
                        </div>
                        <hr/>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>비밀번호 변경하기</label>
                                <input type="password" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>변경할 비밀번호 한번더 입력</label>
                                <input type="password" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" style="margin-bottom: 15px;">
                                비밀번호 변경
                            </button>
                        </div>
                        <hr/>
                        <div class="col-lg-2 col-md-12 ms-auto">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger" style="margin-bottom: 15px;" data-bs-toggle="modal" data-bs-target="#userSignOutModal">
                                회원 탈퇴하기
                            </button>
                        </div>
                        <!-- Modal1 -->
                        <div class="modal fade" id="userSignOutModal" tabindex="-1"
                             aria-labelledby="userSignOutModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="userSignOutModalLabel">회원 탈퇴</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="">회원님의 탈퇴를 위해서 비밀번호를 확인 합니다.</div>
                                            <br/>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label style="margin-bottom: 10px;">비밀번호</label>
                                                <input type="password" class="form-control" style="margin-bottom: 15px">
                                            </div>
                                            <br/>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div style="margin-bottom: 10px;">탈퇴사유</div>
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
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/myPage/update">
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