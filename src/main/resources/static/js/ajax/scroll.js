// <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossOrigin="anonymous"></script>
// <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossOrigin="anonymous"
//         referrerpolicy="no-referrer"></script>
// <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossOrigin="anonymous"></script>

$('#scrollTestBody').scroll(function () {
    var scrollT = $(this).scrollTop(); //스크롤바의 상단위치
    var scrollH = $(this).height(); //스크롤바를 갖는 div의 높이
    var contentH = $('.container').height(); //문서 전체 내용을 갖는 div의 높이
    if (scrollT + scrollH + 1 >= contentH) { // 스크롤바가 아래 쪽에 위치할 때
        $('#testScrollNext').trigger('click');
    }
});


let totalPages = 1;

function fetchNotes(startPage) {
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/ajaxPaging",
        data: {
            page: startPage,
            size: 5
        },
        success: function (response) {
            $('#testh1').empty();
            // add table rows
            $.each(response.content, (i, content) => {
                let noteRow = '<div>' +
                    '<h1>' + content.contentNumber + '</h1>' +
                    '<h1>' + content.contentTitle + '</h1>' +
                    '<img src="' + content.contentMainImgLink + '">' +
                    '</div>';
                $('#noteTable tbody').append(noteRow);
            });

            if ($('ul.pagination li').length - 2 != response.totalPages) {
                // build pagination list at the first time loading
                $('ul.pagination').empty();
                buildPagination(response);
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

    var numLinks = 1;

    // print 'previous' link only if not on page one
    var first = '';
    var prev = '';


    // print 'next' link only if not on the last page
    var next = '';
    var last = '';
    if (pageNumber < totalPages) {
        if (pageNumber !== totalPages - 1) {
            next = '<li class="page-item"><a class="page-link" id="testScrollNext" style="display: none">Next ›</a></li>';
        }
    } else {
        next = ''; // on the last page, don't show 'next' link
    }

    var start = pageNumber - (pageNumber % numLinks) + 1;
    var end = start + numLinks - 1;
    end = Math.min(totalPages, end);
    var pagingLink = '';

    for (var i = start; i <= end; i++) {
        if (i == pageNumber + 1) {
            pagingLink += '<li class="page-item active"><a class="page-link" style="display:none;"> ' + i + ' </a></li>'; // no need to create a link to current page
        } else {
            pagingLink += '<li class="page-item"><a class="page-link"> ' + i + ' </a></li>';
        }
    }

    // return the page navigation link
    pagingLink = first + prev + pagingLink + next + last;

    $("ul.pagination").append(pagingLink);
}

$(document).on("click", "ul.pagination li a", function () {
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
        let activeValue = parseInt($("ul.pagination li.active").text());
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
        let activeValue = parseInt($("ul.pagination li.active").text());
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

(function () {
    // get first-page at initial time
    fetchNotes(0);
})();