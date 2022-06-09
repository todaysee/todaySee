<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>오늘 이거 볼래? | ${user.userNickname}님의 보고싶어요 ${bookmark.bookmarkName}</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/images/home/favicon.png">
    <!-- CSS files -->
    <link rel="stylesheet" href="/css/mypageCommunity.css">
    <!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>

    <!-- 추가 CSS -->
    <style>
        /*==================================
            box안의 상단바 버튼 수정
        ==================================*/
        .events-inner-box-style .bookmarkDateils-box {
            position: relative;
        }

        .bookmarkDateils-box .events-footer .default-btn {
            display: inline-block;
            background-color: var(--main-color);
            color: var(--white-color);
            padding: 5px 20px;
            font-size: 13px;
            border-radius: 5px;
            -webkit-transition: var(--transition);
            transition: var(--transition);
        }

        .bookmarkDateils-box .events-footer .default-btn:hover {
            background-color: var(--optional-color);
        }

        /*==================================
            체크박스 css 추가
        ==================================*/

        .movie-checkbox input[type="checkbox"],
        input[type="radio"] {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
        }

        .movie-checkbox input[type="checkbox"]:hover + label:before,
        input[type="radio"]:hover + label:before {
            border-color: #999;
        }

        .movie-checkbox input[type="checkbox"]:active + label:before,
        input[type="radio"]:active + label:before {
            transition-duration: 0;
            filter: brightness(0.2);
        }

        .movie-checkbox input[type="checkbox"] + label,
        input[type="radio"] + label {
            position: relative;
            padding-left: 26px;
            font-weight: normal;
        }

        .movie-checkbox input[type="checkbox"] + label:before, input[type="checkbox"] + label:after,
        input[type="radio"] + label:before,
        input[type="radio"] + label:after {
            box-sizing: content-box;
            position: absolute;
            content: '';
            display: block;
            left: 0;
        }

        .movie-checkbox input[type="checkbox"] + label:before,
        input[type="radio"] + label:before {
            top: 50%;
            width: 16px;
            height: 16px;
            margin-top: -10px;
            border: 2px solid #d9d9d9;
            text-align: center;
        }

        .movie-checkbox input[type="checkbox"] + label:after,
        input[type="radio"] + label:after {
            background-color: #00bad2;
            top: 50%;
            left: 6px;
            width: 8px;
            height: 8px;
            margin-top: -4px;
            transform: scale(0);
            transform-origin: 50%;
            transition: transform 200ms ease-out;
        }

        .movie-checkbox input[type="radio"]:checked + label:before {
            -moz-animation: borderscale 300ms ease-in;
            -webkit-animation: borderscale 300ms ease-in;
            animation: borderscale 300ms ease-in;
            background-color: #fff;
        }

        .movie-checkbox input[type="radio"]:checked + label:after {
            transform: scale(1);
        }

        .movie-checkbox input[type="radio"] + label:before, input[type="radio"] + label:after {
            border-radius: 50%;
        }

        .movie-checkbox input[type="checkbox"] + label:after {
            background-color: transparent;
            top: 50%;
            left: 5px;
            width: 7px;
            height: 4px;
            margin-top: -5px;
            border-style: solid;
            border-color: #00bad2;
            border-width: 0 0 3px 3px;
            -moz-transform: rotate(-45deg) scale(0);
            -ms-transform: rotate(-45deg) scale(0);
            -webkit-transform: rotate(-45deg) scale(0);
            transform: rotate(-45deg) scale(0);
            -moz-transition: none;
            -o-transition: none;
            -webkit-transition: none;
            transition: none;
        }

        .movie-checkbox input[type="checkbox"]:checked + label:before {
            -moz-animation: borderscale 200ms ease-in;
            -webkit-animation: borderscale 200ms ease-in;
            animation: borderscale 200ms ease-in;
        }

        .movie-checkbox input[type="checkbox"]:checked + label:after {
            content: '';
            -moz-transform: rotate(-45deg) scale(1);
            -ms-transform: rotate(-45deg) scale(1);
            -webkit-transform: rotate(-45deg) scale(1);
            transform: rotate(-45deg) scale(1);
            -moz-transition: -moz-transform 200ms ease-out;
            -o-transition: -o-transform 200ms ease-out;
            -webkit-transition: -webkit-transform 200ms ease-out;
            transition: transform 200ms ease-out;
        }

        /*============================================
        modal input text - 권소연 추가
        ==============================================*/

        input[type="text"] {
            font-family: "Open Sans", "Helvetica Neue", Arial, sans-serif;
            font-weight: normal;
            font-size: 16px;
            line-height: 24px;
            padding: 5px 10px;
            background-color: #fff;
            border: 2px solid #d9d9d9;
        }

        input[type="text"]:focus {
            outline: none;
        }

        input[type="text"]:focus, input[type="text"]:hover {
            border-color: #999;
        }

        /*============================================
        padding - 권소연 추가
        ==============================================*/

        .padding {
            padding: 130px 0px 130px 0px;
        }

        .padding-2 {
            padding: 30px 0px 60px 0px;
        }

        .padding-3 {
            padding: 0px 30px 0px 30px;
        }

        .padding-4 {
            padding: 10px 0px 10px 0px;
			border-bottom: 3px solid var(--paragraph-color);
        }

        .padding-5 {
            padding: 10px 0px 30px 0px;
            border-bottom: 3px solid var(--primary-color);
        }

        .padding-6 {
            padding: 10px 0px 60px 0px;
        }

        .padding-7 {
            padding: 30px 0px 10px 0px;
        }

        .padding-8 {
            padding: 10px 0px 10px 0px;
        }

        .padding-9 {
            border-bottom: 3px solid var(--paragraph-color);
        }


        /*=========================================================
        bookmark update modal on-off chekbox css - 권소연 추가
        =========================================================*/

        .toggle {
            position: relative;
            display: inline-block;
        }

        .toggle input {
            display: none;
        }

        .toggle label {
            display: block;
            width: 48px;
            height: 24px;
            text-indent: -250%; /* 라벨 텍스트 왼쪽으로 이동*/
            user-select: none; /* 라벨 텍스트 선택 차단 */
        }

        .toggle label::before,
        .toggle label::after {
            content: "";
            display: block;
            position: absolute;
            cursor: pointer;
        }

        .toggle label::before { /* 배경 */
            width: 100%;
            height: 100%;
            background-color: #dedede;
            border-radius: 1em;
            -webkit-transition: background-color 0.25s ease;
            transition: background-color 0.25s ease; /* 배경색 애니메이션*/
        }

        .toggle label::after { /* 스위치 */
            top: 0;
            left: 0;
            width: 24px;
            height: 24px;
            border-radius: 50%;
            background-color: #fff;
            box-shadow: 0 0 4px rgba(0, 0, 0, 0.45);
            -webkit-transition: left 0.25s ease;
            transition: left 0.25s ease; /* 스위치 이동 애니메이션 */
        }

        .toggle input:checked + label::before {
            background-color: skyblue; /* 켠 상태 배경색 */
        }

        .toggle input:checked + label::after { /* 켠 상태 스위치 위치 */
            left: 24px;
        }

        /*=========================================================
        bookmark update modal on-off chekbox css - 권소연 추가
        =========================================================*/


        .like-list {
            padding: 0;
            margin-bottom: 0;
        }

        .like-list li {
            list-style-type: none;
            margin-bottom: 5px;
            color: var(--black-color);
            font-size: 14px;
        }

        .like-list li:last-child {
            margin-bottom: 0;
        }

    </style>
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/home/preLoader.jsp"%>
<!--=========== Loader =============-->

