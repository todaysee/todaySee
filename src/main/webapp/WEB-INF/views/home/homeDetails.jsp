<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Streamlab - Video Streaming HTML5 Template"/>
    <meta name="description" content="Streamlab - Video Streaming HTML5 Template"/>
    <meta name="author" content="StreamLab"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>오늘 이거 볼래? | ${content.contentTitle}</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/images/home/favicon.png">
    <!-- CSS -->
    <link rel="stylesheet" href="/css/home.css"/>

    <!--=========== Star Rating =============-->
    <!-- star css -->
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/css/star-rating.min.css" media="all"
          rel="stylesheet" type="text/css"/>
    <!-- with v4.1.0 Krajee SVG theme is used as default (and must be loaded as below) - include any of the other theme CSS files as mentioned below (and change the theme property of the plugin) -->
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.css"
          media="all" rel="stylesheet" type="text/css"/>
    <!--=========== Star Rating =============-->

    <!-- 추가 CSS -->
    <style>
        /*============================================
        padding - 권소연 추가
        ==============================================*/

        .padding {
            padding: 130px 0px 130px 0px;
        }

        .padding-2 {
            padding: 30px 0px 60px 0px;
        }

        .padding-3 {
            padding: 0px 30px 0px 30px;
        }

        .padding-4 {
            padding: 20px 0px 20px 0px;
        }

        .padding-5 {
            padding: 10px 0px 30px 0px;
            border-bottom: 3px solid var(--primary-color);
        }

        .padding-6 {
            padding: 10px 0px 60px 0px;
        }

        .padding-7 {
            padding: 30px 0px 10px 0px;
        }

        .padding-8 {
            padding: 20px 0px 20px 0px;
            border-bottom: 3px solid var(--primary-color);
        }

        .padding-9 {
            padding: 0% 40%;
        }

        /*============================================
        메인 이미지 - 권소연 추가
        ==============================================*/

        .gen-episode-contain .gen-episode-img img {
            height: 70vh;
        }

        /*============================================
        신고 & 보고싶어요 버튼 - 권소연 추가
        ==============================================*/

        .gen-button-like {
            text-transform: uppercase;
            position: relative;
            width: auto;
            font-weight: 400;
            background: var(--black-color);
            color: var(--white-color);
            font-family: var(--title-fonts);
            font-size: 16px;
            padding: 12px 30px;
            line-height: 2;
            vertical-align: middle;
            border: none;
            display: inline-block;
            overflow: hidden;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
        }

        .gen-button-like:hover,
        .gen-button-like:focus {
            color: var(--white-color);
            background: var(--primarydark-color);
        }

        .gen-button-spo {
            text-transform: uppercase;
            position: relative;
            width: auto;
            font-weight: 400;
            background: var(--black-color);
            color: var(--white-color);
            font-family: var(--title-fonts);
            font-size: 16px;
            padding: 6px 15px;
            line-height: 2;
            vertical-align: middle;
            border: none;
            display: inline-block;
            overflow: hidden;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
        }

        .gen-button-spo:hover,
        .gen-button-spo:focus {
            color: var(--white-color);
            background: var(--primarydark-color);
        }

        /*============================================
        Modal - 권소연 추가
        ==============================================*/

        .modal-content {
            background: var(--dark-color);
        }

        .close {
            color: var(--white-color);
        }

        .modalSelect {
            color: var(--white-color)
        }

        /*============================================
        Report Modal 안의 작성자, 내용 관련 - 권소연 추가
        ==============================================*/

        .gen-extra-report ul {
            margin: 0 0 30px;
            padding: 0;
        }

        .gen-extra-report ul li {
            list-style: none;
            color: var(--secondary-color);
            margin: 0 0 5px;
            font-size: 18px;
        }

        .gen-extra-report ul li span:first-child {
            /*display: inline-block;*/
            width: 25%;
            font-weight: 500;
        }

        .gen-extra-report ul li span:last-child {
            color: var(--white-color);
        }

        .gen-after-report {
            display: flex;
            border-bottom: 3px solid var(--primary-color);
            padding: 0 0 10px 0;
            align-items: flex-end;
            -ms-flex-pack: justify !important;
            justify-content: space-between !important;
        }

        .gen-after-report .gen-extra-data ul {
            margin: 0;
        }

        .gen-after-report .gen-socail-share {
            border-bottom: none;
            padding: 0;
            display: flex;
            text-align: center;
        }

        @media (max-width: 767px) {
            .gen-after-report {
                display: inline-block;
                width: 100%;
            }
        }

        @media (max-width: 767px) {
            .gen-single-movie-info .gen-after-report .gen-socail-share ul {
                margin: 0 0 0 15px;
            }
        }

        @media (max-width: 479px) {
            .gen-single-movie-info .gen-after-report .gen-socail-share {
                margin: 30px 0 0;
                display: inline-block;
                width: 100%;
                text-align: left;
            }

            .gen-single-movie-info .gen-after-report .gen-socail-share ul {
                margin: 15px 0 0 0;
            }
        }

        /*============================================
        Like Modal 안의  - 권소연 추가
        ==============================================*/

        .gen-movie-like .gen-btn-new {
            border-radius: 900px;
            padding: 0;
            width: 5vh;
            height: 5vh;
            opacity: 0;
            display: inline-block;
            line-height: 50px;
            text-align: center;
            cursor: pointer;
        }

        .gen-movie-like .gen-btn-new i {
            margin: 0;
            padding: 0;
        }

        .gen-movie-like .gen-btn-new {
            opacity: 1;
        }

        .gen-btn-new {
            text-transform: uppercase;
            position: relative;
            width: auto;
            font-weight: 400;
            background: var(--black-color);
            color: var(--white-color);
            font-family: var(--title-fonts);
            font-size: 16px;
            padding: 1% 3%;
            line-height: 2;
            vertical-align: middle;
            border: none;
            display: inline-block;
            overflow: hidden;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
        }

        .gen-btn-new:hover,
        .gen-btn-new:focus {
            color: var(--white-color);
            background: var(--primarydark-color);
        }

        .gen-btn {
            text-transform: uppercase;
            position: relative;
            width: auto;
            font-weight: 400;
            background: var(--primary-color);
            color: var(--white-color);
            font-family: var(--title-fonts);
            font-size: 16px;
            padding: 0.5vh 1vh;
            line-height: 2;
            vertical-align: middle;
            border: none;
            display: inline-block;
            overflow: hidden;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
        }

        .gen-btn span {
            z-index: 9;
            position: relative;
        }

        .gen-btn:hover,
        .gen-btn:focus {
            color: var(--white-color);
            background: var(--primarydark-color);
        }

        .gen-btn-like {
            border-radius: 50%;
        }

        .text-new {
            line-height: 50px;
            vertical-align: middle;
        }

        .checkbox2 + label {
            position: relative;
        }

        .checkbox input[type="checkbox"].checkbox2 {
            display: none;
        }

        .checkbox input[type="checkbox"].checkbox2 + label:before { /* 체크박스 배경 */
            display: inline-block;
            content: '';
            width: 1.25em;
            height: 1.25em;
            border: 2px solid #a66;
            background-color: #a00;
            border-radius: 50%;
            margin: 0 5px -6px 0;
        }

        .checkbox input[type="checkbox"].checkbox2 + label:after { /* 체크 마크 */
            position: absolute;
            left: 4px;
            content: '✔'; /* 체크 마크 ASCii 문자 */
            font-size: 1.5em;
            line-height: 0.8;
            color: #a88;
            transition: all .3s;
        }

        [type="checkbox"].checkbox2 + label:after { /* 기본 상태 - 투명에 크기 0 */
            opacity: 0;
            transform: scale(0);
        }

        [type="checkbox"]:checked.checkbox2 + label:after { /* 체크 상태 - 불투명에 크기 1 */
            opacity: 1;
            transform: scale(1);
        }

        /*============================================
        플랫폼  - 권소연 추가
        ==============================================*/

        .gen-socail-share .ott-inner {
            margin: 0 0 0 15px;
            padding: 0;
            display: flex;
        }

        .gen-socail-share .ott-inner li {
            list-style: none;
            margin: 0 15px 0 0;
        }

        .gen-socail-share .ott-inner li:last-child {
            margin-right: 0;
        }

        .gen-socail-share .ott-inner li a {
            display: inline-block;
            font-size: 18px;
            width: 50px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: var(--black-color);
            color: var(--white-color);
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }

        /*============================================
        리뷰 더보기  - 권소연 추가
        ==============================================*/

        .review-more {
            display: none;
        }

    </style>
    <!-- 추가 CSS -->

