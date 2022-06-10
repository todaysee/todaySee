package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;


import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "user")
public class UserVO {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_number")
    Integer userNumber; //유저번호

    @Column(name = "user_email", length = 1000, unique = true)
    String userEmail; // 유저 이메일
    @Column(name = "user_nickname", length = 1000)
    String userNickname; // 유저 닉네임
    @Column(name = "user_gender")
    String userGender; // 유저 성별

    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "user_signup_date")
    Date userSignupDate; // 유저 회원가입 날짜

    @Column (name = "user_state")
    Integer userState; // 유저 상태 0.기본 1.휴면 2.회원탈퇴 3.신고계정
    @Column (name = "user_admin")
    Integer userAdmin; // 유저 관리자 여부 0.일반회원 1.관리자
    @Column (name = "user_profile_yn")
    Integer userProfileYn; //프로필 이미지 유무 물어보는 컬럼 
    @Column (name = "user_title_profile_yn")
    Integer userTitleProfileYn; //프로필 타이틀 이미지 물어보는 컬럼


    //@UpdateTimestamp
    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "user_login_date")
    Date userLoginDate; // 유저 로그인 날짜


    // 아이디 찾기, 비밀번호 찾기 관련 컬럼
    @Column(name = "user_name", length = 1000)
    String userName; // 유저 이름
    @Column(name = "user_tel",length = 1000)
    String userTel; // 유저 전화 번호
    @Column(name = "user_password",length = 1000)
    String userPassword; // 유저 비밀 번호
    
    
    
    
    /*
     * 문혜진 추가 role : 권한부여 
     * EnumType.STRING : 권한에 해당하는 값이 문자열로 저장. 
	 
     
    @Column(name = "user_role")
    @Enumerated(EnumType.STRING)
    Role role;
*/
  
    

	/*
	 * @Column(name = "user_role")
	 * 
	 * @Enumerated(EnumType.STRING) Role role;
	 */
    
    @JsonIgnore
    String kakao;
   





}
