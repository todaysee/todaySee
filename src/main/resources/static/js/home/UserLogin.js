/**
*	유효성 검사 정규식
 */
let RegexNick = /^[가-힣a-zA-Z0-9]{1,4}$/;
let RegexEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
let RegexPW =/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/;
let RegexName = /^[가-힣]+$/;
let RegexTel = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{3,4})$/;

// 에러박스 문구
var blank = "필수 입력 사항입니다.";

/*********************************************************************
	[ 회원가입 페이지 ]
	이메일 중복 버튼 클릭 이벤트
*/
let emailCheck = false;
$('#btn_emailCheck').click(function(){
	
	
	// 이메일 중복검사 확인 여부
	$('#userEmail ~ .error_box').html("");
	let userEmail = $("#userEmail").val();
	
	// 입력값이 없을 때 문구 
	if(userEmail == ''){

		$('#userEmail ~ .error_box').html(blank);
		$('#userEmail').focus();
		return false;

	}
	// 형식에 맞지 않을 때 나오는 문구 
	if( !RegexEmail.test(userEmail) ){
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
	        		$('#userEmail ~ .error_box').html("사용 가능한 이메일입니다.");
	        		emailCheck = true;
				}else{
	        		$('#userEmail ~ .error_box').html("사용할 수 없는 이메일입니다.");
	        		emailCheck = false;
				}
    	},
    	error : function(err){
			alert('실패');
    		console.log(err);
    	}
    }); 
}); 


// 회원가입 버튼 클릭했을 때 필수 입력사항 + 유효성 검사 

$('#btn_register').click(function(){
	
	//input에 입력된 값을 변수에 담기
	let userNickname = $("#userNickname").val();
	let userEmail = $("#userEmail").val();
	let userPassword = $("#userPassword").val();
	let userPassword2 = $("#userPassword2").val();
	let userName = $("#userName").val();
	let userGender = $("select[name=userGender]").val();
	let userTel = $("#userTel").val();
	
	// 닉네임 유효성검사 
	if(userNickname == ''){
			$('#userNickname ~ .error_box').html(blank);
			$('#userNickname').focus();
			return false;
			}else{
			$('#userNickname ~ .error_box').html("");
			}
			
	 if( !RegexNick.test(userNickname) ){
		$('#userNickname ~ .error_box').html("한글, 영문, 숫자 그리고 4글자 이하만 입력 가능합니다.");
		$('#userNickname').focus();
		return false;
	}else{
		$('#userNickname ~ .error_box').html("");
	}

	
	// 이메일 유효성검사 
	if(userEmail == ''){
		$('#userEmail ~ .error_box').html(blank);
		$('#userEmail').focus();
		return false;
		}else{
			$('#userEmail ~ .error_box').html("");
		}
		
		if( !RegexEmail.test(userEmail) ){
			$('#userEmail ~ .error_box').html("이메일 형식이 올바르지 않습니다");
			$('#userEmail').focus();
			return false;
		}else{
			$('#userNickname ~ .error_box').html("");
		}
		
		
		// 비밀번호 유효성 검사 
		if(userPassword == ''){
			$('#userPassword ~ .error_box').html(blank);
			$('#userPassword').focus();
			return false;
			}else{
				$('#userPassword ~ .error_box').html("");
			}
		
		if( !RegexPW.test(userPassword) ){
			$('#userPassword ~ .error_box').html("비밀번호는 영문자와 숫자를 사용하여 6~15자로 작성해 주십시오.")
			$('#userPassword').focus();
		 	return false;
		}else{
			$('#userPassword ~ .error_box').html("");
		}
		
		//비밀번호 재설정 유효성 검사 
		if(userPassword2 == ''){
			$('#userPassword2 ~ .error_box').html("필수 입력 사항입니다.");
			$('#userPassword2').focus();
			return false;
		}else{
			$('#userPassword ~ .error_box').html("")
		}
		
		//비밀번호 일치 확인 
		if(userPassword2 != userPassword){
			$('#userPassword2 ~ .error_box').html("비밀번호가 일치하지 않습니다.");
			$('#userPassword2').focus();
			return false;
			}else{
				$('#usePassword2 ~ .error_box').html("")
			}
		
		
		//이름 유효성 검사  
		if(userName == ''){
			$('#userName ~ .error_box').html(blank);
			$('#userName').focus();
			return false;
		}else{
			$('#userName ~ .error_box').html("");
		}
		
		if( !RegexName.test(userName) ){
			$('#userName ~ .error_box').html("한글만 입력 가능합니다.");
			$('#userName').focus();
			return false;
		}else{
			$('#userName ~ .error_box').html("");
		}

	// 성별 유효성검사 
		if(userGender == ''){
			$('#userGender ~ .error_box').html(blank);
			$('#userGender').focus();
			return false;
		}else{
			$('#userGender ~ .error_box').html("");
		}

	
	//휴대전화 유효성검사 
	if(userTel == ''){
		$('#userTel ~ .error_box').html(blank);
		$('#userTel').focus();
		return false;
	}else{
		$('#userTel ~ .error_box').html("");
	}
	
	if( !RegexTel.test(userTel) ){
		$('#userTel ~ .error_box').html("전화번호 형식 불일치 ex)010-1234-5678");
		$('#userTel ~ .error_box').focus();
		return false;
	}else{
		$('#userTel ~ .error_box').html("");
	}
	
	// 이메일 중복체크 했는지 확인 
	if( !emailCheck ){
		$('#userEmail ~ .error_box').html("이메일 중복여부를 확인해주세요");
		$('#userEmail ~ .error_box').focus();
		return false;
	}else {
		$('#userEmail ~ .error_box').html("");
	}
	
	//이용약관 체크했는지 확인 
	   if( !$("#checkBox").is(':checked')){
		$('#checkBox').next().html("이용약관에 동의해주세요");
		$('#checkBox ~ .error_box').focus();
		alert("이용약관에 동의해주세요")
		return false;
	}else{
		$('#checkBox').next().html("");
		$.ajax({
					type : 'post',
					url : "/emailCheck",
					data : { UserEmail : $('#UserEmail').val() },
					contentType : 'application/x-www-form-urlencoded;charset=utf-8',
					success : function(result){
						if(result == 'Y'){
							$('#userEmail ~ .error_box').html("");
							document.signUp_frm.submit();
							alert("회원가입이 되었습니다");
						}else{
							$('#userEmail ~ .error_box').html("이메일 중복 여부 확인해주세요");
							$('#userEmail ~ .error_box').focus();
							emailCheck = false;
							return false;
							}
						},
						//error : function(err){
											//	alert('실패');
									//console.log(err);
									
								//}
			    }); //end of ajax	
			    }
			     })
			     
			     