<!--========== Body ==============-->
<div class="main-content-wrapper d-flex flex-column">
	<!--========== Header Navbar ==============-->
	<%@ include file="../inculde/mypage/navbar.jsp"%>
	<!--========== Header Navbar ==============-->
	<!--========== SideBar ==============-->
	<%@ include file="../inculde/mypage/sideMenu.jsp"%>
	<!--========== SideBar ==============-->

	<!--========== Body ==============-->
	<div class="content-page-box-area">
		<div class="content-page-box-area">
			<%@ include file="../inculde/mypage/myPageTitleImg.jsp"%>

			<div class="events-inner-box-style d-flex justify-content-between align-items-center">
				<div class="title">
					<h3>${bookmark.bookmarkName}</h3>
				</div>
				<div class="bookmarkDateils-box">
					<div class="events-footer d-flex justify-content-between align-items-center">
						<a href="#" class="default-btn btnListUpdate" data-bs-toggle="modal" data-bs-target="#modalListUpdate">현재 리스트 수정</a>&nbsp
						<a href="#" class="default-btn delete-btn">현재 리스트 삭제</a>&nbsp
						<a href="#" class="default-btn btnContentDelete">선택 영상을 리스트에서 삭제</a>&nbsp
						<a href="#" class="default-btn btnContentUpdate" data-bs-toggle="modal" data-bs-target="#modalListMove">선택 영상을 다른 리스트로 이동</a>&nbsp
					</div>
				</div>
			</div>

			<div class="row">
				<!-- 즐겨찾기에 담긴 컨텐츠 items -->
                <c:forEach items="${contentList}" var="content">
				<div class="col-lg-3 col-md-6">
					<div class="single-events-card">
						<a href="#">
                            <c:if test="${empty content.contentMainImg}">
                                <img src="/images/home/cat.jpg" alt="defaultImage">
                            </c:if>
                            <c:if test="${not empty content.contentMainImg}">
							    <img src="${content.contentMainImg}" alt="${content.contentTitle}">
                            </c:if>
						</a>
						<div class="events-content">
							<div class="row">
								<div class="col-md-6">
									<span>${content.contentAge}</span>
								</div>
								<div class="col-md-2 ms-auto movie-checkbox">
									<input type="checkbox" id="movie${content.bookmarkNumber}" class="checkbox2" value="${content.bookmarkNumber}"/><label for="movie${content.bookmarkNumber}"></label>
								</div>
							</div>
							<h3>
								<a href="/details/${content.contentNumber}">${content.contentTitle}</a>
							</h3>
							<p>${content.contentGenre}</p>

							<div class="events-footer d-flex justify-content-between align-items-center">
                                <input type="hidden" value="${content.bookmarkNumber}">
								<a class="default-btn btnContentDel">리스트에서 삭제</a>
								<span>${content.contentOtt}</span>
							</div>
						</div>
					</div>
				</div>
                </c:forEach>
				<!-- 즐겨찾기에 담긴 컨텐츠 items -->
			</div>


		</div>
	</div>
	<!--========== Body ==============-->

	<!--========== Right SideBar ==============-->
	<%@ include file="../inculde/community/rightSidebar.jsp" %>
	<!--========== Right SideBar ==============-->