</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/home/preLoader.jsp" %>
<!--=========== Loader =============-->

<!--========== Header ==============-->
<%@ include file="../inculde/home/navbar.jsp" %>
<!--========== Header ==============-->

<!--========== Body ==============-->
<section class="gen-section-padding-3 gen-single-movie">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-12">
                <div class="gen-single-movie-wrapper style-1">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="col-lg-12">
                                <div id="change" class="gen-episode-contain">
                                    <div class="gentech-tv-show-img-holder">
                                        <div class="gen-episode-img">
                                            <c:if test="${content.contentMainImagesUrl ne 'none Main img'}">
                                                <img src="${content.contentMainImagesUrl}"
                                                     alt="${content.contentTitle}">
                                            </c:if>
                                            <c:if test="${content.contentMainImagesUrl eq 'none Main img'}">
                                                <img src="/images/home/cat.jpg" alt="none Main img">
                                            </c:if>
                                            <div id="noYoutube" class="gen-movie-action">
                                                <a href="#" class="gen-button youtube_btn">
                                                    <i class="fa fa-play"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="gen-single-movie-info">
                                <div class="row">
                                    <div class="col-xl-6 col-lg-6 col-md-6">
                                        <h2 class="gen-title">${content.contentTitle}</h2>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-inline-block">
                                        <div class="gen-movie-action">
                                            <div class="gen-btn-container text-right">
                                                <c:if test="${not empty sessionScope.userNumber}">
                                                    <a type="button" class="gen-button-like gen-button-flat myModalLike"
                                                       data-bs-toggle="modal" data-bs-target="#modalLike">
                                                        <span class="text"><i class="fa fa-heart"></i> 보고싶어요</span>
                                                    </a>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gen-single-meta-holder">
                                    <ul>
                                        <li></li>
                                    </ul>
                                </div>
                                <p>${content.contentInfo}
                                </p>
                                <div class="gen-after-excerpt">
                                    <div class="gen-extra-data">
                                        <ul>
                                            <li><span>장르 :</span>
                                                <c:forEach var="genre" items="${genreList}">
												<span>
                                                        <a href="/search/genres?genreNumber=${genre.genreNumber}">
                                                                ${genre.genreName} </a>
												</span>
                                                </c:forEach>
                                            </li>
                                            <li>
                                                <span>연령등급 :</span>
                                                <span>${content.contentAge}세</span>
                                            </li>
                                            <li><span>영상 시간 :</span>
                                                <span>${content.contentRunningTime}</span>
                                            </li>
                                            <li>
                                                <span>영상 등록 년도 :</span>
                                                <span>${content.contentReleaseDate}년</span>
                                            </li>
                                            <li>
                                                <span>플랫폼 :</span>
                                                <span>
													<div class="gen-socail-share">
														<ul class="ott-inner">
															<c:forEach items="${ottList}" var="ott">
                                                                <li><a href="${ott.ottLink}" class="facebook"><img
                                                                        src="/images/home/${ott.ottName}.png"
                                                                        alt="${ott.ottName}"/></a></li>
                                                            </c:forEach>
														</ul>
													</div>
												</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- 리뷰 -->
                        <div class="col-lg-12">
                            <div class="padding-2">
                                <div class="pm-inner">
                                    <div class="gen-more-like">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12">
                                                <h5 class="gen-more-title">리뷰</h5>
                                            </div>
                                        </div>

                                        <!-- 리뷰 작성 -->
                                        <c:if test="${not empty sessionScope.userNumber}">
                                            <div class="send-item">
                                                <div class="padding-5">
                                                    <form name="comment" id="comment"
                                                          action="/details/${content.contentNumber}" method="post">
                                                        <div class="row">
                                                            <div class="col-xl-1 col-lg-1 col-md-1">
                                                                <c:set var="userProfileYn"
                                                                       value="${user.userProfileYn}"/>
                                                                <c:choose>
                                                                    <c:when test="${userProfileYn eq '0'}">
                                                                        <a><img src="https://t1.daumcdn.net/cfile/tistory/2513B53E55DB206927"
                                                                                class="rounded-circle" alt="image"></a>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:forEach items="${profileImages2}" var="img">
                                                                            <a><img src="${img.imagesUrl}"
                                                                                    class="rounded-circle" alt="image"></a>
                                                                        </c:forEach>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                            <div class="send-content col-xl-3 col-lg-3 col-md-3">
                                                                <h3>
                                                                        ${user.userNickname}
                                                                </h3>
                                                                <span>
																	<input id="reviewRating" name="reviewRating"
                                                                           required class="rating-loading">
																</span>
                                                            </div>
                                                            <div class="text col-xl-7 col-lg-7 col-md-7">
                                                                <textarea class="reviewContent" name="reviewContent"
                                                                          rows="3" cols="60"
                                                                          placeholder="이곳에 감상을 남겨주세요!"></textarea>
                                                            </div>
                                                            <div class="col-xl-1 col-lg-1 col-md-1 checkbox">
                                                                <input type="checkbox" id="spoiler" name="reviewSpoiler"
                                                                       class="checkbox2 reviewSpoiler" value="1"/><label
                                                                    for="spoiler">스포일러</label>
                                                                <div class="gen-btn-container">
                                                                    <input type="submit" value="등록" id="submit"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </c:if>
                                        <!-- 리뷰 작성 -->

                                        <!-- 리뷰 item -->
                                        <c:choose>
                                            <c:when test="${empty reviewList}">
                                                <div class="send-item">
                                                    <div class="padding-4">
                                                        <h3 class="padding-9">리뷰가 없습니다.</h3>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach items="${reviewList}" var="review">
                                                    <div class="send-item review-more">
                                                        <div class="padding-4 moreReview">
                                                            <div class="row">
                                                                <div class="col-xl-1 col-lg-1 col-md-1">
                                                                    <c:choose>
                                                                        <c:when test="${review.userProfileYn eq '0'}">
                                                                            <a><img src="https://t1.daumcdn.net/cfile/tistory/2513B53E55DB206927"
                                                                                    class="rounded-circle" alt="image"></a>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <a><img src="${review.userProfileImg}"
                                                                                    class="rounded-circle" alt="image"></a>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </div>
                                                                <div class="send-content col-xl-3 col-lg-3 col-md-3">
                                                                    <h3>
                                                                            ${review.userName}
                                                                    </h3>
                                                                    <span>${review.reviewDate}</span>
                                                                    &nbsp&nbsp&nbsp&nbsp&nbsp
                                                                    <i class="fa fa-thumbs-up">
                                                                    </i>
                                                                    <span class="like${review.reviewNumber}">${review.reviewLike}</span>
                                                                    <span>
																			<input class="review_rating"
                                                                                   name="reviewRating"
                                                                                   value="${review.reviewRating}"
                                                                                   class="rating-loading">
																		</span>
                                                                </div>
                                                                <div class="text col-xl-8 col-lg-8 col-md-8">
                                                                    <c:if test="${review.reviewSpoiler eq 0}">
                                                                        <p>
                                                                                ${review.reviewContent}
                                                                        </p>
                                                                    </c:if>
                                                                    <c:if test="${review.reviewSpoiler eq 1}">
                                                                        <p id="${review.reviewNumber}">
                                                                            스포일러 댓글입니다.
                                                                            <input type="hidden" class="spoReview"
                                                                                   name="reviewNumber"
                                                                                   value="${review.reviewNumber}"/>
                                                                            <a type="button"
                                                                               class="gen-button-spo showSpo"
                                                                               data-bs-toggle="modal"
                                                                               data-bs-target="#modalReport">
                                                                                <span><i class="fa fa-eye"></i> 스포일러 보기</span>
                                                                            </a>
                                                                        </p>
                                                                    </c:if>
                                                                    <div class="text-right">
                                                                        <div class="gen-btn-container">
                                                                            <c:if test="${review.userNumber eq sessionScope.userNumber}">
                                                                                <a type="button"
                                                                                   class="gen-button-like reviewDeleteBtn">
                                                                                    <span><i class="fa fa-trash"></i> 삭제</span>
                                                                                </a>
                                                                            </c:if>
                                                                            <input type="hidden" class="spoReview"
                                                                                   name="reviewNumber"
                                                                                   value="${review.reviewNumber}"/>
                                                                            <c:if test="${review.userNumber ne sessionScope.userNumber}">
                                                                                <a type="button"
                                                                                   class="gen-button-like reviewLikeUp"
                                                                                   data-bs-toggle="modal"
                                                                                   data-bs-target="#modalReport">
                                                                                    <span><i
                                                                                            class="fa fa-thumbs-up"></i> 마음에들어요</span>
                                                                                </a>
                                                                            </c:if>
                                                                            <input type="hidden" class="spoReview"
                                                                                   name="reviewNumber"
                                                                                   value="${review.reviewNumber}"/>
                                                                            <c:if test="${review.userNumber ne sessionScope.userNumber}">
                                                                                <a type="button"
                                                                                   class="gen-button-like myModal"
                                                                                   data-bs-toggle="modal"
                                                                                   data-bs-target="#modalReport">
                                                                                    <span><i
                                                                                            class="fa fa-exclamation-triangle"></i> 신고</span>
                                                                                </a>
                                                                            </c:if>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>

                                        <!-- 리뷰 item -->

                                        <!-- 더보기 -->
                                        <c:if test="${not empty reviewList}">
                                            <div class="col-lg-12">
                                                <div class="gen-load-more-button">
                                                    <div class="gen-btn-container">
                                                        <a id="reviewMore" class="gen-button gen-button-loadmore"
                                                           href="#">
                                                            <span class="button-text">리뷰 더보기</span>
                                                            <span class="loadmore-icon" style="display: none;"><i
                                                                    class="fa fa-spinner fa-spin"></i></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <!-- 더보기 -->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 리뷰 -->

                        <!-- 재미있게 보신 작품과 비슷해요 -->
                        <c:if test="${not empty sessionScope.userNumber}">
                            <div class="col-lg-12">
                                <div class="padding-2">
                                    <div class="pm-inner">
                                        <div class="gen-more-like">
                                            <div class="row">
                                                <div class="col-xl-6 col-lg-6 col-md-6">
                                                    <h5 class="gen-more-title">재미있게 보신 작품과 비슷해요</h5>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="gen-style-2">
                                                        <div class="owl-carousel owl-loaded owl-drag" data-dots="false"
                                                             data-nav="true" data-desk_num="4"
                                                             data-lap_num="3" data-tab_num="2" data-mob_num="1"
                                                             data-mob_sm="1" data-autoplay="false"
                                                             data-loop="false" data-margin="30">
                                                            <c:forEach items="${RecommendedContentList}" var="list">
                                                                <div class="item">
                                                                    <div
                                                                            class="movie type-movie status-publish has-post-thumbnail hentry movie_genre-action movie_genre-adventure movie_genre-drama">
                                                                        <div class="gen-carousel-movies-style-2 movie-grid style-2">
                                                                            <div class="gen-movie-contain">
                                                                                <div class="gen-movie-img">
                                                                                    <img src="${list.contentMainImagesUrl}"
                                                                                         alt="${list.contentTitle}">
                                                                                    <div class="gen-movie-action">
                                                                                        <a href="/details/${list.contentNumber}"
                                                                                           class="gen-button">
                                                                                            <i class="fa fa-play"></i>
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="gen-info-contain">
                                                                                    <div class="gen-movie-info">
                                                                                        <h3>
                                                                                            <a href="/details/${list.contentNumber}">${list.contentTitle}</a>
                                                                                        </h3>
                                                                                    </div>
                                                                                    <div class="gen-movie-meta-holder">
                                                                                        <ul>
                                                                                            <li>${list.contentRunningTime}</li>
                                                                                            <li>
                                                                                                <c:forEach
                                                                                                        items="${list.contentGenre}"
                                                                                                        var="genre">
                                                                                                    <a href="/search/genres?genreNumber=${genre.genre.genreNumber}"><span>${genre.genre.genreName}</span></a>
                                                                                                </c:forEach>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- #post-## -->
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <!-- 재미있게 보신 작품과 비슷해요 -->

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--========== Body ==============-->


