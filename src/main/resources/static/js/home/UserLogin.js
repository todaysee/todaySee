/**
*	유효성 검사 정규식
 */
var RegexNick = /^[가-힣a-zA-Z0-9]{1,10}$/;
var RegexEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
var RegexPW =/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/;
var RegexName = /^[가-힣]+$/;
var RegexTel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{3,4})$/;

// 에러박스 문구
var blank = "필수 입력 사항입니다.";

/*********************************************************************
	[ 회원가입 페이지 ]
	이메일 중복 버튼 클릭 이벤트
*/
let emailCheck = false;
$('#btn_emailCheck').click(function(){
	//alert("클릭됐지렁")
	// 이메일 중복검사 확인 여부
	
	$('#userEmail ~ .error_box').html("");
	let userEmail = $("#userEmail").val();
	
	// 입력값이 없을 때 에러박스
	if(userEmail == ''){

		$('#userEmail ~ .error_box').html(blank);
		return false;

	}
	// 형식에 맞지 않을 때 나오는 에러박스
	if( !RegexEmail.test(userEmail) ){
		//$('label[for="userEmail"] .error_box').css('color','#ED7A64');
		$('#userEmail ~ .error_box').html("올바른 이메일 형식이 아닙니다.");
		return;
	}
	
	// 이메일 중복 검사 - DB와 비교
 	  $.ajax({
    	type : 'post',
    	url : "/emailCheck",
    	data : { userEmail : $('#userEmail').val() },
    	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
    	success : function(result){
    		
    		// 중복 검사 후 나오는 결과 에러박스에 출력
    		if(result == 'Y'){
	        		//$('label[for="memberEmail"] .error_box').css('color','#4ABA99');
	        		$('#userEmail ~ .error_box').html("사용 가능한 이메일입니다.");
	        		emailCheck = true;
				}else{
	        		//$('label[for="memberEmail"] .error_box').css('color','#ED7A64');
	        		$('#userEmail ~ .error_box').html("사용할 수 없는 이메일입니다.");
	        		emailCheck = false;
				}
    	},
    	error : function(err){
			alert('실패');
    		console.log(err);
    	}
    }); //end of ajax
}); // end of $('#btn_emailCheck').click


// 회원가입 버튼 클릭했을 때 필수 입력사항 + 유효성 검사 

$('#btn_register').click(function(){
	
	//input에 입력된 값을 변수에 담기
	let userNickname = $("#userNickname").val();
	let userEmail = $("#userEmail").val();
	let userPassword = $("#userPassword").val();
	let userPassword2 = $("#userPassword2").val();
	let userName = $("#userName").val();
	let userGender = $("#userGender").val();
	let userTel = $("#userTel").val();
	
	// 닉네임 
	if(userNickname == ''){
			$('#userNickname ~ .error_box').html(blank);
			$('#userNickname').focus();
			return false;
			}else{
			$('#userNickname ~ .error_box').html("");
			}
			
	 if( !RegexNick.test(userNickname) ){
		$('#userNickname ~ .error_box').html("한글, 영문 그리고 숫자만 입력 가능합니다.");
		$('#userNickname').focus();
		return false;
	}else{
		$('#userNickname ~ .error_box').html(" ");
	}
	})