</div>
<!--========== Body ==============-->

<!--========== Footer ==============-->
<%@ include file="../inculde/mypage/footer.jsp" %>
<!--========== Footer ==============-->

<!--========== List Update Modal ==============-->
<div class="modal fade" id="modalListUpdate" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="modalListUpdateLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalListUpdateLabel">리스트 수정하기</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="bookmarkUpdateForm" action="/myPage/bookMark/${bookmark.bookmarkNumber}" method="post">
                    <div class="form-group col-md-12 padding-8">
                        <label>즐겨찾기 이름</label>
                        <input type="text" class="form-control" name="bookmarkName" value="${bookmark.bookmarkName}"/>
                    </div>
                    <div class="col-md-6 padding-8">
                        즐겨찾기 공개
                        <div class="toggle">
                            <input type="checkbox" name="bookmarkState" id="bookmarkState" value="1">
                            <label for="bookmarkState"></label>
                        </div>
                    </div>
                    <hr>
                    <div class="col-md-5 ms-auto padding-8">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                        <button type="submit" id="bookmarkUpdate" class="btn btn-primary">수정하기</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<!--========== List Update Modal ==============-->

<!--========== List Movie Update Modal ==============-->
<div class="modal fade" id="modalListMove" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="modalListMoveLable" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalListMoveLable">영상 이동하기</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="padding-8 padding-9">현재 리스트 : ${bookmark.bookmarkName}</div>
                <div class="padding-8">
                    <ul class="like-list">
                        <c:forEach items="${bookmarkList}" var="list">
                            <li><div class="movie-checkbox"><input type="radio" name="bookmark" class="bookmark" id="list${list.bookmarkNumber}" value="${list.bookmarkNumber}"/><label for="list${list.bookmarkNumber}">${list.bookmarkName}</label></div></li>
                        </c:forEach>
                    </ul>
                </div>
                <hr>
                <div class="col-md-5 ms-auto padding-8">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    <button type="button" id="btnMoveContent" class="btn btn-primary">이동하기</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--========== List Movie Update Modal ==============-->

