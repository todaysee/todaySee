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
                <a href="/myPage/like" class="nav-link">
                    <span class="icon"><i class="flaticon-team"></i></span>
                    <span class="menu-title">나의 취향</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/bookMark" class="nav-link">
                    <span class="icon"><i class="flaticon-team"></i></span>
                    <span class="menu-title">나의 북마크</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/review" class="nav-link">
                    <span class="icon"><i class="flaticon-star"></i></span>
                    <span class="menu-title">내 리뷰보기</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="/myPage/list" class="nav-link">
                    <span class="icon"><i class="flaticon-team"></i></span>
                    <span class="menu-title">내 글 보기</span>
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