//**** 로그인 */
$('#btn_Login').click(function(){

			let userEmail = $("#userEmail").val();
			let userPassword = $("#userPassword").val();
			let emailCheckBox = false;
			
			/*이메일*/
			if(userEmail == ''){
				$('#userEmail ~ .error_message').html(blank);
				$('#userEmail').focus();
				return;
			}else{
				$('#userEmail ~ .error_message').html("");
				}
				
			/*비밀번호*/
			if(userPassword == ''){
				$("#userPassword ~ .error_message").html(blank);
				$('#userPassword').focus();
				return;
			}else{
				$("#userPassword ~ .error_message").html("");
			}
			
			/*이메일기억하는 체크박스 */
			if($("#emailCheckBox").is(':checked') ){
					emailCheckBox = true;
			}
			
		$.ajax({
			 type : 'post',
			 url : '/login',
			 data : { userEmail : $("#userEmail").val(),
			 			  userPassword : $("#userPassword").val(),
			 			  emailCheckBox : emailCheckBox
			 			   },
			 contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			 success : function(result){
				
				if(result == "N"){
					$("#userPassword ~ .error_message").html("존재하는 회원이 아니거나 비밀번호가 일치하지 않습니다.");
					
				}else{
					document.loginFrm.submit();
				}
			},
			error : function(err){
					alert(err);
					console.log(err);
			}
		}); // end of Ajax
	
}); // end of btn_Login
 


			     
	/* 이메일 찾기 */
	$('#btn_findEmail').click(function(){
			   
			   $.ajax({
					type : 'post',
					url : "/emailFind",
					data : {
						 UserName : $('#user_Name').val() ,
						userTel : $('#user_Cellphone').val()
					},
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			success : function(result){
				//alert(result);
				if(result =="N"){
					$('#user_Cellphone ~ .error_message').html("존재하는 회원이 아닙니다.");
				}else{
					document.emailFind_frm.submit();
				}
			},
			error : function(err){
						alert(err);
						console.log(err);
			}
			});//end of Ajax 
			    
			   }); //end of #btnfindEmail
			  
			  
	/*비밀번호 찾기 */ 
	
	let random;
	$('#btn_sendingMail').click(function(){
		alert("인증번호가 발송되었습니다 ! ")
		
		$.ajax({
			type: "POST",
			url: "/sendEmail",
			data: { 
				userEmail : $("#userEmail").val(),
			},
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			success: function(result){
							random = result;
							},
				error: function(err){
					alert('실패');
				console.log(err);
			}
			}); //end of Ajax 
			})
			
	$('#btn_findPwd').click(function(){
	
		let checkAuthenticNumber = $("#checkAuthenticNumber").val();
		
		if(random == checkAuthenticNumber){
			alert("크레파스")
			document.sendEmail_Frm.submit();
		}else{
			$('#checkAuthenticNumber ~ .error_message').html("인증번호가 일치하지 않습니다.");

		}
	}) //end of #btn_findPwd
				
// 비밀번호 재설정 				
	$('#btnResetting').click(function(){
	
		let userPassword = $("#userPassword").val();
		let userPassword2 = $("#rePassword").val();
		
		if(userPassword == ''){
			$('#password ~ .error_message').html(blank);
			return;
		}else{
			$('#password ~ .error_message').html("");
		}
		
		if(!RegexPW.test(userPassword) ){
			$('#password ~ .error_message').html("비밀번호는 영문자와 숫자를 사용하여 6~15자로 작성해 주세요.");
			return;
		}else{
			$('#password ~ .error_message').html("");
		}
		
		//비밀번호 재확인 
		if(userPassword2 == ''){
			$('#rePassword ~ .error_message').html("필수 입력 사항입니다");
			$('#rePassword').focus();
			return;
		}else{
			$('#rePassword ~ .error_message').html("");
		}
		
		//비밀번호 일치 여부 확인 ! 
		if(userPassword != userPassword2){
			$('#rePassword ~ .error_message').html("비밀번호가 일치하지 않습니다")
			$('#rePassword').focus();
			return;
		}
		document.resettingPwd.submit();
		alert("비밀번호가 변경되었습니다 ! ");
		
	}); // End of #btnResetting
			
	
	