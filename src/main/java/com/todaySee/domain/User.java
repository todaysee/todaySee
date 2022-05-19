package com.todaySee.domain;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer user_number;

    @Column(length = 1000, unique = true)
    String user_email;
    @Column(length = 1000)
    String user_nickname;
    String user_gender;

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date user_signup_date;
    Integer user_state;
    Integer user_admin;
    Integer user_profile_yn; //프로필 유무 물어보는 컬럼

    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    Date user_login_date; // 유저 로그인 날짜
    @Column(length = 1000)
    String user_name;
    @Column(length = 1000)
    String user_tel;
    @Column(length = 1000)
    String user_password;

}
