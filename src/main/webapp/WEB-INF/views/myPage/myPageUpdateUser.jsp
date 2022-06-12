<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>오늘 이거 볼래? | ${user.userNickname}님의 정보 수정</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/images/home/favicon.png">
    <!-- CSS files -->
    <link rel="stylesheet" href="/css/mypageCommunity.css">
    <!-- js files -->
    <script src="../js/mypageCommunity/chatList.js"></script>


</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/home/preLoader.jsp"%>
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

        <%@ include file="../inculde/mypage/myPageTitleImg.jsp" %>

        <div class="account-setting-list-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <%--프로필 이미지 변경--%>
                <li class="nav-item">
                    <a class="nav-link active" id="profileImagesTab" data-bs-toggle="tab" href="#profileImages"
                       role="tab" aria-controls="profile-information">프로필 이미지 변경</a>
                </li>
                <%--닉네임 변경--%>
                <li class="nav-item">
                    <a class="nav-link" id="userNicknameTab" data-bs-toggle="tab" href="#userNickname" role="tab"
                       aria-controls="account">닉네임 변경</a>
                </li>
                <%--비밀번호 변경--%>
                <li class="nav-item">
                    <a class="nav-link" id="userPasswordTab" data-bs-toggle="tab" href="#userPassword" role="tab"
                       aria-controls="privacy">비밀번호 변경</a>
                </li>
                <%--회원탈퇴 변경--%>
                <li class="nav-item">
                    <a class="nav-link" id="signOutTab" data-bs-toggle="tab" href="#signOut" role="tab"
                       aria-controls="notification">회원 탈퇴</a>
                </li>
            </ul>
        </div>

        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="profileImages" role="tabpanel">
                <div class="account-setting-form">
                    <h3>프로필 이미지 변경하기</h3>

                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="mb-3">
                                <form id="uploadFormProfile">
                                    <input class="user_number1" type="hidden" name="user_number"
                                           value="${sessionScope.userNumber}"> <%--아이디--%>
                                    <input type="hidden" name="images_type" value="profileImages"> <%--타입--%>
                                    <label for="formFile" class="form-label">프로필 이미지 바꾸기</label>
                                    <input class="form-control" type="file" name="file" id="formFile"
                                           accept=".gif, .jpg, .png, .jpeg">
                                    <div class="ProfileViewArea" style="margin-top:10px; display:none;">
                                        <img class="ProfileArea" style="width:200px; height:100px;"
                                             onerror="imgAreaError()"/>
                                    </div>
                                </form>
                                <button id="profileImagesBtn" type="button" class="btn btn-danger" disabled='disabled'
                                        style="margin-top: 15px;">
                                    프로필 이미지 바꾸기
                                </button>
                            </div>
                            <div class="mb-3">
                                <form id="uploadFormTitleProfile">
                                    <input class="user_number2" type="hidden" name="user_number"
                                           value="${sessionScope.userNumber}"> <%--아이디--%>
                                    <input type="hidden" name="images_type" value="profileTittleImages"> <%--타입--%>
                                    <label for="formFile2" class="form-label">배경 이미지 바꾸기</label>
                                    <input class="form-control" type="file" name="file" id="formFile2"
                                           accept=".gif, .jpg, .png, .jpeg">
                                    <div class="TitleProfileViewArea" style="margin-top:10px; display:none;">
                                        <img class="TitleProfileArea" style="width:200px; height:100px;"
                                             onerror="imgAreaError()"/>
                                    </div>
                                </form>
                                <button id="profileTittleImagesBtn" type="button" class="btn btn-danger"
                                        disabled='disabled' style="margin-top: 15px;">
                                    프로필 배경 이미지 바꾸기
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="tab-pane fade" id="userNickname" role="tabpanel">
                <div class="account-setting-form">
                    <h3>개인 정보 수정하기</h3>
                    <br/>
                    <br/>
                    <div class="container">
                        <div class="row justify-content-around">
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label class="text-center">기존 닉네임</label>
                                    <input type="text" class="form-control" value="${user.userNickname}" readonly>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <form id="nickNameChange" action="/myPage/update" method="post" target='blankifr'>
                                    <div class="form-group">
                                        <label class="text-center">변경할 닉네임 입력</label>
                                        <input id="userNinknameTextInput" type="text" class="form-control" name="userNickname">
                                        	 <span class="error_message"></span>
                                        <input type="hidden" name="userNumber" value="${sessionScope.userNumber}">
                                        	
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-1 ms-auto" style="margin-right: 33px;">
                                <!-- Button trigger modal -->
                                <input type="button" id='userNicknameChangeBtn' disabled='disabled'
                                       class="btn btn-danger"
                                       value="닉네임 바꾸기" style="margin-bottom:15px;"/>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
