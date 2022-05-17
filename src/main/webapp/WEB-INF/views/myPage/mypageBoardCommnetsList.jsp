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
        <div class="page-banner-box">
            <h3>Account Setting</h3>
        </div>

        <div class="account-setting-list-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="profile-information-tab" data-bs-toggle="tab"
                       href="#profile-information" role="tab" aria-controls="profile-information">게시글 보기</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" id="account-tab" data-bs-toggle="tab" href="#account" role="tab"
                       aria-controls="account">댓글 보기</a>
                </li>
            </ul>

        </div>

        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="profile-information" role="tabpanel">
                <div class="row" id="reviewBody">

                </div>

                <ul id="paginationBoard" class="pagination justify-content-center"
                    style="margin:20px 0; cursor: pointer;">
                </ul>
            </div>

            <div class="tab-pane fade" id="account" role="tabpanel">
                <div class="row" id="reviewBody2">

                </div>

                <ul id="paginationComments" class="pagination justify-content-center"
                    style="margin:20px 0; cursor: pointer;">
                </ul>

            </div>


        </div>
    </div>


</div>
<!--========== Body ==============-->

<!--========== Right SideBar ==============-->
<%@ include file="../inculde/mypage/rightSidebar.jsp" %>
<!--========== Right SideBar ==============-->

</div>


