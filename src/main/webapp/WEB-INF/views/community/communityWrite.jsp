<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Links of CSS files -->
    <link rel="stylesheet" href="/css/mypageCommunity.css">
    <link rel="stylesheet" href="../css/mypageCommunity/communityIndex.css">

    <!-- js files -->
    <script src="../js/mypageCommunity/communityIndex.js"></script>
    <!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>

    <style type="text/css">
        #imagesCommunityFile {
            display: none;
        }

        .nickname {
            font-weight: bold;
        }

        .comments {
            padding: 1%;
        }

        .commentsbox {
            width: 90%;
        }

        .commentsbtn {
            background-color: #3644D9;
            color: white;
            border-radius: 20%;
            height: 50%;
        }

    </style>

    <title>오늘 이거 볼래 ? | 커뮤니티 글쓰기 </title>

    <link rel="shortcut icon" href="/images/home/favicon.png">
</head>


<body>


<!-- Start Preloader Area -->
<%@ include file="../inculde/home/preLoader.jsp" %>


<!-- Start Main Content Wrapper Area -->
<div class="main-content-wrapper d-flex flex-column">

    <!-- Start Navbar Area -->
    <%@ include file="../inculde/mypage/navbar.jsp" %>

    <!-- Start Sidemenu Area -->
    <%@ include file="../inculde/mypage/sideMenu.jsp" %>


    <!-- Start Content Page Box Area -->
    <div class="content-page-box-area">
        <%@ include file="../inculde/mypage/myPageTitleImg.jsp" %>
        <div class="row">
            <div class="col-lg-6 col-md-12 square">
                <div class="news-feed-area">
                    <div
                            class="events-inner-box-style justify-content-between align-items-center">

                        <div class="events-search-box search-test">
                            <form>
                                <input type="text" class="input-search"
                                       placeholder="검색어를 입력하세요.">
                                <button type="button">
                                    <i class="ri-search-line"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                    <div class="news-feed news-feed-form">
                        <h3 class="news-feed-title">글쓰기</h3>
                        <form id="uploadForm">
                            <input type="hidden" name="communityCategory" value="${category}">
                            <input type="hidden" name="userNumber" value="${sessionScope.userNumber}">
                            <div class="form-group">
									<textarea class="form-control"
                                              placeholder="내용을 적어주세요." name="communityContent"></textarea>
                            </div>

                            <ul class="button-group d-flex justify-content-between align-items-center">
                                <li class="photo-btn">
                                    <button type="button" id="imagesCommunityFileUploadButton">
                                        <i class="flaticon-gallery"></i> 사진
                                    </button>
                                    <div id="fileName">
                                        첨부파일 없음
                                    </div>
                                    <input type="file" id="imagesCommunityFile" name="imagesCommunityFile"
                                           onchange="changeValue(this)" accept=".gif, .jpg, .png, .jpeg">
                                </li>
                                <li class="post-btn">
                                    <button type="button" value="작성" id="uploadBtn">
                                </li>
                            </ul>
                        </form>
                    </div>
                    <c:forEach items="${communityBoardList}" var="board">
                        <div class="news-feed news-feed-post">
                            <div class="post-header d-flex justify-content-between align-items-center">
                                <div class="image">
                                    <img src="/images/mypageCommunity/user/user-35.jpg" class="rounded-circle"
                                         alt="image">
                                </div>
                                <div class="info ms-3">
                                    <span class="name community_title"><a
                                            href="my-profile.html">${board.communityCategory}</a></span>
                                    <div class="row">
                                        <span class="small-text user_name col-md-9"><a
                                                href="#">${board.user.userNickname}</a></span>
                                        <span class="small-text col-md-3 write_date"><a
                                                href="#">${board.communityDate}</a></span>
                                    </div>
                                </div>
                            </div>

                            <div class="post-body">
                                <p>${board.communityContent}</p>
                                <div class="post-image">
                                    <img src="${board.imagesCommunityUrl }" alt="image">
                                </div>
                                <ul class="post-meta-wrap d-flex justify-content-between align-items-center ulTag">
                                    <li class="post-react">
                                        <button class="community_like">
                                            <i class="flaticon-like"></i><span>Like</span> <span class="number LikeCount">${board.communityLike } </span>
                                        </button>
                                    </li>
                                    <li class="post-comment"><i
                                            class="flaticon-comment"></i><span>Comment</span> <span class="number commentCount">${fn:length(board.comments)} </span></li>
                                    <li class="post-share"><a href="#"><i class="flaticon-share"></i><span>Share</span>
                                        <span class="number">0 </span></a></li>
                                    <li><a type="button" class="gen-button-like myModal" data-bs-toggle="modal"
                                           data-bs-target="#modalReport"> <span><i
                                            class="fa fa-exclamation-triangle"></i>신고</span>
                                    </a></li>
                                </ul>
                                <div class="comments">
	                                <c:forEach items="${board.comments }" var="comment">
	                                    <div class="nickname">${comment.userVO.userNickname}</div>
	                                    <div class="comments_content">${comment.commentsContent }</div>
	                                </c:forEach>
                                </div>

                                <form class="d-flex align-items-center">
                                    <input type="hidden" class="communityNumber" value="${board.communityNumber }"/>
                                    <input type="hidden" class="userNumber" value="${sessionScope.userNumber }"/>
                                    <input type="hidden" class="userNickname" value="${sessionScope.userNickname}"/>
                                    <input type="text" class="form-control commentsbox" id="commentsbox"
                                           placeholder="댓글을 적어주세요.">
                                    <button type="button" class="send-btn d-inline-block commentsbtn">작성</button>
                                </form>

                            </div>
                        </div>
                    </c:forEach>
                    <div class="load-more-posts-btn">
                        <a href="#"><i class="flaticon-loading"></i> Load More Posts</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--========== Report Modal ==============-->
    <div class="modal fade" id="modalReport" data-backdrop="static"
         data-keyboard="false" tabindex="-1"
         aria-labelledby="modalReportLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalReportLabel">리뷰 신고하기</h5>

                </div>
                <div class="modal-body">
                    <form>
                        <div class="padding-6">
                            <div class="gen-after-report">
                                <div class="gen-extra-report">
                                    <ul>
                                        <li><span>리뷰 작성자 :</span> <span>English</span></li>
                                        <li><span>리뷰 내용 :</span>
                                            <p>Streamlab is a long established fact that a reader
                                                will be distracted by the readable content of a page when
                                                Streamlab at its layout. The point of using Lorem Streamlab
                                                is that it has a more-or-less normal distribution of
                                                Streamlab as opposed Streamlab.</p></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="padding-7">
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">사유
                                        선택:</label> <select class="modalSelect">
                                    <option>스팸홍보/도배글입니다.</option>
                                    <option>음란물입니다.</option>
                                    <option>불법정보를 포함하고 있습니다.</option>
                                    <option>청소년에게 유해한 내용입니다.</option>
                                    <option>욕설/생명경시/혐오/차별적 표현입니다.</option>
                                    <option>개인정보 노출 게시물입니다.</option>
                                    <option>불쾌한 표현이 있습니다.</option>
                                </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 ml-auto">
                            <button type="button" class="btn btn-secondary"
                                    data-dismiss="modal">닫기
                            </button>
                            <button type="button" class="btn btn-danger">등록</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--========== Report Modal ==============-->

    <!-- End Content Page Box Area -->

    <!-- Start Right Sidebar Area -->
    <%@ include file="../inculde/community/rightSidebar.jsp" %>


