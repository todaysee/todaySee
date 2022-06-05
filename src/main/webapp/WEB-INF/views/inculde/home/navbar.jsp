<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
                                        <a href="#" aria-current="page">홈</a>
                                        &nbsp;
                                        &#124;
                                    </li>
                                    <li class="menu-item">
                                        <a href="/search/genres">콘텐츠</a>
                                        &nbsp;
                                        &#124;
                                    </li>
                                    <li class="menu-item">
                                        <a href="/community">커뮤니티</a>
                                        &nbsp;
                                        &#124;
                                    </li>
                                    <li class="menu-item">
                                        <a href="/community/chatList">채팅</a>
                                        &nbsp;
                                        &#124;
                                    </li>
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
                                            <input type="search" name="query" class="search-field" placeholder="Search …">
                                        </label>
                                        <button type="submit" class="search-submit"><span
                                                class="screen-reader-text"></span></button>
                                    </form>
                                </div>
                            </div>
                            <div class="gen-account-holder">
                                <a href="/myPage/profile" id="gen-user-btn"><i class="fa fa-user"></i></a>
                                <div class="gen-account-menu">
                                    <ul class="gen-account-menu">
                                        <!-- Pms Menu -->
                                        <li>
                                            <a href="/log-in.html"><i class="fas fa-sign-in-alt"></i>
                                                login </a>
                                        </li>
                                        <li>
                                            <a href="/register.html"><i class="fa fa-user"></i>
                                                Register </a>
                                        </li>
                                        <!-- Library Menu -->
                                        <li>
                                            <a href="/library.html">
                                                <i class="fa fa-indent"></i>
                                                Library </a>
                                        </li>
                                        <li>
                                            <a href="/library.html"><i class="fa fa-list"></i>
                                                Movie Playlist </a>
                                        </li>
                                        <li>
                                            <a href="/library.html"><i class="fa fa-list"></i>
                                                Tv Show Playlist </a>
                                        </li>
                                        <li>
                                            <a href="/library.html"><i class="fa fa-list"></i>
                                                Video Playlist </a>
                                        </li>
                                        <li>
                                            <a href="/upload-video.html"> <i class="fa fa-upload"></i>
                                                Upload Video </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
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