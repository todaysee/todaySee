/*********************************************************************
	[MyPage 비밀번호 확인] 
	
*/
//에러메세지 문구
let warning = "비밀번호를 입력해주세요";

let pwdCheck = false;
$("#btnCheckPwd").click(function(){
	let userPassword = $('#myPagePassword').val();
	
	if(userPassword ==''){
		$('#myPagePassword ~ .error_message').html(warning);
		return false;
	}
	
	$.ajax({
		type : 'post',
		url : "/mypageCheckPwd",
		data : { userPassword : $('#myPagePassword').val() },
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(result){
			
			if(result=='N'){
			$('#myPagePassword ~ .error_message').html("비밀번호가 일치하지 않아요");
			pwdCheck=false;
		}else{
			document.checkPwd.submit();  
		}
		},
	 error:function(err){
		alert('실패');
		console.log(err);
	}
	});
	});
	
	
	$('#btnSignOut').click(function(){
	let SignoutPwd = $('#SignOutPwd').val();
	
	if(userPassword ==''){
		$('#SignOutPwd ~ .error_message').html(warning);
		return false;
	}

	$.ajax({
		type:"POST",
		url: "/mypageSignOut",
		data:{ SignOutPwd : $('#SignOutPwd').val() },
		
				
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success:function(result){
			if(result=='N'){
				$('#SignOutPwd ~ .error_message').html("비밀번호가 일치하지않아요");
				pwdCheck=false;
				}else{
					alert("탈퇴가 완료되었습니다")
					document.signOutFrm.submit();
			
				}
			},
			error:function(err){
				alert('실패');
				console.log(err);
			}
		
	});
		});
	//*******************myPage password 변경 */
	
	
	
	// 비밀번호 재설정 				
	$('#btnChangePwd').click(function(){
		let userPassword = $("#userPasswordMyPage").val();
		let userPassword2 = $("#userPassword2").val();
		let RegexPW =/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}$/;
		
		if(userPassword == ''){
			$('#userPasswordMyPage ~ .error_message').html(warning);
			return;
		}else{
			$('#userPasswordMyPage ~ .error_message').html("");
		}
		
		if(!RegexPW.test(userPassword) ){
			$('#userPasswordMyPage ~ .error_message').html("비밀번호는 영문자와 숫자를 사용하여 6~15자로 작성해 주세요.");
			return;
		}else{
			$('#userPasswordMyPage ~ .error_message').html("");
		}
		
		//비밀번호 재확인 
		if(userPassword2 == ''){
			$('#userPassword2 ~ .error_message').html("재설정할 비밀번호를 입력해주세요");
			return;
		}else{
			$('#userPassword2 ~ .error_message').html("");
		}
		
		//비밀번호 일치 여부 확인 ! 
		if(userPassword != userPassword2){
			$('#userPassword2 ~ .error_message').html("비밀번호가 일치하지않습니다")
			return false;
		}else{
		document.updatingPwdFrm.submit();
		alert("비밀번호가 변경되었습니다 ! ");
		
	} 
		});	
		
		//***********닉네임 변경시의 유효성검사  
		$('#userNicknameChangeBtn').click(function(){
		
		let userNinknameTextInput = $("#userNinknameTextInput").val();
		let RegexNickName = /^[가-힣a-zA-Z0-9]{1,4}$/;
		
		if(userNinknameTextInput == ''){
			$('#userNinknameTextInput ~ .error_message').html(warning);
			return false;
		}else{
			$('#userNinknameTextInput ~ .error_message').html("");
		}
		
		if(!RegexNickName.test(userNinknameTextInput) ){
			$('#userNinknameTextInput ~ .error_message').html("닉네임은 4자리까지 가능합니다");
			return false;
		}else{
			$('#profileNicknameChangeModal').modal('show');
           	$('#nickNameChange').submit();
		}
		});

		
		
		
		
		
		//**************회원탈퇴 버튼 활성화 ********* */
		
		 $(function(){
        $("#SignOutPwd").on('input',function(){
            if($("#SignOutPwd").val()=='')
                $("#btnSignOut").attr("disabled",true);
            else
                $("#btnSignOut").attr("disabled",false);
        });
    })
		
		
		//*********비밀번호 변경 버튼 활성화 비활성화   */
		
		$(function(){
        $("#userPasswordMyPage").on('input',function(){
            if($("#userPasswordMyPage").val()=='')
                $("#btnChangePwd").attr("disabled",true);
            else
                $("#btnChangePwd").attr("disabled",false);
        });
    })