<!-- form 입력 -->
            <div class="tab-pane fade" id="userPassword" role="tabpanel">
				<form action="/changePwd" method="post" id="updatingPwdFrm" name="updatingPwdFrm">
                <div class="account-setting-form">
                    <h3>비밀번호 변경하기</h3>

                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>비밀번호 변경하기</label>
                                <input type="password" class="form-control" name="userPassword" id="userPasswordMyPage">
                            	<span class="error_message"></span>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <label>변경할 비밀번호 한번더 입력</label>
                                <input type="password" class="form-control" name="userPassword2" id="userPassword2">
                            	<span class="error_message"></span>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger" name="btnChangePwd" id="btnChangePwd" disabled='disabled' style="margin-bottom: 15px;">
                                비밀번호 변경
                            </button>
                        </div>
                    </div>
                </div>
            </form>
            </div>
<!--  form 끝 -->

			
            <div class="tab-pane fade" id="signOut" role="tabpanel">
                <div class="account-setting-form">
                    <h3>회원님의 탈퇴를 위해서 비밀번호를 확인 합니다.</h3>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                            <form action="/completeSignOut" method="post" name="signOutFrm" id="signOutFrm">
                                <label>비밀번호</label>
                                <input type="password" class="form-control" id="SignOutPwd" name="SignOutPwd">
                                	<span class="error_message"></span>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12">
                            <div class="form-group">
                                <div style="margin-bottom: 10px;">탈퇴사유</div>
                               
                               <div class='form-check' style="display:none;">
                          			<input type="hidden">
                                    <input class="form-check-input" type='radio'
                                           name='userSignOut' value="선택하지 않음" checked="checked" > <label
                                        class='form-check-label'>선택하지 않음 </label>
                                </div>
                               
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='userSignOut' value="영상 컨텐츠 부족"> <label
                                        class='form-check-label'>영상 컨텐츠 정보 부족</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='userSignOut' value="영상 평가 부족"> <label
                                        class='form-check-label'>영상 평가 부족</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='userSignOut' value="커뮤니티 부족"> <label
                                        class='form-check-label'>커뮤니티 부족</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='userSignOut' value="이용빈도 낮음"><label
                                        class='form-check-label'>이용빈도 낮음</label>
                                </div>
                                <div class='form-check'>
                                    <input class="form-check-input" type='radio'
                                           name='userSignOut' value="etc"> <label
                                        class='form-check-label'>기타</label>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="textEtc"
                                           placeholder="기타 선택 후 입력해주세요." name='userSignOut' readonly>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-12">
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-danger" name ="btnSignOut" id="btnSignOut" disabled='disabled' style="margin-bottom: 15px;">
                                회원 탈퇴하기
                            </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

        <!-- 프로필 이미지 업로드 모달 -->
        <div class="modal fade" id="profileImageSaveModal" tabindex="-1" aria-labelledby="profileImageSaveModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="profileImageSaveModalLabel">프로필 이미지 저장</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        이미지 저장 하시겠습니까?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="profileImagesSaveModalBtn"
                                data-bs-target="#saveImageComplete" data-bs-toggle="modal" data-bs-dismiss="modal">저장하기
                        </button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 프로필 메인 이미지 업로드 모달 -->
        <div class="modal fade" id="profileMainImagesSaveModal" tabindex="-1"
             aria-labelledby="profileMainImagesSaveModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="profileMainImagesSaveModalLabel">프로필 배경 이미지 저장</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        이미지 저장 하시겠습니까?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="profileMainImagesSaveModalBtn"
                                data-bs-target="#saveImageComplete" data-bs-toggle="modal" data-bs-dismiss="modal">저장하기
                        </button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 프로필 닉네임 변경 모달 -->
        <div class="modal fade" id="profileNicknameChangeModal" tabindex="-1" aria-labelledby="profileNicknameChangeModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="profileNicknameChangeModalLabel">프로필 닉네임 변경</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        닉네임 변경 하시겠습니까?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="profileNicknameChangeModalBtn"
                                data-bs-target="#saveImageComplete" data-bs-toggle="modal" data-bs-dismiss="modal">저장하기
                        </button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    </div>
                </div>
            </div>
        </div>
        <%--수정용 모달--%>
        <div class="modal fade" id="saveImageComplete" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2"
             tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalToggleLabel2">수정</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        수정함
                    </div>
                    <div class="modal-footer">
                        <a href="/myPage/profile">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                        </a>
                    </div>
                </div>
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

