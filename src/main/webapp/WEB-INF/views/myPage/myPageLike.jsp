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
                    <div class="row">
                        <h1 class="">별점 분포</h1>
                        <div class="col-md-12 container-fluid">
                            <!--차트가 그려질 부분-->
                            <canvas id="myChart"></canvas>
                        </div>
                        <hr/>
                        <h1>선호 태그</h1>
                        <div class="col-md-8 container">

                        </div>
                        <hr/>
                        <h1>추천 영상</h1>
                        <div class="col-md-4">
                            <div class="info-image">
                                <a href="#">
                                    <img src="https://images.justwatch.com/poster/269926103/s592/nayi-haebangilji"
                                         class="img-thumbnail" alt="...">
                                </a>
                            </div>
                            <br/>
                            <h3 class="text-center">제목 들어감</h3>
                        </div>
                        <div class="col-md-4">
                            <div class="-image">
                                <a href="#">
                                    <img src="https://images.justwatch.com/poster/273790105/s592/pacinko"
                                         class="img-thumbnail" alt="image">
                                </a>
                            </div>
							<br/>
							<h3 class="text-center">제목 들어감</h3>
                        </div>
                        <div class="col-md-4">
                            <div class="info-image">
                                <a href="#">
                                    <img src="https://images.justwatch.com/poster/272669076/s592/seupai-paemilri"
                                         class="img-thumbnail" alt="image">
                                </a>
                            </div>
							<br/>
							<h3 class="text-center">제목 들어감</h3>
                        </div>
                        <hr/>
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
<%--차트파일--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script src="/js/chart/bar.js"></script>
</body>
</html>