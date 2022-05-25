package com.todaySee.domain;


import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class UserCreateForm {
	
	@Size(min = 3, max =25)
	@NotEmpty(message = "필수입력사항입니다.")
	private String userName;
	
	@NotEmpty(message = "비밀번호는 필수항목입니다")
	private String userPassword1;
	
	@NotEmpty(message = "비밀번호 확인은 필수항목입니다")
	private String userPassword2;
	
	@NotEmpty(message = "이메일은 필수항목입니다")
	@Email
	private String userEmail;
	
	

}
