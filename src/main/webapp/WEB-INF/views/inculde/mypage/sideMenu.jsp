<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<div class="sidemenu-area">
    <div class="responsive-burger-menu d-lg-none d-block">
        <span class="top-bar"></span>
        <span class="middle-bar"></span>
        <span class="bottom-bar"></span>
    </div>

    <div class="sidemenu-body">
        <ul class="sidemenu-nav metisMenu h-100" id="sidemenu-nav" data-simplebar>
            <li class="nav-item">
                <a href="/myPage/profile" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-user"></i></span>
                    <span class="menu-title">내 프로필</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/like" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-following"></i></span>
                    <span class="menu-title">내 취향</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/bookMark" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-star"></i></span>
                    <span class="menu-title">내 북마크</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/review" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-film"></i></span>
                    <span class="menu-title">내 리뷰보기</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/list" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-search-alt"></i></span>
                    <span class="menu-title">내 글 보기</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/community" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-users-alt"></i></span>
                    <span class="menu-title">커뮤니티</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/community/chatList" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-paper-plane"></i></span>
                    <span class="menu-title">채팅방</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/userLogout" class="nav-link">
                    <span class="icon"><i class="fi fi-rr-cross"></i></span>
                    <span class="menu-title">로그 아웃</span>
                </a>
            </li>
            <c:if test="${user.userAdmin eq '1'}">
                <li class="nav-item">
                    <a href="/admin" class="nav-link">
                        <span class="icon"><i class="fi fi-rr-settings"></i></span>
                        <span class="menu-title">관리자 페이지</span>
                    </a>
                </li>
            </c:if>
        </ul>
    </div>
</div>