<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>
<script type="text/javascript" src="/js/flask.js"></script>
<!-- JS 추가 !  -->
<script src="/js/mypageCommunity/password.js"></script>
<script>

    //닉네임 변경하면
    $(function(){
        $("#userNinknameTextInput").on('input',function(){
            if($("#userNinknameTextInput").val()=='')
                $("#userNicknameChangeBtn").attr("disabled",true);
            else
                $("#userNicknameChangeBtn").attr("disabled",false);
        });
    })

    // 콘텐츠 수정 :: 사진 수정 시 이미지 미리보기
    function readURL(input = $('#formFile')) {
        $('#profileImagesBtn').removeAttr('disabled')
        if ($('#formFile') && input.files[0]) {
            let reader = new FileReader();
            reader.onload = function (e) {
                $('.ProfileArea').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    function readURL2(input = $('#formFile2')) {
        $('#profileTittleImagesBtn').removeAttr('disabled')
        if ($('#formFile2') && input.files[0]) {
            let reader2 = new FileReader();
            reader2.onload = function (e) {
                $('.TitleProfileArea').attr('src', e.target.result);
            }
            reader2.readAsDataURL(input.files[0]);
        }
    }

    $('#formFile').change(function () {
        if ($('#formFile').val() == '') {
            $('.ProfileArea').attr('src', '');
        }
        $('.ProfileViewArea').css({'display': ''});
        readURL(this);
    });
    $('#formFile2').change(function () {
        if ($('#formFile2').val() == '') {
            $('.TitleProfileArea').attr('src', '');
        }
        $('.TitleProfileViewArea').css({'display': ''});
        readURL2(this);
    });

    function imgAreaError() {
        $('.ProfileViewArea').css({'display': 'none'});
    }

    function imgAreaError2() {
        $('.TitleProfileViewArea').css({'display': 'none'});
    }

    $(function () {
        //이벤트 실행문
        $('#profileImagesBtn').on('click', function () {
            $('#profileImageSaveModal').modal('show');
        });
        $('#profileImagesSaveModalBtn').on('click', function () {
            uploadFile(); // 파일전송
            $('#profileImageSaveModal').modal('hide');
        });

        $('#profileTittleImagesBtn').on('click', function () {
            $('#profileMainImagesSaveModal').modal('show');
        });

        $('#profileMainImagesSaveModalBtn').on('click', function () {
            uploadFile2(); // 파일전송
            $('#profileMainImagesSaveModal').modal('show');
        });

        /*
        $('#userNicknameChangeBtn').on('click', function () {
            $('#profileNicknameChangeModal').modal('show');
            $('#nickNameChange').submit();
        });
        */
    });


    //ajax 비동기 통신을 사용하여 AWS-ec2 flask Server 값전달
    function uploadFile() {
        let form = $('#uploadFormProfile')[0];
        let formData = new FormData(form);
        let userNumber = $('.user_number1').val();
        $.ajax({
            url: flaskIp,  //플라스크 아이피주소
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false
        }).done(function (data) {
            callback(data);
        });

        $.ajax({
            url: "/updateProfileImageAjax",
            type: 'POST',
            data: {
                userNumber: ${sessionScope.userNumber}
            },
        });
    }

    function uploadFile2() {
        let form = $('#uploadFormTitleProfile')[0];
        let formData = new FormData(form);
        let userNumber = $('.user_number2').val();
        $.ajax({
            url: flaskIp,  //플라스크 아이피주소
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false
        }).done(function (data) {
            callback(data);
        });

        $.ajax({
            url: "/updateProfileTitleImageAjax",
            type: 'POST',
            data: {
                userNumber: ${sessionScope.userNumber}
            },
        });
    }

    $("input[name='userSignOut']").on('click', function() {
        if($("input[name='userSignOut']:checked").val() =='etc'){
            $('#textEtc').prop('readonly', false);
        } else if ($("input[name='userSignOut']:checked").val() !='etc') {
            $('#textEtc').prop('readonly', true);
            $('#textEtc').val("");
        }
    });
</script>
</body>
<iframe name='blankifr' style='display:none;'></iframe>
</html>