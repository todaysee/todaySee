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
            <a href="index.html" class="navbar-brand d-flex align-items-center">
                <img src="/images/mypageCommunity/logo.png" alt="image">
            </a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="navbar-burger-menu m-auto">
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
                                            <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile2.uf.tistory.com%2Fimage%2F2672F24D565C2ED7144C63"
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
                                    <span class="white_name">${user.userName}</span>
                                </div>
                            <div class="dropdown-menu">
                                <div class="profile-header">
                                    <h3>${user.userNickname}</h3>
                                    <a href="${user.userEmail}">${user.userEmail}</a>
                                </div>
                                <ul class="profile-body">
                                    <li><i class="flaticon-user"></i> <a href="my-profile.html">My Profile</a></li>
                                    <li><i class="flaticon-settings"></i> <a href="setting.html">Setting</a></li>
                                    <li><i class="flaticon-privacy"></i> <a href="privacy.html">Privacy</a></li>
                                    <li><i class="flaticon-information"></i> <a href="help-and-support.html">Help & Support</a></li>
                                    <li><i class="flaticon-logout"></i> <a href="index.html">Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>