<!--========== Footer ==============-->
<%@ include file="../inculde/home/footer.jsp" %>
<!--========== Footer ==============-->


<!--========== Report Modal ==============-->
<div class="modal fade" id="modalReport" data-backdrop="static" data-keyboard="false" tabindex="-1"
     aria-labelledby="modalReportLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalReportLabel">리뷰 신고하기</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <input type="hidden" id="reportReviewNumber"/>
                    <div class="padding-6">
                        <div class="gen-after-report">
                            <div class="gen-extra-report">
                                <ul>
                                    <li>
                                        <span>리뷰 작성자 :</span>
                                        <span id="reportUser"></span>
                                    </li>
                                    <li>
                                        <span>리뷰 내용 :</span>
                                        <p id="reportReview">
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="padding-7">
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">사유 선택:</label>
                                <select class="modalSelect reportContent" id="message-text">
                                    <option value="스팸홍보/도배글입니다.">스팸홍보/도배글입니다.</option>
                                    <option value="음란물입니다.">음란물입니다.</option>
                                    <option value="불법정보를 포함하고 있습니다.">불법정보를 포함하고 있습니다.</option>
                                    <option value="청소년에게 유해한 내용입니다.">청소년에게 유해한 내용입니다.</option>
                                    <option value="욕설/생명경시/혐오/차별적 표현입니다.">욕설/생명경시/혐오/차별적 표현입니다.</option>
                                    <option value="개인정보 노출 게시물입니다.">개인정보 노출 게시물입니다.</option>
                                    <option value="불쾌한 표현이 있습니다.">불쾌한 표현이 있습니다.</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 ml-auto">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        <button type="button" id="reportInsertReview" class="btn btn-danger">등록</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--========== Report Modal ==============-->


