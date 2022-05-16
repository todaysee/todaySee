<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
    <title>Bootstrap Ajax SpringBoot Pagination</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-8" style="background-color: #e6f9ff; margin: 10px; padding: 10px; border-radius: 5px; margin: auto;">
            <div class="alert alert-warning">
                <h3>Bootstrap + Ajax + SpringBoot Pagination</h3>
            </div>

            <table id="noteTable" class="table table-hover table-sm">
                <thead class="thead-dark">
                <tr>
                    <th width="15px">contentNumber</th>
                    <th>contentTitle</th>
                    <th>contentMainImgLink</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>

            <ul class="pagination justify-content-center" style="margin:20px 0; cursor: pointer;">
            </ul>
        </div>
    </div>
</div>

<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
<%--<script src="table-pagination.js"></script>--%>
<script>
    $(document).ready(function() {
        let totalPages = 1;

        function fetchNotes(startPage) {
            //console.log('startPage: ' +startPage);
            /**
             * get data from Backend's REST API
             */
            $.ajax({
                type : "GET",
                url : "http://localhost:8080/ajaxPaging",
                data: {
                    page: startPage,
                    size: 10
                },
                success: function(response){
                    $('#noteTable tbody').empty();
                    // add table rows
                    $.each(response.content, (i, content) => {
                        let noteRow = '<tr>' +
                            '<td>' + content.contentNumber + '</td>' +
                            '<td>' + content.contentTitle + '</td>' +
                            '<td>' + '<a href =' + content.contentMainImgLink + '>'  + '이미지링크' + '</a>'  +'</td>' +
                            '</tr>';
                        $('#noteTable tbody').append(noteRow);
                    });

                    if ($('ul.pagination li').length - 2 != response.totalPages){
                        // build pagination list at the first time loading
                        $('ul.pagination').empty();
                        buildPagination(response);
                    }
                },
                error : function(e) {
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
                if(pageNumber !== 0) {
                    first = '<li class="page-item"><a class="page-link">« First</a></li>';
                }
                prev = '<li class="page-item"><a class="page-link">‹ Prev</a></li>';
            } else {
                prev = ''; // on the page one, don't show 'previous' link
                first = ''; // nor 'first page' link
            }

            // print 'next' link only if not on the last page
            var next = '';
            var last = '';
            if (pageNumber < totalPages) {
                if(pageNumber !== totalPages - 1) {
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

            $("ul.pagination").append(pagingLink);
        }

        $(document).on("click", "ul.pagination li a", function() {
            var data = $(this).attr('data');
            let val = $(this).text();
            console.log('val: ' + val);

            // click on the NEXT tag
            if(val.toUpperCase() === "« FIRST") {
                let currentActive = $("li.active");
                fetchNotes(0);
                $("li.active").removeClass("active");
                // add .active to next-pagination li
                currentActive.next().addClass("active");
            } else if(val.toUpperCase() === "LAST »") {
                fetchNotes(totalPages - 1);
                $("li.active").removeClass("active");
                // add .active to next-pagination li
                currentActive.next().addClass("active");
            } else if(val.toUpperCase() === "NEXT ›") {
                let activeValue = parseInt($("ul.pagination li.active").text());
                if(activeValue < totalPages){
                    let currentActive = $("li.active");
                    startPage = activeValue;
                    fetchNotes(startPage);
                    // remove .active class for the old li tag
                    $("li.active").removeClass("active");
                    // add .active to next-pagination li
                    currentActive.next().addClass("active");
                }
            } else if(val.toUpperCase() === "‹ PREV") {
                let activeValue = parseInt($("ul.pagination li.active").text());
                if(activeValue > 1) {
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

        (function(){
            // get first-page at initial time
            fetchNotes(0);
        })();
    });
</script>
</body>
</html>



