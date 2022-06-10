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
	let SignOutPwd = $('#SignOutPwd').val();
	
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