<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>

<!-- 추가 script -->
<script>
    // 즐겨찾기 삭제
    $('.delete-btn').on('click', function () {
        if (confirm('정말 삭제하시겠습니까?')) {

            let bookmarkNum = ${bookmark.bookmarkNumber}

            $.ajax({
                type: "POST",
                url: "/myPage/bookMarkDelete",
                data: {
                    bookmarkNumber : bookmarkNum
                },
                success: function(data){
                    alert('삭제되었습니다.');
                    location.href = "/myPage/bookMark";
                },
                error: function(err){
                    alert('삭제 실패!');
                    console.log("삭제실패 : ", err);
                }
            });

        } else {
            alert('취소되었습니다.');
        }
    });

    // 즐겨찾기 클릭할 경우 즐겨찾기 상태에 따라 체크박스 상태 변경
    $('.btnListUpdate').on('click', function(){
        // alert('ok');
        let bookmarkState = ${bookmark.bookmarkState}

        /* 즐겨찾기 상태가 1일 경우 공개, 0일경우 비공개
        * 즐겨찾기 상태가 1일 경우 체크된 상태여야하고, 0일경우 체크해제된 상태여야함 */
        if(bookmarkState == 1) {
            $('#bookmarkState').prop('checked', true);
        }
    });

    // 해당 영상을 즐겨찾기에서 삭제
    $('.btnContentDel').on('click', function(){
        let num = $(this).prev().val();

        let bookmarkNum = ${bookmark.bookmarkNumber}

        if (confirm('정말 삭제하시겠습니까?')) {
            $.ajax({
                type:"POST",
                url: "/myPage/bookMarkDelContent",
                data: {
                    contentBookmarkNumber : num,
                    bookmarkNumber : bookmarkNum
                },
                success: function(data){
                    location.href = "/myPage/bookMark/" + bookmarkNum;
                    alert('삭제되었습니다.');
                },
                error: function(err){
                    alert('삭제 실패!');
                    console.log('선택영상 삭제 실패 : ', err);
                }
            });

        } else {
            alert('취소되었습니다.');
        }
    });

    // 선택영상을 즐겨찾기에서 삭제
    $('.btnContentDelete').on('click', function(){
        let checkNum = [];
        $('.checkbox2:checked').each(function(){
            checkNum.push($(this).val());
        });
        // alert(checkNum);

        let bookmarkNum = ${bookmark.bookmarkNumber}

        if (confirm('정말 삭제하시겠습니까?')) {
            $.ajax({
                type:"POST",
                url: "/myPage/bookMarkDeleteContent",
                traditional : true, // 배열을 전송할 때 데이터 직렬화하는 옵션 (default : false)
                data: {
                    contentList : checkNum,
                    bookmarkNumber : bookmarkNum
                },
                success: function(data){
                    location.href = "/myPage/bookMark/" + bookmarkNum;
                    alert('삭제되었습니다.');
                },
                error: function(err){
                    alert('삭제 실패!');
                    console.log('선택영상 삭제 실패 : ', err);
                }
            });

        } else {
            alert('취소되었습니다.');
        }
    });

    // 선택영상을 다른 리스트로 이동
    $('#btnMoveContent').on('click', function(){
        let checkNum = [];
        $('.checkbox2:checked').each(function(){
            checkNum.push($(this).val());
        });
        alert(checkNum);

        let bookmark = $('.bookmark:checked').val();
        alert(bookmark);

        let bookmarkNum = ${bookmark.bookmarkNumber}

        $.ajax({
            type: "POST",
            url: "/myPage/bookMarkUpdateContent",
            traditional : true, // 배열을 전송할 때 데이터 직렬화하는 옵션 (default : false)
            data: {
                bookmarkContentNumber : checkNum,
                bookmarkNumber : bookmark
            },
            success: function(data){
                location.href = "/myPage/bookMark/" + bookmarkNum;
                alert('이동 되었습니다.');
            },
            error: function(err){
                alert('이동 실패!!');
                console.log('영상 이동 실패 : ', err);
            }
        });
    });

</script>
</body>
</html>