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
    <link rel="stylesheet" href="/css/mypageCommunity/jqcloud.css">
    <!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>
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
                            <canvas id="reviewRatingBarChart"></canvas>
                        </div>
                        <hr/>
                        <h1>선호 태그</h1>
                        <div class="col-md-8 container">
                        <div id="example" style="width: 550px; height: 350px;"></div>
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
    <%@ include file="../inculde/community/rightSidebar.jsp" %>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<%--워드클라우드--%>
<script src="/js/mypageCommunity/jqcloud.js"></script>
<script>
    function colorize() {
        let r = Math.floor(Math.random() * 200);
        let g = Math.floor(Math.random() * 200);
        let b = Math.floor(Math.random() * 200);
        let color = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)';
        return color;
    }


    let jsonDataReview = ${chartReview};
    let jsonObjectReview = JSON.stringify(jsonDataReview);

    let jDataReview = JSON.parse(jsonObjectReview);
    let labelListReview = []; // 배열생성
    let valueListReview = [];
    let colorList = [];

    for (let i = 0; i < jDataReview.length; i++) {
        let dReview = jDataReview[i];
        labelListReview.push(dReview.chartReviewNum);
        valueListReview.push(dReview.chartReviewChartCount);
        colorList.push(colorize());
    }


    let data = {
        labels: labelListReview,
        datasets: [{
            backgroundColor: colorList,
            data: valueListReview
        }],
    };
    console.log(labelListReview)
    let barChart = document.getElementById('reviewRatingBarChart').getContext('2d');
    new Chart(barChart, {
        type: 'bar',
        data: data,
        options: {
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    let jsonDataCategory = ${categoryList};
    let jsonObjectCategory = JSON.stringify(jsonDataCategory);

    let jDataCategory = JSON.parse(jsonObjectCategory);
    let CategoryListName = []; // 배열생성
    let CategoryListValue = [];


    for (let i = 0; i < jDataCategory.length; i++) {
        let dCategory = jDataCategory[i];
        CategoryListName.push(dCategory.genreName);
        CategoryListValue.push(dCategory.genreCount);
    }

    var word_array = [];

    for (var i = 0; i < CategoryListName.length; i++){
        console.log(CategoryListName[i])
        console.log(CategoryListValue[i])
        word_array.push ({text: CategoryListName[i], weight: CategoryListValue[i]})
        console.log(word_array)
    }

    console.log(word_array)



    $(function() {
        // When DOM is ready, select the container element and call the jQCloud method, passing the array of words as the first argument.
        $("#example").jQCloud(word_array);
    });

</script>
</body>
</html>