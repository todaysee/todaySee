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
		#imagesCommunityFile { display:none; }
		.nickname {font-weight: bold;}
		.comments {padding: 1%;}
		.commentsbox{width:90%;}
		.commentsbtn{background-color:#3644D9; color:white; border-radius:20%; height:50%;}
		
	</style>

    <title>오늘 이거 볼래 ? | 커뮤니티 글쓰기 </title>

    <link rel="icon" type="image/png"
          href="/images/mypageCommunity/favicon.png">
</head>


<body>


<!-- Start Preloader Area -->
<%@ include file="../inculde/community/preLoader.jsp" %>


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

                        <form action="/communityBoardSave" method="post" enctype="multipart/form-data">
                            <input type="hidden" name="communityCategory" value="${category}">
                            <input type="hidden" name="userNumber" value="${sessionScope.userNumber}">
                            <!-- <div class="form-group">
									<textarea name="title" class="form-control titlebox input-search" id="titlebox"
                                              placeholder="제목을 입력하세요."></textarea>
                            </div> -->
                            <div class="form-group">
									<textarea class="form-control"
                                              placeholder="내용을 적어주세요." name="communityContent"></textarea>
                            </div>

                            <ul
                                    class="button-group d-flex justify-content-between align-items-center">
                                <li class="photo-btn">
                                    <button type="button"  id="imagesCommunityFileUploadButton">
                                        <i class="flaticon-gallery"></i> 사진
                                    </button>
                                    <div id="fileName">
                                        첨부파일 없음
                                    </div>
                                        <input type="file" id="imagesCommunityFile" name="imagesCommunityFile" onchange="changeValue(this)" accept=".gif, .jpg, .png, .jpeg"/>
                                </li>
                                <li class="post-btn">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" id="imagesCommunityFileUploadCheck">
										<label class="form-check-label" for="imagesCommunityFileUploadCheck">
											사진 업로드
										</label>
									</div>
                                    <input  type="submit" value="작성">
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
                                    <img src="/images/mypageCommunity/news-feed-post/post-2.jpg" alt="image">
                                </div>
                                <ul class="post-meta-wrap d-flex justify-content-between align-items-center">
                                    <li class="post-react">
                                        <button class="community_like">
                                            <i class="flaticon-like"></i><span>Like</span> <span
                                                class="number">3 </span>
                                        </button>
                                    </li>
                                    <li class="post-comment"><a href="#"><i
                                            class="flaticon-comment"></i><span>Comment</span> <span
                                            class="number">0 </span></a></li>
                                    <li class="post-share"><a href="#"><i class="flaticon-share"></i><span>Share</span>
                                        <span class="number">0 </span></a></li>
                                    <li><a type="button" class="gen-button-like myModal" data-bs-toggle="modal"
                                           data-bs-target="#modalReport"> <span><i
                                            class="fa fa-exclamation-triangle"></i>신고</span>
                                    </a></li>
                                </ul>
  								<div class="comments">
  									<div class="nickname">닉네임</div>
  									<div class="comments_content">댓글내용</div>
  								</div>
  								
  								
                                <form class="post-footer">
                                    <!-- <div class="footer-image">
                                        <a href="#"><img src="/images/mypageCommunity/user/user-2.jpg"
                                                         class="rounded-circle" alt="image"></a>
                                    </div> -->
                                    <!-- <div class="form-group">
                                        <textarea name="message" class="form-control comments_keypress" id="comments_keypress"
                                                  placeholder="댓글을 적어주세요."></textarea>
                                                  <button type="submit" class="send-btn d-inline-block">Send</button>

                                    </div> -->
                                </form>
                                <form class="d-flex align-items-center">
                                    <input type="hidden" class="communityNumber" value="${board.communityNumber }"/>
                                    <input type="hidden" class="userNumber" value="${sessionScope.userNumber }"/> 
                                    <input type="hidden" class="userNickname" value="${sessionScope.userNickname}"/>
                                    <input type="text" class="form-control commentsbox" id="commentsbox" placeholder="댓글을 적어주세요.">
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
<script type="text/javascript">
    $(function () {
        $('#imagesCommunityFileUploadButton').click(function (e) {
            e.preventDefault();
            $('#imagesCommunityFile').click();
        });

        
        $('.commentsbtn').click(function(){
        	let nickname = $(this).siblings('.userNickname').val()
        	let commentsContent = $(this).siblings('#commentsbox').val()
        	const list = $(this).parent().siblings('.comments')
        	$.ajax({
            	type:'post',
            	url:"/communityCommentsInsert",
            	data:{
            		user : $(this).siblings('.userNumber').val(),
            		community : $(this).siblings('.communityNumber').val(),
            		comments : commentsContent,
                	},
                contentType : 'application/x-www-form-urlencoded;charset=utf-8',
                success : function(commentsList){
                    alert(commentsList)
                    let content =  ' <div class="nickname">'+ nickname + '</div>'
                        + ' <div class="comments_content">' + commentsContent + '</div>'
                        list.append(content);
						
                    },
                error : function(e){
                        console.log("ERROR: ", e);
                        alert('실패')
                     }
            	})
            })
    });
    //파일 업로드여부 체크박스
    $("#imagesCommunityFileUploadCheck").change(function(){
        if($("#imagesCommunityFileUploadCheck").is(":checked")){
            alert("체크박스 체크했음!");
            uploadFile();
        }else{
            alert("체크박스 체크 해제!");
        }
    });
    function changeValue(obj) {
        // alert((obj.value).replace("C:\\fakepath\\",""));
        $("#fileName").text("파일명 : " + (obj.value).replace("C:\\fakepath\\",""));
    }

    function uploadFile() {
        let form = $('#imagesCommunityFileUploadForm')[0];
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