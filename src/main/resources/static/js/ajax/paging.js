// <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossOrigin="anonymous"></script>
// <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossOrigin="anonymous"
//         referrerpolicy="no-referrer"></script>
// <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossOrigin="anonymous"></script>



let totalPages = 1;

function fetchNotes(startPage) {
    $.ajax({
        type : "GET",
        url : "/ajaxPaging", // AjaxRestController 컨트롤러에 요청을 보낸다.
        data: {
            page: startPage,
            size: 10
        },
        success: function(response){
            $('#noteTable tbody').empty(); // 페이징을 하기위한 위치의 자손들을 비워놈
            // 반복을 돌릴 것의 디자인
            $.each(response.content, (i, content) => {
                let noteRow = '<tr>' +
                    '<td>' + content.content_number + '</td>' +
                    '<td>' + content.content_title + '</td>' +
                    '<td>' + '<a href =' + content.content_main_images_url + '>'  + '이미지링크' + '</a>'  +'</td>' +
                    '</tr>';
                $('#noteTable tbody').append(noteRow); // 자손 추가
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