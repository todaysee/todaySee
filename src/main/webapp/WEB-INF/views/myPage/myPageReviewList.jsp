<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>오늘 이거 볼래? | ${user.userNickname}님의 리뷰 목록</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/images/home/favicon.png">
    <!-- CSS files -->
    <link rel="stylesheet" href="/css/mypageCommunity.css">
    <!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>

    <!-- 추가 CSS -->
    <style>
        .groups-inner-box-style .title h3 {
            font-size: var(--font-size);
            margin-bottom: 0;
        }

        .review_mark_body {
            display:none;
        }

        #end {display:none;}

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
        <div class="content-page-box-area">
            <%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>

            <div class="events-inner-box-style d-flex justify-content-between align-items-center">
                <div class="title">
                    <h3>${user.userNickname} 님의 리뷰 목록</h3>
                </div>

                <div class="events-search-box">
                    <input type="text" class="input-search" id="search" placeholder="영상 제목 검색">
                </div>
            </div>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="all-groups" role="tabpanel">
                    <div class="row">
                        <c:forEach items="${reviewList}" var="review">
                            <!-- 리뷰 item 시작 -->
                            <div class="col-lg-3 col-sm-6 review_mark_body">
                                <div class="single-groups-card">
                                    <div class="groups-image">
                                        <a href="#">
                                            <img src="${review.content.contentMainImagesUrl}" alt="image">
                                            
                                        </a>
                                    </div>
                                    <div class="groups-content">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="text ms-3">
                                                <h3><a data-bs-toggle="modal" data-bs-target="#reviewModal${review.reviewNumber}">${review.content.contentTitle}</a></h3>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="text-center">작성 시간 : ${review.reviewDate}</div>
                                        </div>
                                        <div class="join-groups-btn">
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reviewModal${review.reviewNumber}">
                                                리뷰 상세보기
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="reviewModal${review.reviewNumber}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">${review.content.contentTitle}</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            평점 : ${review.reviewGrade}
                                            <hr/>
                                            내가 받은 좋아요 :  ${review.reviewLike}
                                            <hr/>
                                            ${review.reviewContent}
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 리뷰 item 끝 -->
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
<script>
    $("#search").on("keyup", function () {
        let value = $(this).val().toLowerCase();
        if(value === ''){ // 검색칸이 비었을때 창을 다시 세팅함
            $('.review_mark_body').css('display','none');
            $('.review_mark_body').slice(0, 8).show();
            $("#load").show();
        }else {
            $(".review_mark_body").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                $("#load").css('display','none');
                $("#end").css('display','none');
            });
        }
    });
    plusReview();
    function plusReview(){
        $(".review_mark_body").slice(0, 8).show(); // select the first ten
        if ($(".review_mark_body").length>8){
            $("#load").click(function(e){ // click event for load more
                e.preventDefault();
                $(".review_mark_body:hidden").slice(0, 4).show(); // select next 10 hidden divs and show them
                if($(".review_mark_body:hidden").length == 0){ // check if any hidden divs still exist
                    $("#load").css('display','none');
                    $("#end").show();
                }
            });
        } else {
            $("#load").css('display','none');
        }

    }
</script>
</body>
</html>