<!--========== Like Modal ==============-->
<div class="modal fade" id="modalLike" data-backdrop="static" data-keyboard="false" tabindex="-1"
     aria-labelledby="modalBookmarkLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalBookmarkLabel">추가할 즐겨찾기 선택</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="padding-8">
                    <form>
                        <div class="row">
                            <div class="col-xl-3 col-lg-3 col-md-3">
                                <span class="text-new">새 즐겨찾기</span>
                            </div>
                            <div class="col-xl-7 col-lg-7 col-md-7">
                                <p class="comment-form-author">
                                    <input type="text" id="insertBookmarkName" placeholder="새 즐겨찾기 이름" required/>
                                </p>
                            </div>
                            <div class="col-xl-2 col-lg-2 col-md-2 gen-movie-like">
                                <a id="bookmarkInsert" class="gen-btn-new"><i class="fa fa-plus"></i></a>
                            </div>
                        </div>
                    </form>
                </div>
                <form>
                    <div class="padding-2">
                        <div id="appendBookmark" class="gen-movie-action">
                            <c:forEach items="${bookmarkList}" var="bookmark">
                                <div class="checkbox">
                                    <input type="checkbox" name="check2" id="bookmark${bookmark.bookmarkNumber}"
                                           value="${bookmark.bookmarkName}" class="checkbox2 bookmark_check">
                                    <label for="bookmark${bookmark.bookmarkNumber}">${bookmark.bookmarkName}</label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="col-md-5 ml-auto">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        <button type="button" id="insertBookmarkContent" class="btn btn-danger">추가</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--========== Like Modal ==============-->

