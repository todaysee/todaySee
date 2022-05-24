package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="user_number")
    Integer userNumber;

    @Column(name = "user_email", length = 1000, unique = true)
    String userEmail;
    @Column(name = "user_nickname", length = 1000)
    String userNickname;
    @Column(name = "user_gender")
    String userGender;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column (name = "user_signup_date")
    Date userSignupDate;
    @Column (name = "user_state")
    Integer userState;
    @Column (name = "user_admin")
    Integer userAdmin;
    @Column (name = "user_profile_yn")
    Integer userProfileYn; //프로필 유무 물어보는 컬럼

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    @Column(name = "user_login_date")
    Date userLoginDate; // 유저 로그인 날짜
    @Column(name = "user_name", length = 1000)
    String userName;
    @Column(name = "user_tel",length = 1000)
    String userTel;
    @Column(name = "user_password",length = 1000)
    String userPassword;

    @OneToMany // 1:다
    @JoinColumn(name="user_number")
    private List<Images> images;
}
