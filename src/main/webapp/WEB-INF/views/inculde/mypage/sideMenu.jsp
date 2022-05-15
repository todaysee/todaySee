<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
                    <span class="icon"><i class="flaticon-user"></i></span>
                    <span class="menu-title">내 프로필</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/" class="nav-link">
                    <span class="icon"><i class="flaticon-newspaper"></i></span>
                    <span class="menu-title">홈으로</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/community" class="nav-link">
                    <span class="icon"><i class="flaticon-bell"></i></span>
                    <span class="menu-title">커뮤니티</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/community/chatList" class="nav-link">
                    <span class="icon"><i class="flaticon-comment-1"></i></span>
                    <span class="menu-title">채팅</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage" class="nav-link">
                    <span class="icon"><i class="flaticon-friends"></i></span>
                    <span class="menu-title">나의 메인</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/like" class="nav-link">
                    <span class="icon"><i class="flaticon-team"></i></span>
                    <span class="menu-title">나의 취향</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/board" class="nav-link">
                    <span class="icon"><i class="flaticon-star"></i></span>
                    <span class="menu-title">나의 영상활동</span>
                </a>
            </li>

            <li class="nav-item">
                <a href="register.html" class="nav-link">
                    <span class="icon"><i class="flaticon-information"></i></span>
                    <span class="menu-title">로그 아웃</span>
                </a>
            </li>
        </ul>
    </div>
</div>
