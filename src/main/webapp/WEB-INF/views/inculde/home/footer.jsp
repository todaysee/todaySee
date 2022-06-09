<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<footer id="gen-footer">
    <div class="gen-footer-style-1">
        <div class="gen-footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="widget">
                            <div class="row">
                                <div class="col-sm-12">
                                    <img src="/images/home/logo-1.png" class="gen-footer-logo" alt="gen-footer-logo">
                                </div>
                                 <ul class="menu">
                                	<li class="menu-item">이메일 : ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</li>
                                    <li class="menu-item"></li>
                                	<li class="menu-item">이메일 : ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</li>
                                 </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="widget">
                            <h4 class="footer-title">콘텐츠</h4>
                            <div class="menu-explore-container">
                                <ul class="menu">
                                    <li class="menu-item"><a href="/search/genres" aria-current="page">장르</a></li>
                                    <li class="menu-item"></li>
                                    <li class="menu-item"><a href="/search/ott">OTT</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="widget">
		                    <c:if test="${!empty sessionScope.userNumber}">
        	                    <h4 class="footer-title">커뮤니티</h4>
            	                <div class="menu-about-container">
                	                <ul class="menu">
                    	                <li class="menu-item"><a href="/community/genre">장르 카테고리</a></li>
                        	            <li class="menu-item"></li>
                            	        <li class="menu-item"><a href="/community/ott">OTT 카테고리</a></li>
                                	</ul>
                            	</div>	
		                    </c:if>
                        </div>
                    </div>
                    <div class="col-xl-2  col-md-6">
                        <div class="widget">
                            <h4 class="footer-title"></h4>
                            <div class="row">
                                <div class="col-sm-12">
                                    <ul class="menu">
                                    	<c:if test="${empty sessionScope.userNumber}">
                                    		<li class="menu-item"><a href="/login"> 로그인</a></li>
										</c:if>
										<c:if test="${!empty sessionScope.userNumber}">
                                    		<li class="menu-item"><a href="/myPage/profile">마이페이지</a></li>
		                                    <li class="menu-item"></li>
                                    		<li class="menu-item"><a href="/userLogout">로그아웃</a></li>
                                    	</c:if>	
                                	</ul> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gen-copyright-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 align-self-center">
                     <span class="gen-copyright"><a target="_blank" href="#"> 마지막입니다. 위로 올라가기</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer End -->

<!-- Back-to-Top start -->
<div id="back-to-top">
    <a class="top" id="top" href="#top"> <i class="ion-ios-arrow-up"></i> </a>
</div>