<!-- js-min -->
<script src="/js/home/jquery-3.6.0.min.js"></script>
<script src="/js/home/asyncloader.min.js"></script>
<!-- JS bootstrap -->
<script src="/js/home/bootstrap.min.js"></script>
<!-- owl-carousel -->
<script src="/js/home/owl.carousel.min.js"></script>
<!-- counter-js -->
<script src="/js/home/jquery.waypoints.min.js"></script>
<script src="/js/home/jquery.counterup.min.js"></script>
<!-- popper-js -->
<script src="/js/home/popper.min.js"></script>
<script src="/js/home/swiper-bundle.min.js"></script>
<!-- Iscotop -->
<script src="/js/home/isotope.pkgd.min.js"></script>
<script src="/js/home/jquery.magnific-popup.min.js"></script>
<script src="/js/home/slick.min.js"></script>
<script src="/js/home/streamlab-core.js"></script>
<script src="/js/home/script.js"></script>

<!--========== Star Rating ==============-->
<!-- star js -->
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/js/star-rating.min.js"
        type="text/javascript"></script>
<!-- with v4.1.0 Krajee SVG theme is used as default (and must be loaded as below) - include any of the other theme JS files as mentioned below (and change the theme property of the plugin) -->
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/themes/krajee-svg/theme.js"></script>
<!-- optionally if you need translation for your language then include locale file as mentioned below (replace LANG.js with your own locale file) -->
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-star-rating@4.1.2/js/locales/LANG.js"></script>
<!--========== Star Rating ==============-->
<%-- qr 코드 생성기--%>
<script type="text/javascript" src="/js/qrcode.js"></script>
<!-- 추가 js -->
<script>

    // 상단 이미지 유튜브 링크로 변경
    $('.youtube_btn').click(function () {
        let contentNum = ${content.contentNumber} /* 현재 영상 번호 */
            $.ajax({
                type: "GET",
                url: "/details/Ajax",
                data: {contentNumber: contentNum}, /* 영상번호를 파라메터로 보내기 */
                success: function (result) { // 돌아오는 데이터가 유튜브 링크
                    console.log(result);
                    if (result != "noYoutubeLink") { /* 유튜브 링크가 있을 경우 */
                        $('#change').empty(); /* id=change 아래 요소를 모두 삭제 */
                        $('#change').attr('class', 'gen-video-holder'); /* id=change에 class 추가  */
                        /* 유튜브 링크를 다음 iframe 보여주기 */
                        $('#change').append('<iframe class="youtube" width="100%" height="100%" src="" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
                        $('.youtube').attr('src', result);
                    } else { /* 유튜브 링크가 없을 경우 */
                        $('#noYoutube').empty(); /* id=noYoutube 아래 버튼만 숨김 */
                        /* id=noYoutube 아래에 유튜브 링크가 없음을 1초 보여주고 1초 딜레이 1초 후 사라지게 함*/
                        $('#noYoutube').append('<h3>유튜브 링크가 없습니다.</h3>').fadeIn(1000).delay(1000).fadeOut(1000);
                    }
                },
                error: function (err) {
                    alert('실패!!!!');
                    console.log("ERROR", err);
                }
            }); // ajax end
    }); // youtube button function end

    // 리뷰 별점 - plugin 사용
    $('#reviewRating').rating({
        step: 0.5,
        starCaptions: {
            0.5: '0.5',
            1: '1.0',
            1.5: '1.5',
            2: '2.0',
            2.5: '2.5',
            3: '3.0',
            3.5: '3.5',
            4: '4.0',
            4.5: '4.5',
            5: '5.0'
        }
    });

    // 작성된 리뷰 별점 - plugin 사용
    $('.review_rating').rating("refresh", {
        disabled: true,
        showClear: false,
        displayOnly: true,
        step: 0.5,
        starCaptions: {
            0.5: '0.5',
            1: '1.0',
            1.5: '1.5',
            2: '2.0',
            2.5: '2.5',
            3: '3.0',
            3.5: '3.5',
            4: '4.0',
            4.5: '4.5',
            5: '5.0'
        },
        clearCaption: 'No stars yet'
    });

    // 신고 모달 띄우기
    $('.myModal').on('click', function () {
        let reviewNumber = $(this).prev().val();
        // 해당 댓글 내용, 유저 이름 불러오기 - AJAX
        $.ajax({
            type: "GET",
            url: "/details/spoReviewAjax",
            data: {reviewNumber: reviewNumber},
            success: function (data) {
                // alert("성공!!!");
                console.log(data);
                $('#reportReviewNumber').val(data.reviewNumber);
                $('#reportUser').html(data.userNickname);
                $('#reportReview').html(data.reviewContent);
                $('#modalReport').modal('show');
            },
            error: function (err) {
                alert("에러 발생!!!!");
                console.log("에러 : ", err);
            }
        });
    });

    // 신고 등록
    $('#reportInsertReview').on('click', function () {
        let reviewReportContent = $('.reportContent option:selected').val();
        let reportReviewNumber = $('#reportReviewNumber').val();

        console.log(reviewReportContent);
        $.ajax({
            type: "POST",
            url: "/details/reportInsert",
            data: {
                reviewReportContent: reviewReportContent,
                reportReviewNumber: reportReviewNumber
            },
            success: function (value) {
                // alert('신고 등록 성공!');
                console.log(value);
                location.href = "/details/${content.contentNumber}";
            },
            error: function (err) {
                alert('신고 등록 오류!!');
                console.log("신고 등록 오류 : ", err);
            }
        });

    });

    // 즐겨찾기 모달 띄우기
    $('.myModalLike').on('click', function () {
        $('#modalLike').modal('show');
    });

    // AJAX 새로운 즐겨찾기 추가
    $('#bookmarkInsert').on('click', function () {
        let bookmarkName;
        if ($('#insertBookmarkName').val() === "") {
            alert("즐겨찾기 이름을 입력해주세요!");
            $('#insertBookmarkName').focus();
            return false;
        } else {
            bookmarkName = $('#insertBookmarkName').val();
            $.ajax({
                type: "POST",
                url: "/details/bookmarkInsert",
                data: {
                    bookmarkName: bookmarkName
                },
                datatype: "json",
                success: function (data) {
                    $('#insertBookmarkName').val("");
                    let jsonObj = JSON.stringify(data);
                    let jsondata = JSON.parse(jsonObj);
                    $('#appendBookmark').empty();
                    $.each(jsondata, function (k, v) {
                        console.log(k, v.bookmarkName, v.bookmarkNumber);
                        let checkbox = "<div class='checkbox'>" +
                            "<input type='checkbox' name='check2' id=bookmark" + v.bookmarkNumber + " value=" + v.bookmarkName + " class='checkbox2 bookmark_check'>" +
                            "<label for=bookmark" + v.bookmarkNumber + ">" + v.bookmarkName + "</label>" +
                            "</div>";
                        $('#appendBookmark').append(checkbox);
                    });
                },
                error: function (err) {
                    alert("즐겨찾기 추가 오류!!!");
                    console.log("즐겨찾기 추가 에러 : ", err);
                }
            });
        }
    });

    // 즐겨찾기 선택
    $('#insertBookmarkContent').on('click', function () {
        let bookmarkName = $('.bookmark_check:checked').val();
        let bookmarkNumber = $('.bookmark_check:checked').attr('id');
        bookmarkNumber = bookmarkNumber.replace("bookmark", "");
        let contentNumber = ${content.contentNumber}

            $.ajax({
                type: "POST",
                url: "/details/bookmarkContentInsert",
                data: {
                    bookmarkNumber: bookmarkNumber,
                    bookmarkName: bookmarkName,
                    contentNumber: contentNumber
                },
                success: function (data) {
                    alert('컨텐츠 즐겨찾기 추가 성공!');
                    console.log(data);
                    $('#modalLike').modal('hide');
                },
                error: function (err) {
                    alert("컨텐츠 즐겨찾기 추가 실패!!!");
                    console.log("컨텐츠 즐겨찾기 추가 에러 : ", err);
                }
            });
    });

    // 리뷰 submit Ajax
    $('#submit').on('click', function (e) {
        e.preventDefault();

        let reviewContent = $('.reviewContent').val();
        let reviewSpoiler = 0;
        if ($('.reviewSpoiler').is(':checked')) {
            reviewSpoiler = 1;
        }
        let contentNumber = ${content.contentNumber}
            let
        reviewRating = $('#reviewRating').val();

        if (reviewRating != "") {
            $.ajax({
                type: "POST",
                url: "/details/reviewAjax",
                data: {
                    reviewContent: reviewContent,
                    reviewSpoiler: reviewSpoiler,
                    contentNumber: contentNumber,
                    reviewRating: reviewRating
                },
                success: function (data) {
                    alert("리뷰가 등록되었습니다.");
                    console.log(data);
                    $('.reviewContent').val('');
                    $('.reviewSpoiler').prop("checked", false);
                    location.href = "/details/${content.contentNumber}"
                },
                error: function (err) {
                    alert("서버 문제로 오류가 발생하였습니다.");
                    console.log(err);
                    $('.reviewContent').val('');
                    $('.reviewSpoiler').prop("checked", false);
                }
            });
        } else {
            alert('평점을 남겨주세요!');
        }
    });

    // 스포일러보기
    $('.showSpo').on('click', function () {
        let reviewNumber = $(this).parent().attr('id');
        let btn = "#" + reviewNumber;

        $.ajax({
            type: "GET",
            url: "/details/spoReviewAjax",
            data: {
                reviewNumber: reviewNumber
            },
            success: function (data) {
                console.log(data);
                $(btn).html(data.reviewContent);
            },
            error: function (err) {
                alert('스포일러 보이기 오류!');
                console.log('스포일러 보이기 오류 : ' + err);
            }
        });

    });

    // 리뷰 더보기
    reviewMore();

    function reviewMore() {
        $(".review-more").slice(0, 3).show();
        if ($('.review-more').length > 3) {
            $('#reviewMore').on('click', function (e) {
                e.preventDefault();
                $('.review-more:hidden').slice(0, 3).show();
                if ($('.review-more:hidden').length == 0) {
                    $('#reviewMore').css('display', 'none');
                }
            });
        } else {
            $('#reviewMore').css('display', 'none');
        }
    }

    // 리뷰 마음에들어요 (좋아요 숫자 올리기)
    $('.reviewLikeUp').on('click', function () {
        let reviewNumber = $(this).next().val();

        $.ajax({
            type: "POST",
            url: "/details/reviewLikeUp",
            data: {
                reviewNumber: reviewNumber
            },
            success: function (data) {
                // alert('마음에들어요 성공');
                console.log(data.reviewNumber + "::::" + data.reviewLike);
                let str = '.like' + data.reviewNumber;
                $(str).text(data.reviewLike);
            },
            error: function (err) {
                alert('마음에들어요 오류!!!!');
                console.log("마음에들어요 오류 : ", err);
            }
        });
    });

    // 리뷰 삭제
    $('.reviewDeleteBtn').on('click', function () {
        let reviewNum = $(this).next().val();

        let contentNum =
        ${content.contentNumber}

        if (confirm("리뷰를 삭제하시겠습니까?")) {
            $.ajax({
                type: "POST",
                url: "/details/reviewDelete",
                data: {reviewNumber: reviewNum},
                success: function () {
                    alert('리뷰 삭제 성공!');
                    location.href = "/details/" + contentNum;
                },
                error: function (err) {
                    alert('리뷰 삭제 실패!');
                    console.log('리뷰 삭제 에러 : ', err);
                }
            });
        } else {
            alert('취소되었습니다.');
        }
    });


</script>

</body>

</html>