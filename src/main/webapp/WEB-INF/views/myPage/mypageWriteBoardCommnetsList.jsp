<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>오늘 이거 볼래? | ${user.userNickname}님의 게시글 및 댓글보기</title>

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
            display: none;
        }

        #end {
            display: none;
        }

        /************************************************************
          댓글 table 스타일 추가 - 권소연
         ************************************************************/
        .comment-table {
            background-color: var(--white-color);
            padding: 30px;
        }

        .comment-table table {
            margin-bottom: 0;
        }

        .comment-table table thead tr {
            border: none;
        }

        .comment-table table thead tr th {
            border: none;
            border-bottom-width: 0px;
            vertical-align: middle;
            padding: 15px 25px;
            white-space: nowrap;
            font-size: 15px;
            color: var(--black-color);
            font-weight: 600;
            font-family: var(--heading-font-family);
        }

        .comment-table table thead tr th:first-child {
            padding-left: 0;
        }

        .comment-table table thead tr th:last-child {
            padding-right: 0;
        }

        .comment-table table tbody tr {
            border: none;
        }

        .comment-table table tbody tr td {
            border: none;
            vertical-align: middle;
            color: var(--paragraph-color);
            white-space: nowrap;
            padding: 15px 25px;
            font-weight: 400;
            font-size: 15px;
            word-break: break-all;
            height: auto;
        }

        .comment-table table tbody tr td:first-child {
            padding-left: 0;
        }

        .comment-table table tbody tr td:last-child {
            padding-right: 0;
        }

        .comment-table table tbody tr td a {
            color: var(--main-color);
        }

        .comment-table table tbody tr td h5 {
            font-size: 15px;
            margin-bottom: 12px;
        }

        .comment-table table tbody tr td p {
            font-size: 14px;
            margin-bottom: 0;
        }

        .comment-table table tbody tr td span {
            font-size: 14px;
        }

        /*==================================
           체크박스 css 추가
       ==================================*/

        .comment-checkbox input[type="checkbox"],
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

        .comment-checkbox input[type="checkbox"]:hover + label:before,
        input[type="radio"]:hover + label:before {
            border-color: #999;
        }

        .comment-checkbox input[type="checkbox"]:active + label:before,
        input[type="radio"]:active + label:before {
            transition-duration: 0;
            filter: brightness(0.2);
        }

        .comment-checkbox input[type="checkbox"] + label,
        input[type="radio"] + label {
            position: relative;
            padding-left: 26px;
            font-weight: normal;
        }

        .comment-checkbox input[type="checkbox"] + label:before, input[type="checkbox"] + label:after,
        input[type="radio"] + label:before,
        input[type="radio"] + label:after {
            box-sizing: content-box;
            position: absolute;
            content: '';
            display: block;
            left: 0;
        }

        .comment-checkbox input[type="checkbox"] + label:before,
        input[type="radio"] + label:before {
            top: 50%;
            width: 16px;
            height: 16px;
            margin-top: -10px;
            border: 2px solid #d9d9d9;
            text-align: center;
        }

        .comment-checkbox input[type="checkbox"] + label:after,
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

        .comment-checkbox input[type="radio"]:checked + label:before {
            -moz-animation: borderscale 300ms ease-in;
            -webkit-animation: borderscale 300ms ease-in;
            animation: borderscale 300ms ease-in;
            background-color: #fff;
        }

        .comment-checkbox input[type="radio"]:checked + label:after {
            transform: scale(1);
        }

        .comment-checkbox input[type="radio"] + label:before, input[type="radio"] + label:after {
            border-radius: 50%;
        }

        .comment-checkbox input[type="checkbox"] + label:after {
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

        .comment-checkbox input[type="checkbox"]:checked + label:before {
            -moz-animation: borderscale 200ms ease-in;
            -webkit-animation: borderscale 200ms ease-in;
            animation: borderscale 200ms ease-in;
        }

        .comment-checkbox input[type="checkbox"]:checked + label:after {
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

    </style>
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/home/preLoader.jsp"%>
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
        <%@ include file="../inculde/mypage/myPageTitleImg.jsp" %>

        <div class="account-setting-list-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="profile-information-tab" data-bs-toggle="tab"
                       href="#profile-information" role="tab" aria-controls="profile-information">게시글 보기</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" id="account-tab" data-bs-toggle="tab" href="#account" role="tab"
                       aria-controls="account">댓글 보기</a>
                </li>
            </ul>

        </div>

        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="profile-information" role="tabpanel">
                <div class="events-inner-box-style d-flex justify-content-between align-items-center">
                    <div class="title">
                        <h3>${user.userNickname} 님의 게시글 목록</h3>
                    </div>

                    <div class="events-search-box">
                        <input type="text" class="input-search" id="search" placeholder="작성 카테고리 검색">
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${userBoardList}" var="board">
                        <!-- 작성글 item 시작 -->
                        <div class="col-lg-3 col-sm-6 review_mark_body">
                            <div class="single-groups-card">
                                <div class="groups-image" style="text-align : center;">
                                    <c:set var="image" value="${board.imagesCommunityFileName }"/>
                                    <c:choose>
                                        <c:when test="${image == ''}">
                                            <img src="/images/mypageCommunity/300.png" alt="image">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${board.imagesCommunityUrl }" alt="image">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="groups-content">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="text ms-3">
                                            <h3><a data-bs-toggle="modal"
                                                   data-bs-target="#reviewModal"></a>
                                            </h3>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="text-center">카테고리 : ${board.communityCategory}</div>
                                        <div class="text-center">작성 시간 : ${board.communityDate}</div>
                                        <input type="hidden" value="${board.communityContent}">
                                    </div>
                                    <div class="join-groups-btn">
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reviewModal${board.communityNumber}">
                                            게시글 상세보기
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="reviewModal${board.communityNumber}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">${board.communityCategory}</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                            ${board.communityContent}
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn btn-primary" onclick="location.href='/community/${board.communityCategory}'">작성 게시판 이동</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
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

            <div class="tab-pane fade" id="account" role="tabpanel">
                <div class="row">
                    <div class="col-lg-1 col-md-12">
                    </div>
                    <div class="col-lg-10 col-md-12">
                        <div class="account-setting-form">

                                    <h3>내 댓글</h3>

                            </div>
                                <div id="pagingCommentsBody">
                                    <div class="comment-table table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <button id="btnAllSelect" class="btn btn-primary btn-block" type="button">전체선택</button>
                                                    </th>
                                                    <th>댓글내용</th>
                                                    <th>작성날짜</th>
                                                    <th>작성된 게시글</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${commentList}" var="comment">
                                                <tr>
                                                    <td>
                                                        <div class="comment-checkbox">
                                                            <input type="checkbox" id="comment${comment.commentNumber}" class="checkbox2" value="${comment.commentNumber}"/><label for="comment${comment.commentNumber}"></label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p>
                                                            ${comment.commentContent}
                                                        </p>
                                                    </td>
                                                    <td>${comment.commentDate}</td>
                                                    <td>
                                                        <p>${comment.communityContent}</p>
                                                        <span>${comment.communityWriter}</span>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            <!-- /.card -->
                        </div>
                        <ul id="paginationComments" class="pagination justify-content-center"
                            style="margin:20px 0; cursor: pointer;">
                        </ul>
                    </div>
                    <div class="col-lg-1 col-md-12">
                    </div>
                </div>


            </div>


        </div>
    </div>


</div>
<!--========== Body ==============-->

<!--========== Right SideBar ==============-->
 <%@ include file="../inculde/community/rightSidebar.jsp" %>
<!--========== Right SideBar ==============-->

</div>


<!--========== Footer ==============-->
<%@ include file="../inculde/mypage/footer.jsp" %>
<!--========== Footer ==============-->
<!-- jQuery -->
<script src="/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/adminlte.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
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
    window.onload = function () {
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

    };


</script>
</body>
</html>