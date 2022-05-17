package com.todaySee.admin.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Table(name = "user")
@Entity
public class test1 {

    
    @Id
    Integer userNumber;

    String email;
    
    String nickName;
    
    String gender;
    
    String userDate;
    
    String user_Sangtae;
    
    String user_admin;
    
    String profile;
    
    String login_date;




}
