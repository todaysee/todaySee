<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Zust - Social Community & Marketplace HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="/images/mypageCommunity/favicon.png">
    <!-- CSS files -->
    <link rel="stylesheet" href="/css/mypageCommunity.css">
    <style>
        .reviewBody { display:none; }
    </style>
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/mypage/preLoader.jsp" %>
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
        <div class="profile-cover-image">
            <img src="/images/mypageCommunity/my-profile-bg.jpg" alt="image">
        </div>
        <div class="events-inner-box-style d-flex justify-content-between align-items-center">
            <div class="title">
                <h3>작성 리뷰 목록</h3>
            </div>

            <div class="events-search-box">
                <input type="text" class="input-search" id="search" placeholder="리뷰 검색하기">
            </div>
        </div>
        <div class="row" id="reviewDiv">
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">김김김</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">김이이</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">Digital Marketing</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">박박김</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">이이이</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">리리리</a>
                        </h3>
                        <p>김</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">크크크</a>
                        </h3>
                        <p>김</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">김이이</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">Digital Marketing</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">박박김</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">이이이</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">리리리</a>
                        </h3>
                        <p>김</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">크크크</a>
                        </h3>
                        <p>김</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">김이이</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">Digital Marketing</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">박박김</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">이이이</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">리리리</a>
                        </h3>
                        <p>김</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">크크크</a>
                        </h3>
                        <p>김</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 reviewBody">
                <div class="single-events-card">
                    <a href="#">
                        <img src="/images/mypageCommunity/events/events-1.jpg" alt="image">
                    </a>
                    <div class="events-content">
                        <span>12:30PM to 02:30PM</span>
                        <h3>
                            <a href="#">김김김</a>
                        </h3>
                        <p>Online</p>

                        <div class="events-footer d-flex justify-content-between align-items-center">
                            <a href="#" class="default-btn">Attend</a>
                            <span>July 30, 2021</span>
                        </div>
                    </div>
                </div>
            </div>


            <a href="#" id="load">Load More</a>

        </div>
    </div>
    <!--========== Body ==============-->
    <!--========== Right SideBar ==============-->
    <%@ include file="../inculde/mypage/rightSidebar.jsp" %>
    <!--========== Right SideBar ==============-->
</div>
<!--========== Body ==============-->

<!--========== Footer ==============-->
<%@ include file="../inculde/mypage/footer.jsp" %>
<!--========== Footer ==============-->

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
    $(document).ready(function () {
        $("#search").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            if(value === ''){
                location.reload();
            }else {
                $(".reviewBody").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            }
        });
        plusReview();
        function plusReview(){
            $(".reviewBody").slice(0, 8).show(); // select the first ten
            $("#load").click(function(e){ // click event for load more
                e.preventDefault();
                $(".reviewBody:hidden").slice(0, 4).show(); // select next 10 hidden divs and show them
                if($(".reviewBody:hidden").length == 0){ // check if any hidden divs still exist
                    alert("전부다 보여짐"); // alert if there are none left
                }
            });
        }
    });
</script>
</body>
</html>