</div>
<!-- End Main Content Wrapper Area -->

<!-- Start Copyright Area -->
<%@ include file="../inculde/community/footer.jsp" %>


<!-- Links of JS files -->
<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>
<script type="text/javascript" src="/js/qrcode.js"></script>
<script type="text/javascript" src="/js/flask.js"></script>
<script type="text/javascript">
    $(function () {

        $('#imagesCommunityFileUploadButton').click(function (e) {
            e.preventDefault();
            $('#imagesCommunityFile').click();
        });


        $('#uploadBtn').click(function () {
            uploadFile();
           	location.reload();
        });
	
        // 좋아요 클릭 이벤트
		$('.community_like').click(function(){
			 
			// 좋아요를 클릭한 유저의 번호
			let userNumber = $(this).parents().siblings('.d-flex.align-items-center').children('.userNumber').val()
			
			// 좋아요 클릭한 게시글의 번호
			let communityNumber = $(this).parents().siblings('.d-flex.align-items-center').children('.communityNumber').val()
			
			// 현재 좋아요 개수
			let LikeCountInteger = parseInt($(this).children('.LikeCount').html())
			let LikeCount = $(this).children('.LikeCount')
			
			$.ajax({
	                type:'get',
	                url:"/communityCommunityLike",
	                data:{
	                    communityNumber : communityNumber
	                },
	                contentType : 'application/x-www-form-urlencoded;charset=utf-8',
	                success : function(result){
	                	if(result == 'N'){
	                		console.log("좋아요 이벤트 실패")
	                	}else{
	                		console.log("좋아요 이벤트 성공")
	                		console.log(LikeCountInteger)
	                		LikeCount.html(LikeCountInteger+1)
	                		
	                	}//end of if
	                },
	                error : function(e){
	                    console.log("ERROR: ", e);
	                    alert('실패')
	                }
	            });// end of Ajax
			
		});// end of $('.community_like').click()
		
        // 댓글 작성 버튼을 클릭 시 DB 입력 + 화면에 출력
        $('.commentsbtn').click(function(){

            // 댓글 작성자의 userNumber
            let userNumber = $(this).siblings('.userNumber').val()

            // 댓글 작성자의 userNickname
            let nickname = $(this).siblings('.userNickname').val()

            // 댓글 내용
            let commentsContent = $(this).siblings('#commentsbox').val()
            let commentsContent2 = $(this).siblings('#commentsbox')

            // 댓글을 작성한 게시글의 communityNumber
            let communityNumber = $(this).siblings('.communityNumber').val()

            // 댓글 작성 시 개수 늘리기
            let commentCountInteger = parseInt($(this).parent().siblings('.ulTag').children('.post-comment').children('.commentCount').html())
            let commentCount = $(this).parent().siblings('.ulTag').children('.post-comment').children('.commentCount')
            
            // 작성한 댓글을 화면에 출력할 위치
            const list = $(this).parent().siblings('.comments')

            $.ajax({
                type:'post',
                url:"/communityCommentsInsert",
                data:{
                    userNumber : userNumber,
                    communityNumber : communityNumber,
                    commentsContent : commentsContent
                },
                contentType : 'application/x-www-form-urlencoded;charset=utf-8',
                success : function(result){
                    console.log(result)
                    let content =  ' <div class="nickname">'+ nickname + '</div>'
                        + ' <div class="comments_content">' + commentsContent + '</div>'
                    list.append(content);
                    commentsContent2.val("")
                    
                    // 댓글 작성 시 개수 +1 해주기
                    commentCount.html(commentCountInteger+1)
                },
                error : function(e){
                    console.log("ERROR: ", e);
                    alert('실패')
                }
            });// end of Ajax
        })// end of  $('.commentsbtn').click()
    });

    function changeValue(obj) {
        $("#fileName").text("파일명 : " + (obj.value).replace("C:\\fakepath\\", ""));
        // $("#fileNameText").val((obj.value).replace("C:\\fakepath\\",""))
    }

    function uploadFile() {
        let form = $('#uploadForm')[0];
        let formData = new FormData(form);
        $.ajax({
            url: flaskIp2,  //플라스크 아이피주소
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false
        }).done(function (data) {
            callback(data);
        });
    }




</script>

</body>
</html>