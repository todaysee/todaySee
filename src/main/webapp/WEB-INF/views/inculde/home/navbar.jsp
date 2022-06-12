<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<header id="gen-header" class="gen-header-style-1 gen-has-sticky">
    <div class="gen-bottom-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="/">
                            <img class="img-fluid logo" src="/images/home/logo-1.png" alt="streamlab-image">
                        </a>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <div id="gen-menu-contain" class="gen-menu-contain">
                                <ul id="gen-main-menu" class="navbar-nav ml-auto">
                                    <li class="menu-item active">
                                        <a href="/" aria-current="page">홈</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/search/genres">장르</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/search/ott">OTT</a>
                                    </li>
                                    <c:choose>
                                        <c:when test="${sessionScope.userNumber eq null}">
                                        </c:when>
                                        <c:otherwise>
                                            <li class="menu-item">
                                                <a href="/community">커뮤니티</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="/community/chatList">채팅</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </div>
                        </div>
                        <div class="gen-header-info-box">
                            <div class="gen-menu-search-block">
                                <a href="#" id="gen-seacrh-btn"><i class="fa fa-search"></i></a>
                                <%--                                <a href="/javascript:void(0)" id="gen-seacrh-btn"><i class="fa fa-search"></i></a>--%>
                                <div class="gen-search-form">
                                    <form role="search" method="get" class="search-form" action="/api/movie/search">
                                        <label>
                                            <span class="screen-reader-text"></span>
                                            <input type="search" name="query" class="search-field" placeholder="영상 검색">
                                        </label>
                                        <button type="submit" class="search-submit"><span
                                                class="screen-reader-text"></span></button>
                                    </form>
                                </div>
                            </div>

                            <ul id="gen-main-menu" class="navbar-nav ml-auto">
                                <c:choose>
                                    <c:when test="${sessionScope.userNumber eq null}">
                                        <li class="menu-item">
                                            <a href="/login">로그인</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="/signUp">회원가입</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="gen-account-holder">
                                            <c:set var="profileImg" value="${profileImages}"/>
                                            <c:choose>
                                                <c:when test="${profileImg eq null}">
                                                    <a href="/userCheck" id="gen-user-btn">
                                                        <img src="https://t1.daumcdn.net/cfile/tistory/2513B53E55DB206927"
                                                             class="rounded-circle" alt="image">
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="/userCheck" id="gen-user-btn">
                                                        <img src="${profileImages}" class="rounded-circle" alt="image">
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <c:if test="${sessionScope.admin == 1}">
                                            <li class="menu-item">
                                                <a href="/admin">관리페이지</a>
                                            </li>
                                        </c:if>
                                        <li class="menu-item">
                                            <a href="/userLogout">로그아웃</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-bars"></i>
                        </button>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>