<!--========== Footer ==============-->
<%@ include file="../inculde/mypage/footer.jsp" %>
<!--========== Footer ==============-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
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
    window.onload = function () {

        let totalPages = 1;
        let totalCommentsPages = 1;

        function fetchNotes(startPage) {
            $.ajax({
                type: "GET",
                url: "http://localhost:8080/ajaxPaging",
                data: {
                    page: startPage,
                    size: 8
                },
                success: function (response) {
                    $('#reviewBody').empty();
                    $.each(response.content, (i, content) => {
                        let reviewRow = '<div class="col-lg-3 col-md-6">' +
                            '<div class="single-events-card">' +
                            '<div class="text-center h2">' +
                            content.contentTitle +
                            '</div>' +
                            '<img src="' + content.contentPosterImgLink + '" alt="image" data-bs-toggle="modal" data-bs-target="#staticBackdrop' + content.contentNumber + '">' +
                            '</div>' +
                            '</div>' +
                            '<div class="modal fade" id="staticBackdrop' + content.contentNumber + '"' + 'data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">' +
                            '<div class="modal-dialog">' +
                            '<div class="modal-content">' +
                            '<div class="modal-header">' +
                            '<h5 class="modal-title" id="staticBackdropLabel">' + content.contentTitle + '</h5>' +
                            '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>' +
                            '</div>' +
                            '<div class="modal-body">' +
                            '<img src="' + content.contentPosterImgLink + '" alt="image" data-bs-toggle="modal" data-bs-target="#staticBackdrop">' +
                            '</div>' +
                            '<div class="modal-footer">' +
                            '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>' +
                            '<button type="button" class="btn btn-primary">Understood</button>' +
                            '</div>' +
                            '</div>' +
                            '</div>' +
                            '</div>';
                        $('#reviewBody').append(reviewRow);
                    });

                    if ($('ul#paginationBoard li').length - 2 != response.totalPages) {
                        // build pagination list at the first time loading
                        $('ul#paginationBoard').empty();
                        buildPagination(response);
                    }
                },
                error: function (e) {
                    alert("ERROR: ", e);
                    console.log("ERROR: ", e);
                }
            });
        }

        function fetchComments(startPage) {
            $.ajax({
                type: "GET",
                url: "http://localhost:8080/ajaxPaging",
                data: {
                    page: startPage,
                    size: 4
                },
                success: function (response) {
                    $('#reviewBody2').empty();
                    $.each(response.content, (i, content) => {
                        let reviewRow = '<div class="col-lg-3 col-md-6">' +
                            '<div class="single-events-card">' +
                            '<div class="text-center h2">' +
                            content.contentTitle +
                            '</div>' +
                            '<img src="' + content.contentPosterImgLink + '" alt="image" data-bs-toggle="modal" data-bs-target="#staticBackdrop' + content.contentNumber + '">' +
                            '</div>' +
                            '</div>' +
                            '<div class="modal fade" id="staticBackdrop' + content.contentNumber + '"' + 'data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">' +
                            '<div class="modal-dialog">' +
                            '<div class="modal-content">' +
                            '<div class="modal-header">' +
                            '<h5 class="modal-title" id="staticBackdropLabel">' + content.contentTitle + '</h5>' +
                            '<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>' +
                            '</div>' +
                            '<div class="modal-body">' +
                            '<img src="' + content.contentPosterImgLink + '" alt="image" data-bs-toggle="modal" data-bs-target="#staticBackdrop">' +
                            '</div>' +
                            '<div class="modal-footer">' +
                            '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>' +
                            '<button type="button" class="btn btn-primary">Understood</button>' +
                            '</div>' +
                            '</div>' +
                            '</div>' +
                            '</div>';
                        $('#reviewBody2').append(reviewRow);
                    });

                    if ($('ul#paginationComments li').length - 2 != response.totalPages) {
                        // build pagination list at the first time loading
                        $('ul#paginationComments').empty();
						buildPaginationComments(response);
                    }
                },
                error: function (e) {
                    alert("ERROR: ", e);
                    console.log("ERROR: ", e);
                }
            });
        }

        function buildPagination(response) {
            totalPages = response.totalPages;

            var pageNumber = response.pageable.pageNumber;

            var numLinks = 10;

            // print 'previous' link only if not on page one
            var first = '';
            var prev = '';
            if (pageNumber > 0) {
                if (pageNumber !== 0) {
                    first = '<li class="page-item"><a class="page-link">« First</a></li>';
                }
                prev = '<li class="page-item"><a class="page-link">‹ Prev</a></li>';
            } else {
                prev = '<li class="page-item disabled"><a class="page-link">‹ Prev</a></li>'; // on the page one, don't show 'previous' link
                first = '<li class="page-item disabled"><a class="page-link">« First</a></li>'; // nor 'first page' link
            }

            // print 'next' link only if not on the last page
            var next = '';
            var last = '';
            if (pageNumber < totalPages) {
                if (pageNumber !== totalPages - 1) {
                    next = '<li class="page-item"><a class="page-link">Next ›</a></li>';
                    last = '<li class="page-item"><a class="page-link">Last »</a></li>';
                }
            } else {
                next = ''; // on the last page, don't show 'next' link
                last = ''; // nor 'last page' link
            }

            var start = pageNumber - (pageNumber % numLinks) + 1;
            var end = start + numLinks - 1;
            end = Math.min(totalPages, end);
            var pagingLink = '';

            for (var i = start; i <= end; i++) {
                if (i == pageNumber + 1) {
                    pagingLink += '<li class="page-item active"><a class="page-link"> ' + i + ' </a></li>'; // no need to create a link to current page
                } else {
                    pagingLink += '<li class="page-item"><a class="page-link"> ' + i + ' </a></li>';
                }
            }

            // return the page navigation link
            pagingLink = first + prev + pagingLink + next + last;

            $("ul#paginationBoard").append(pagingLink);
        }

		function buildPaginationComments(response) {
			totalCommentsPages = response.totalCommentsPages;

			var pageNumber = response.pageable.pageNumber;

			var numLinks = 10;

			// print 'previous' link only if not on page one
			var first = '';
			var prev = '';
			if (pageNumber > 0) {
				if (pageNumber !== 0) {
					first = '<li class="page-item"><a class="page-link">« First</a></li>';
				}
				prev = '<li class="page-item"><a class="page-link">‹ Prev</a></li>';
			} else {
				prev = '<li class="page-item disabled"><a class="page-link">‹ Prev</a></li>'; // on the page one, don't show 'previous' link
				first = '<li class="page-item disabled"><a class="page-link">« First</a></li>'; // nor 'first page' link
			}

			// print 'next' link only if not on the last page
			var next = '';
			var last = '';
			if (pageNumber < totalPages) {
				if (pageNumber !== totalPages - 1) {
					next = '<li class="page-item"><a class="page-link">Next ›</a></li>';
					last = '<li class="page-item"><a class="page-link">Last »</a></li>';
				}
			} else {
				next = ''; // on the last page, don't show 'next' link
				last = ''; // nor 'last page' link
			}

			var start = pageNumber - (pageNumber % numLinks) + 1;
			var end = start + numLinks - 1;
			end = Math.min(totalPages, end);
			var pagingLink = '';

			for (var i = start; i <= end; i++) {
				if (i == pageNumber + 1) {
					pagingLink += '<li class="page-item active"><a class="page-link"> ' + i + ' </a></li>'; // no need to create a link to current page
				} else {
					pagingLink += '<li class="page-item"><a class="page-link"> ' + i + ' </a></li>';
				}
			}

			// return the page navigation link
			pagingLink = first + prev + pagingLink + next + last;

			$("ul#paginationComments").append(pagingLink);
		}

        $(document).on("click", "ul#paginationBoard li a", function () {
            var data = $(this).attr('data');
            let val = $(this).text();
            console.log('val: ' + val);

            // click on the NEXT tag
            if (val.toUpperCase() === "« FIRST") {
                let currentActive = $("li.active");
                fetchNotes(0);
                $("li.active").removeClass("active");
                // add .active to next-pagination li
                currentActive.next().addClass("active");
            } else if (val.toUpperCase() === "LAST »") {
                fetchNotes(totalPages - 1);
                $("li.active").removeClass("active");
                // add .active to next-pagination li
                currentActive.next().addClass("active");
            } else if (val.toUpperCase() === "NEXT ›") {
                let activeValue = parseInt($("ul#paginationBoard li.active").text());
                if (activeValue < totalPages) {
                    let currentActive = $("li.active");
                    startPage = activeValue;
                    fetchNotes(startPage);
                    // remove .active class for the old li tag
                    $("li.active").removeClass("active");
                    // add .active to next-pagination li
                    currentActive.next().addClass("active");
                }
            } else if (val.toUpperCase() === "‹ PREV") {
                let activeValue = parseInt($("ul#paginationBoard li.active").text());
                if (activeValue > 1) {
                    // get the previous page
                    startPage = activeValue - 2;
                    fetchNotes(startPage);
                    let currentActive = $("li.active");
                    currentActive.removeClass("active");
                    // add .active to previous-pagination li
                    currentActive.prev().addClass("active");
                }
            } else {
                startPage = parseInt(val - 1);
                fetchNotes(startPage);
                // add focus to the li tag
                $("li.active").removeClass("active");
                $(this).parent().addClass("active");
                //$(this).addClass("active");
            }
        });

		$(document).on("click", "ul#paginationComments li a", function () {
			var data = $(this).attr('data');
			let val = $(this).text();
			console.log('val: ' + val);

			// click on the NEXT tag
			if (val.toUpperCase() === "« FIRST") {
				let currentActive = $("li.active");
				fetchComments(0);
				$("li.active").removeClass("active");
				// add .active to next-pagination li
				currentActive.next().addClass("active");
			} else if (val.toUpperCase() === "LAST »") {
				fetchComments(totalPages - 1);
				$("li.active").removeClass("active");
				// add .active to next-pagination li
				currentActive.next().addClass("active");
			} else if (val.toUpperCase() === "NEXT ›") {
				let activeValue = parseInt($("ul#paginationComments li.active").text());
				if (activeValue < totalPages) {
					let currentActive = $("li.active");
					startPage = activeValue;
					fetchComments(startPage);
					// remove .active class for the old li tag
					$("li.active").removeClass("active");
					// add .active to next-pagination li
					currentActive.next().addClass("active");
				}
			} else if (val.toUpperCase() === "‹ PREV") {
				let activeValue = parseInt($("ul#paginationComments li.active").text());
				if (activeValue > 1) {
					// get the previous page
					startPage = activeValue - 2;
					fetchComments(startPage);
					let currentActive = $("li.active");
					currentActive.removeClass("active");
					// add .active to previous-pagination li
					currentActive.prev().addClass("active");
				}
			} else {
				startPage = parseInt(val - 1);
				fetchComments(startPage);
				// add focus to the li tag
				$("li.active").removeClass("active");
				$(this).parent().addClass("active");
				//$(this).addClass("active");
			}
		});


		(function () {
            // get first-page at initial time
            fetchNotes(0);
			fetchComments(0);
        })();
    };


</script>
</body>
</html>