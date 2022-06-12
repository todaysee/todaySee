<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<style>
    .white_name{
        color: white;
    }
</style>

<div class="navbar-area">
    <div class="main-responsive-nav">
        <div class="main-responsive-menu">
            <div class="responsive-burger-menu d-lg-none d-block">
                <span class="top-bar"></span>
                <span class="middle-bar"></span>
                <span class="bottom-bar"></span>
            </div>
        </div>
    </div>

    <div class="main-navbar">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="/" class="navbar-brand d-flex align-items-center">
                <img src="/images/home/logo-1.png" style="height: 50px" alt="image">
            </a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="navbar-burger-menu" style="margin-right: 90%">
                    <span class="top-bar"></span>
                    <span class="middle-bar"></span>
                    <span class="bottom-bar"></span>
                </div>

                <div class="others-options d-flex align-items-center">
                    <div class="option-item">
                        <div class="profile-nav-item">
                            <div class="menu-profile">
                                <c:set var="userProfileYn" value="${user.userProfileYn}"/>
                                <c:choose>
                                    <c:when test="${userProfileYn eq '0'}">
                                        <img src="https://t1.daumcdn.net/cfile/tistory/2513B53E55DB206927"
                                             class="rounded-circle" alt="image">
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach items="${profileImages}" var="img">
                                            <img src="${img.imagesUrl}"
                                                 class="rounded-circle"
                                                 alt="image">
                                        </c:forEach>
                                    </c:otherwise>
                                 </c:choose>
                                <span class="white_name">${user.userNickname}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>