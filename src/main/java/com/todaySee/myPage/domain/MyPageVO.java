package com.todaySee.myPage.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table
@Entity
public class MyPageVO {

    @Id
    Integer testHome;
}
