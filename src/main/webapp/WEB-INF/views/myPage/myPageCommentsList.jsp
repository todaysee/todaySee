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
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <style>
        #pagination a {
            display:inline-block;
            margin-right:5px;
            cursor:pointer;
        }
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
        <!-- /.col -->
        <div class="row">
            <div class="col-lg-1 col-md-12">
            </div>
            <div class="col-lg-10 col-md-12">
                <div class="account-setting-form">
                    <h3>내 댓글</h3>
                        <div class="card card-primary card-outline">
                            <div class="card-header">
                                <div class="card-tools">
                                    <div class="input-group input-group-sm">
                                        <input type="text" class="form-control" placeholder="댓글 검색">
                                        <div class="input-group-append">
                                            <div class="btn btn-primary">
                                                <i class="fas fa-search"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card-tools -->
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-0">
                                <div class="mailbox-controls">
                                    <!-- Check all button -->
                                    <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i
                                            class="far fa-square"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm">
                                        <i class="fas fa-sync-alt"></i>
                                    </button>
                                </div>
                                <div class="table-responsive mailbox-messages">
                                    <table class="table table-hover table-striped">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <div class="icheck-primary">
                                                    <input type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                                            <td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> - Trying to find a
                                                solution to
                                                this problem...
                                            </td>
                                            <td class="mailbox-date">5 mins ago</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <!-- /.table -->
                                </div>
                                <div class="table-responsive mailbox-messages">
                                    <table class="table table-hover table-striped">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <div class="icheck-primary">
                                                    <input type="checkbox">
                                                </div>
                                            </td>
                                            <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                                            <td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b> - Trying to find a
                                                solution to
                                                this problem...
                                            </td>
                                            <td class="mailbox-date">5 mins ago</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <!-- /.table -->
                                </div>
                                <!-- /.mail-box-messages -->
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer p-0">
                                <div class="mailbox-controls">
                                    <!-- Check all button -->
                                    <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i
                                            class="far fa-square"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm">
                                        <i class="far fa-trash-alt"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm">
                                        <i class="fas fa-sync-alt"></i>
                                    </button>
                                </div>
                                <ul class="pagination">

                                </ul>
                            </div>
                        </div>
                    <!-- /.card -->
                </div>
            </div>
            <div class="col-lg-1 col-md-12">
            </div>
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
<script src="/js/searchLoadMore.js"></script>
<!-- jQuery -->
<script src="/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/adminlte.min.js"></script>

<!-- Page specific script -->
<script>
    $(function () {
        //Enable check and uncheck all functionality


        pagination();
        jQuery('.pagination li:first-child').addClass("disabled");

        function pagination(){
            var req_num_row=5;
            var $tr=jQuery('tbody tr');
            var total_num_row=$tr.length;
            var num_pages=0;
            if(total_num_row % req_num_row ==0){
                num_pages=total_num_row / req_num_row;
            }
            if(total_num_row % req_num_row >=1){
                num_pages=total_num_row / req_num_row;
                num_pages++;
                num_pages=Math.floor(num_pages++);
            }

            jQuery('.pagination').append("<li><a class=\"prev\">Previous</a></li>");

            for(var i=1; i<=num_pages; i++){
                jQuery('.pagination').append("<li><a>"+i+"</a></li>");
                jQuery('.pagination li:nth-child(2)').addClass("active");
                jQuery('.pagination a').addClass("pagination-link");
            }

            jQuery('.pagination').append("<li><a class=\"next\">Next</a></li>");

            $tr.each(function(i){
                jQuery(this).hide();
                if(i+1 <= req_num_row){
                    $tr.eq(i).show();
                }
            });

            jQuery('.pagination a').click('.pagination-link', function(e){
                e.preventDefault();
                $tr.hide();
                var page=jQuery(this).text();
                var temp=page-1;
                var start=temp*req_num_row;
                var current_link = temp;

                jQuery('.pagination li').removeClass("active");
                jQuery(this).parent().addClass("active");

                for(var i=0; i< req_num_row; i++){
                    $tr.eq(start+i).show();
                }

                if(temp >= 1){
                    jQuery('.pagination li:first-child').removeClass("disabled");
                }
                else {
                    jQuery('.pagination li:first-child').addClass("disabled");
                }

            });

            jQuery('.prev').click(function(e){
                e.preventDefault();
                jQuery('.pagination li:first-child').removeClass("active");
            });

            jQuery('.next').click(function(e){
                e.preventDefault();
                jQuery('.pagination li:last-child').removeClass("active");
            });

        }

        jQuery('document').ready(function(){


        });

    })
</script>
</body>
</html>